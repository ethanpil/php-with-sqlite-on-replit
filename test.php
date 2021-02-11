<?php
//Simple script to verify installation of sqlite
//Creates a new database and runs a simple query which should display "101"
$db = new SQLite3('test.sqlite3', SQLITE3_OPEN_CREATE | SQLITE3_OPEN_READWRITE); 
echo $db->querySingle('SELECT 1+100');
