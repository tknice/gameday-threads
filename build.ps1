# build.ps1 - builds GamedayThreads, copies over the loose config files
# PyInstaller intentionally does NOT bundle (see GamedayThreads.spec's top
# comment for why: they're read via resource_path(), which looks directly
# beside GamedayThreads.exe, not inside the onedir _internal folder that
# Analysis.datas entries land in), then zips the result into a release-ready
# archive named with the version number from gameday_threads.py.
#
# distpath/workpath point outside OneDrive on purpose - building inside the
# OneDrive-synced project folder caused PermissionError crashes mid-build.

$ErrorActionPreference = "Stop"

$distPath = "C:\Users\tknic\gameday-threads\dist"
$workPath = "C:\Users\tknic\gameday-threads\build"
$releaseDir = "C:\Users\tknic\gameday-threads\releases"

# Calling through "python -m PyInstaller" instead of the bare "pyinstaller"
# command avoids depending on pip's Scripts folder being on PATH - pip
# installs the pyinstaller.exe launcher there, but that folder isn't always
# added to PATH automatically (hit this moving to a second machine). This
# only needs "python" itself on PATH, which pip already depends on anyway.
python -m PyInstaller GamedayThreads.spec --distpath $distPath --workpath $workPath --noconfirm

$outputDir = Join-Path $distPath "GamedayThreads"

# Files the app reads via resource_path() but does NOT auto-create if
# missing. NOT included here (and don't need to be):
#   - settings.json      (load_settings() defaults gracefully if absent)
#   - thread_cache.json  (recreated on first thread lookup)
#   - reddit_tokens.json (ensure_tokens_file() creates a blank placeholder)
$filesToCopy = @(
    "team_colors.json",
    "team_names.json",
    "league_emojis.json",
    "presets.json",
    ".env"
)

foreach ($file in $filesToCopy) {
    Copy-Item -Path $file -Destination $outputDir -Force
    Write-Host "Copied $file"
}

Write-Host "Build complete: $outputDir"

# --- Zip the release --------------------------------------------------
# Pull the version straight out of gameday_threads.py so the zip name
# always matches __version__ without needing to be typed by hand and
# risking it drifting out of sync.
$versionLine = Select-String -Path "gameday_threads.py" -Pattern '__version__\s*=\s*"([\d.]+)"'
if (-not $versionLine) {
    throw "Could not find __version__ in gameday_threads.py - did the format change?"
}
$version = $versionLine.Matches[0].Groups[1].Value

if (-not (Test-Path $releaseDir)) {
    New-Item -ItemType Directory -Path $releaseDir | Out-Null
}

$zipPath = Join-Path $releaseDir "GamedayThreads-v$version.zip"
if (Test-Path $zipPath) {
    Remove-Item $zipPath -Force
}

# Zipping $outputDir itself (not "$outputDir\*") keeps the "GamedayThreads"
# folder as the top-level entry inside the zip, matching the README's
# "unzip and open the GamedayThreads folder" instructions.
Compress-Archive -Path $outputDir -DestinationPath $zipPath

Write-Host "Release zip created: $zipPath"
