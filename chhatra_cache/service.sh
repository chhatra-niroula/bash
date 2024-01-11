#!/bin/bash


serviceid=$(pgrep firefox)
echo $serviceid


echo "Enter Service Name: "
read servicename
echo "You Entered: $servicename"

