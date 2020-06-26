#!/bin/bash

curl https://www.meuip.com.br/ | grep "Meu ip é" | sed 's/<[^>]*>//g' | sed 's/	.*	//g' | sed 's/Meu.* /Meu IP Publico: /g'
