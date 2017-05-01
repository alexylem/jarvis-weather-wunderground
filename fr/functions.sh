#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file

ww_lang () {
   case "$1" in
       i_check) echo "Je regarde...";;
   esac
}

ww_replacements=("ºC:degrés" 
                 " N : Nord "
                 " NE : Nord Est "
                 " NNE : Nord Nord Est "
                 " ENE : Est Nord Est "
                 " E : Est "
                 " ESE : Est Sud Est "
                 " SE : Sud Est "
                 " SSE : Sud Sud Est "
                 " S : Sud "
                 " SSO : Sud Sud Ouest "
                 " SO : Sud Ouest "
                 " OSO : Ouest Sud Ouest "
                 " O : Ouest "
                 " ONO : Ouest Nord Ouest "
                 " NO : Nord Ouest "
                 " NNO : Nord Nord Ouest " 
                 "[kK][mM]\/[hH]:kilomètres heure"
                 "%:pourcents")
