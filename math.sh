#!/bin/bash

# echo "$(($1))"
echo `bc <<< "scale = 5 ; $1"`

