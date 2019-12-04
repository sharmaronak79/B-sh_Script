#!/bin/bash

echo "Enter user name please."
read username
echo "Please Enter password"
read password
if [[ ( $username == "admin" && $password == "admin" ) ]]; then

echo "You  are a valid user";
else

echo "Sorry you are not a invalid user"
fi
