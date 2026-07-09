#!/bin/bash
#Prints out the version for most relevant software

echo "_______________________________________________________________________________________________________________"

pyvers=$(python3 --version)
echo "Python Version:"
if [[ $? != 0 ]]; then
  echo "Not Installed"
else
  echo "$pyvers"
fi
echo "_______________________________________________________________________________________________________________"

pipvers=$(pip3 --version)
echo "Pip Version: "
if [[ $? != 0 ]]; then
  echo "Not Installed"
else  
  echo "$pipvers"
fi
echo "_______________________________________________________________________________________________________________"

mysqlvers=$(mysql --version)
echo "MySQL Version: "
if [[ $? != 0 ]]; then
  echo "Not Installed"
else  
  echo "$mysqlvers"
fi
echo "_______________________________________________________________________________________________________________" 

gitvers=$(git --version)
echo "Git Version: "
if [[ $? != 0 ]]; then
  echo "Not Installed"
else  
  echo "$gitvers"
fi
echo "_______________________________________________________________________________________________________________" 

brewvers=$(brew --version)
echo "Homebrew Version: "
if [[ $? != 0 ]]; then
  echo "Not Installed"
else  
  echo "$brewvers"
fi
echo "_______________________________________________________________________________________________________________" 

mongovers=$(mongosh --version 2>/dev/null)
echo "MongoDB Shell Version: "
if [[ $? != 0 ]]; then
  echo "Not Installed"
else  
  echo "$mongovers"
fi
echo "_______________________________________________________________________________________________________________" 

echo "Postman Version: "
postmanvers=$(postman --version 2>/dev/null)  
if [[ $postmanvers != 0 ]]; then
  echo "Not Installed"
else  
  echo "$postmanvers"
fi
echo "_______________________________________________________________________________________________________________" 
echo "END"       

