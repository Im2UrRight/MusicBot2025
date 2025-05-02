# MusicBot2025

A simple YouTube music bot for Discord.

## Running the Bot

### Using Docker
1. Build the Docker image:
   ```bash
   docker build -t musicbot2025 .
   ```
2. Run the container:
   ```bash
   docker run -d --name musicbot -e DISCORD_TOKEN=your-discord-bot-token -e PREFIX=! musicbot2025
   ```

### On a Raspberry Pi
1. Ensure Node.js is installed (preferably version 18 or higher).
2. Install dependencies:
   ```bash
   npm install
   ```
3. Run the bot:
   ```bash
   node index.js
   ```

### Environment Variables
- `DISCORD_TOKEN`: Your Discord bot token.
- `PREFIX`: The command prefix for the bot.

### Notes
- Make sure to replace `your-discord-bot-token` with your actual bot token.
- For Raspberry Pi, ensure all dependencies are compatible with ARM architecture.