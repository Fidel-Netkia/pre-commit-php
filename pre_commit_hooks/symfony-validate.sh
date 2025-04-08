#!/bin/bash

# Bash Symfony Schema Validation Unit Task Runner
#
# Exit 0 if no errors found
# Exit 1 if errors were found
#
# Requires
# - php
#
# Arguments
# - None

# Echo Colors
msg_color_magenta='\e[1;35m'
msg_color_yellow='\e[0;33m'
msg_color_none='\e[0m' # No Color
echo -en "${msg_color_yellow}Begin Symfony Schema Validation Task Runner ...${msg_color_none} \n"

symscheval_command="php bin/console doctrine:schema:validate --skip-sync"

echo "Running command $symscheval_command"
$symscheval_command
if [ $? -ne 0 ]; then
    exit 1
fi
exit 0