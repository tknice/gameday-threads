# Gameday Threads

Dive into the heart of the action with Gameday Threads, the streamlined desktop client designed exclusively for sports enthusiasts who live for real-time Reddit game threads. Whether you're tracking an NFL showdown, an NBA thriller, or an MLB classic, this app aggregates live threads from your favorite subreddits into one intuitive interface. Stream comments as they happen, customize your view to match your team's colors, and immerse yourself in the unfiltered energy of fan reactions.

Free to download and use for browsing, the Gameday Threads App lets you discover and follow threads across major leagues like NFL, NBA, MLB, NHL, and MLS. Unlock lifetime premium access for just $15 to enable seamless commenting, turning passive viewing into active participation. Join the conversation, share your hot takes, and become part of the community that makes every game unforgettable.

Built with sports fans in mind, this lightweight app runs smoothly on Windows and supports the following features: 

## Key Features

- Thread Discovery and Selection: Automatically searches and lists recent game threads from configured subreddits (e.g., NFL teams and league subs) based on include/exclude keywords and timeframe (default 12 hours). Prioritizes threads from a favorite team and opposing team, as well as the league thread, if one exists. Also supports manual entry of Reddit URLs or thread IDs for direct streaming.

- Live Comment Streaming: Streams real-time comments from selected Reddit threads, displaying timestamps, authors, upvote scores, and reply indicators. Supports adjustable update speeds with configurable delays (Adaptive Speed, Fast, Medium, and Slow), including a tooltip for explanations. Live comment count display in the bottom-right of the comment frame (toggleable).

- Game Summary Popup: "Summary" button (toggleable in settings) opens a popup window displaying parsed game info from thread selftext, including teams, game details (time, location, weather), box score (quarter-by-quarter and final), team stats (e.g., first downs, yards), and current status/clock. Shows "Loading..." during parsing for better UX.

- Score and Status Display: Live-updating score label in header bar (e.g., "14 - 7 | Q2 5:32") parsed from thread selftext, with support for NFL-style formats. Toggleable in settings.

## UI Customization:

- Themes: built-in themes with color pickers for elements like background, foreground, buttons, entries, scrollbar, headers, timestamps, and authors.

- Fonts: Adjustable font family (from system fonts), size (8-24 via up/down buttons), header boldness (Normal, Bold, Extra Bold), and comment line spacing.

- Display Options: Toggle show date in timestamps, upvote scores, reply-to indicators, fullscreen button (F11/Esc always available), summary button, and game info. Customizable timestamps (absolute time/date or relative like '5 mins ago').

- Favorite Team Prioritization: Select a favorite team to prioritize its threads in the selector. Customize primary/secondary colors for team subreddit banners, with reset to defaults.

- Language Filter: Optional profanity censoring in comments (replaces curse words with symbols like "@#$%"), useful for family-friendly viewing.

- Fullscreen Mode: Toggle via button or F11/Esc keys, hiding non-essential UI for immersive viewing.

- Reddit Authentication: Login/logout support for posting comments (requires premium upgrade). Uses OAuth2 with refresh tokens, including easy logout to clear session.

- Comment Posting: Reply button to post comments (premium feature, one-time $15 fee via Gumroad license key verification, limited to 3 activations). In-app upgrade dialog for verification.

- Settings Dialog: Multi-tab interface for appearance (themes, fonts), custom themes, thread search (leagues, subreddits, keywords, timeframe), and license info (for premium users).

- League Presets: Quick setup for NFL, NBA, MLB, NHL, MLS with predefined subreddits and keywords; custom option available.

- Caching and Retries: Efficient caching of thread lists for 5 minutes and automatic API retries for reliability, with exponential backoff (up to 5 attempts).

- Error Handling and Status Bar: Real-time status bar with colored indicators for loading, streaming, errors (e.g., "Streaming Live", "Loading Comments").

- Accessibility Features: Window resizing, full screen state, scrollbars for comments and settings, etc. are all saved and persist when running the app again.

- Performance Optimizations: Threaded operations for fetching threads, streaming comments, parsing summaries, and score updates to avoid UI freezes.

*Note: Premium commenting requires a one-time $15 lifetime unlock via secure Gumroad license. Free version includes all browsing and customization features.*

## Download
Download the latest Windows EXE from the [Releases page](https://github.com/tknice/gameday-threads/releases).

## How to Use
- Run the EXE.
- Select a league/thread and stream comments.
- For help, see settings or report issues below.

## Report Issues
Found a bug? Create an issue [here](https://github.com/tknice/gameday-threads/issues).

## License
Gameday Threads is proprietary software. Free for browsing; premium commenting requires a one-time $15 license. See the full [End User License Agreement (EULA)](LICENSE.txt) for details.

© 2025 tknice. All rights reserved. Unauthorized copying prohibited.