#!/bin/bash

function factor () {
   if [ $1 -eq 1 ]
   then
      echo 1
   else
      echo `expr $(factor $(expr $1 - 1)) \* $1`
   fi
}
echo "El factorial de $1 es"
echo `factor $1`  
