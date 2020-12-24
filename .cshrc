# my custom shell configuration / extension
export CSH_HOME="$( cd "$( dirname "$0" )" && pwd )"
source $CSH_HOME/.csh_functions
_cshdebug "\$CSH_HOME is $CSH_HOME"

CSH_DEBUG="${CSH_DEBUG:-0}"
_cshdebug "load csh with debug on"

export CSH_SHELL_FILE=".$(ps | grep `echo $$` | awk '{ print $4 }')rc"
_cshdebug "\$CSH_SHELL_FILE is $CSH_SHELL_FILE"

# load aliases
_cshload $CSH_HOME/.csh_aliases
