#! /bin/bash

function numberOfZeros {
  local numberIn=$1
  local wynnik=1
  local z=1
  while [ $z -le $numberIn ];
  do
    z=$(( $z * 10 ))
    wynnik=$(( $wynnik + 1 ))
  done
  echo $(( $wynnik - 1 ))
}

function stringZero {
  local numberIn=$1
  local i=0
  local z=""
  while [ $i -lt $numberIn ];
  do
    z="${z}0"
    i=$(( $i + 1 ))
  done
  echo "$z"
}

function generateName {
  numberIn=$1
  numberIn2=$2
  t="$(numberOfZeros $numberIn2)"
  t2="$(numberOfZeros $numberIn)"
  zero="$(stringZero $(( $t - $t2 )))"
  echo "ch${zero}$numberIn.html"
}

