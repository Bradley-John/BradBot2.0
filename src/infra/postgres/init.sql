-- Create the main schema
CREATE SCHEMA IF NOT EXISTS bot;

-- Table to log every command the bot sees or handles
CREATE TABLE IF NOT EXISTS bot.command_logs (
    id SERIAL PRIMARY KEY,
    command_name TEXT NOT NULL,
    user_id TEXT NOT NULL,
    username TEXT,
    channel_id TEXT,
    guild_id TEXT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table to store dynamic/custom commands
-- ex !addcommand greet Hello there!
CREATE TABLE IF NOT EXISTS bot.custom_commands (
    id SERIAL PRIMARY KEY,
    trigger TEXT UNIQUE NOT NULL,
    response TEXT NOT NULL,
    created_by TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
