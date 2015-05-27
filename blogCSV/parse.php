<?php
ini_set('auto_detect_line_endings', TRUE);
$file = fopen("c360blogs.csv", "r");

$line = fgets($file);
$data = explode(',', $line);

$line = fgets($file);
$data = explode(',', $line);

var_dump($data);

preg_match_all()


?>