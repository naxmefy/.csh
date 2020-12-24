# my custom shell configuration / extension

export CSH_DEBUG=1
_cshdebug() {
    if [[ $CSH_DEBUG -eq 1 ]]; then
        echo $@
    fi        
}

_cshload() {
    for fname in "$@"
    do
        if [ -f $fname ]; then
            _cshdebug "source $fname"
            source $fname
        else
            _cshdebug "$fname could not exists"
        fi 
    done
}

export CSH_HOME="$( cd "$( dirname "$0" )" && pwd )"
_cshdebug "\$CSH_HOME is $CSH_HOME"

export CSH_SHELL_FILE=".$(ps | grep `echo $$` | awk '{ print $4 }')rc"
_cshdebug "\$CSH_SHELL_FILE is $CSH_SHELL_FILE"

# load aliases
_cshload $CSH_HOME/.csh_aliases
