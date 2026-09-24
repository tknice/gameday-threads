# Gameday Threads

Stream game day Reddit threads for all of your favorite sports teams — a Windows desktop app that pulls live game discussions from major sports subreddits into one clean, readable stream.

![Streaming in English](screenshots/stream-english.png)
(more screenshots below)

## Core Functionality

**Thread Discovery** — Automatically finds recent game threads using configurable keywords and timeframes (default 12 hours), prioritizing your favorite teams and leagues.

**Live Comment Streaming** — Real-time comments with adjustable update speed, timestamps, author names, upvote scores, and reply indicators.

**Game Summary** — A detailed popup summarizing the game in progress: a full scoreboard with box score by quarter (and overtime, when it happens), plus a Scoring Summary when the thread includes one. NFL games also get Passing, Rushing, and Receiving Leaders tables when present.

<p>
  <img src="screenshots/game-summary-box-score.png" width="49%" />
  <img src="screenshots/game-summary-leaders.png" width="49%" />
</p>

**GIF Handling** — Reddit's embedded GIFs show as clickable thumbnails right in the comment stream (click to open the full GIF in your browser). Optionally, play them inline automatically, or reduce them to plain text links instead.

**Multi-Language Translation** — Comments can be translated on the fly into Spanish, French, or Brazilian Portuguese (in addition to English), with an optional language filter to censor profanity for public displays. The entire app UI — menus, dialogs, the Game Summary popup — is translated too, not just the comments.

## Customization

- **Themes & Colors** — 15 built-in themes (Dark, Light, Slate, Onyx, Terminal, Veteran, Medieval, Crimson, Copper, Midas, Rose Gold, Sapphire, Emerald, Amethyst, Turquoise), plus custom color pickers for individual UI elements if you want to build your own
- **Typography** — Adjustable font size (8–24pt), boldness, and line spacing
- **Display Options** — Toggle timestamps, scores, fullscreen mode, and profanity filtering
- **GIF Display** — Static thumbnail (default), inline animated playback, or link-only
- **Favorite Team Support** — Prioritize specific teams with custom color schemes

## Supported Leagues

NFL, NBA, MLB, NHL, and MLS, each with preset configurations and room for custom subreddits/keywords.

## Free vs. Premium

Everything above — thread discovery, live streaming, game summaries, translation, and all customization — is free. A free Reddit login is required to stream (this keeps the app within Reddit's API limits as usage grows); no purchase is required for any of it.

**Premium ($15, one-time)** unlocks the ability to post your own comments directly into the thread, rather than just reading along. Licensed through Gumroad, good for up to 3 device activations.

## Technical Details

Built with threaded operations to stay responsive, 5-minute caching on thread lists, automatic API retries with backoff, and persistent settings across sessions.

## Installation

Download the latest release from the [Releases page](../../releases). No installer required — unzip and run `GamedayThreads.exe`.

**A note on first launch:** Windows may show a "Windows protected your PC" SmartScreen warning, since this is an independently-developed app not yet signed with a commercial code-signing certificate. This is expected, not a sign anything's wrong. To run it: click **"More info"**, then **"Run anyway."** This only happens once per version.

<p>
  <img src="screenshots/smartscreen-1.png" width="49%" />
  <img src="screenshots/smartscreen-2.png" width="49%" />
</p>

## How to Use
- Log in with Reddit (bottom right) — a free Reddit account, no special permissions needed. This is required before streaming. Login uses Reddit's own OAuth page, so you authorize the connection there — you never type your Reddit password into this app.

  ![Reddit login required to stream](screenshots/login-required.png)
- Select a league on application startup.
- Select a thread and stream comments.
- By default, the timeframe to include threads is 12 hours, which will pull in all games or matches happening today. Under Settings > Threads, you can select an older timeframe (in hours) to find more.
- For help, see settings or report issues below.

## Report Issues
Found a bug? Create an issue [here](https://github.com/tknice/gameday-threads/issues).

## Screenshots
![Streaming in Spanish](screenshots/stream-spanish.png)

![Language settings](screenshots/settings-language.png)

![Theme editor](screenshots/theme-editor.png)

![Thread settings](screenshots/settings-threads.png)

**License**: Proprietary software, free to use for browsing/streaming; see [license.txt](license.txt) for full terms. Questions: notifygamethreads@gmail.com

© 2025 tknice. All rights reserved. Unauthorized copying prohibited.
