#! /usr/bin/env bash

depends=( cat grep sed cut figlet lolcat )
for DEP in "${depends[@]}"; do
    if [[ ! $(command -v $DEP) ]]; then
        exit 1
    fi
done

cat /etc/os-release | grep NAME | sed '/PRETTY/d' | cut -d= -f2 | sed 's/"//g' | figlet -tf slant -c | lolcat
