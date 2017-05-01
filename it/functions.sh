#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file

ww_lang () {
   case "$1" in
       i_check) echo "Controllo...";;
   esac
}

ww_replacements=("ºC:gradi" 
                 " N : Nord "
                 " NE : Nord Est "
                 " NNE : Nord Nord Est "
                 " ENE : Est Nord Est "
                 " E : Est "
                 " ESE : Est Sud Est "
                 " SE : Sud Est "
                 " SSE : Sud Sud Est "
                 " S : Sud "
                 " SSO : Sud Sud Ovest "
                 " SO : Sud Ovest "
                 " OSO : Ovest Sud Ovest "
                 " O : Ovest "
                 " ONO : Ovest Nord Ovest "
                 " NO : Nord Ovest "
                 " NNO : Nord Nord Ovest " 
                 "[kK][mM]\/[hH]:chilometri l\'ora"
                 "%:per cento")
