const { printQueryResults } = require('./utils');
// require the 'sqlite3' package here
const sqlite3 = require('sqlite3');
// open up the SQLite database in './db.sqlite'
const db = new sqlite3.Database('./db.sqlite');

db.all('SELECT * FROM satyam ', (error, rows) => {
  if (error) {
    throw error;
  }
  printQueryResults(rows);
});