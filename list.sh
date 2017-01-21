#!/bin/bash
awk '/table/,/\/table/{print}' | sed "s;</\{0,1\}t[hd]>;_escape_;g" | xargs |sed "s;</tr>;\n;g"| sed "s;<[^>]*>;;g" | sed "s/^ *//g" | sed "s/ *$//g" | sed "s/\&amp;/\&/g" | sed "s/\&lt;/</g" | sed "s/\&gt;/>/g" | sed "s/_ _/_,_/g" | sed "s/_escape_/\"/g"
