import { bot } from "./bot";

const now = new Date().getTime();
const end = new Date("2038-01-19T03:14:07Z").getTime();
const daysDelta = Math.floor((end - now) / (1000 * 60 * 60 * 24));

bot.telegram.sendMessage("-1003154790508", `${daysDelta} days left to Epochalypse.`);
