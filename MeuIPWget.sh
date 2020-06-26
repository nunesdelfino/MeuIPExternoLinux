#!/bin/bash

ARQUIVO="MeuIP.html"

wget https://www.meuip.com.br/ -O ARQUIVO

cat ARQUIVO | grep "Meu ip é" | sed 's/<[^>]*>//g' | sed 's/	.*	//g' | sed 's/Meu.* /Meu IP Publico: /g'

rm ARQUIVO
