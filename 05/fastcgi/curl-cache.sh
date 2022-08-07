#!/bin/sh


echo Medindo o tempo do site...
curl -I -w"\nTime: %{time_total}\n" http://127.0.0.1:1002/delay5seg.php

echo Medindo novamente o tempo do site...
curl -I -w"\nTime: %{time_total}\n" http://127.0.0.1:1002/delay5seg.php
