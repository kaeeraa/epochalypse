import { Telegraf } from "telegraf";

const token = process.env.BOT_TOKEN;
if (!token) {
  throw new Error("Token not found");
}

export const bot = new Telegraf(token);
