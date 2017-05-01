#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file

ww_lang () {
   case "$1" in
       i_check) echo "I check...";;
   esac
}

ww_replacements=("ºC:degrees" 
                 " N : North "
                 " NE : North Est "
                 " NNE : North North Est "
                 " ENE : Est North Est "
                 " E : Est "
                 " ESE : Est South Est "
                 " SE : South Est "
                 " SSE : South South Est "
                 " S : South "
                 " SSO : South South West "
                 " SO : South West "
                 " OSO : West South West "
                 " O : West "
                 " ONO : West North West "
                 " NO : North West "
                 " NNO : North North West " 
                 "[kK][mM]\/[hH]:kilometer per hour"
                 "%:percent")
