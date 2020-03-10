#!/usr/bin/env bash

mkdir build
cd build
cmake ..
make

tee settings/local.php << EOF
<?php
 @define('CONST_Website_BaseURL', '/nominatim/');
 @define('CONST_Database_DSN', 'pgsql:host=localhost;port=5432;dbname=nominatim;user=nominatim;password=')
EOF
