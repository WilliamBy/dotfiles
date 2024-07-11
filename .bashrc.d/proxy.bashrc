#!/bin/bash
set_proxy() {
    type="$1"
    host="$2"
    port="$3"
    user="$4"
    pass="$5"
    if [[ -n "$user" ]]; then
        export http_proxy="$type"://"$user":"$pass"@"$host":"$port"
    else
        export http_proxy="$type"://"$host":"$port"
    fi
    export HTTP_PROXY=$http_proxy
    
    export https_proxy=$http_proxy
    export HTTPS_PROXY=$http_proxy
    
    export ftp_proxy=$http_proxy
    export FTP_PROXY=$http_proxy
    
    export all_proxy=$http_proxy
    export ALL_PROXY=$http_proxy
    
    echo "$http_proxy"
}
    
unset_proxy() {
    unset http_proxy
    unset HTTP_PROXY
    
    unset https_proxy
    unset HTTPS_PROXY
    
    unset ftp_proxy
    unset FTP_PROXY
    
    unset all_proxy
    unset ALL_PROXY
}
