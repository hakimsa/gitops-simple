// config.js
require('dotenv').config();
const user = process.env.DB_USER;
const pass = process.env.DB_PASS;
const cluster = process.env.DB_CLUSTER;
const db = process.env.DB_NAME;
const serv = process.env.DB_SERV || "mongodb+srv://";
module.exports = { user, pass, cluster, db, serv };
