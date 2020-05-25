# -- Improved X11 forwarding through GNU Screen (or tmux).
# If not in screen or tmux, update the DISPLAY cache.
# If we are, update the value of DISPLAY to be that in the cache.
function update-x11-forwarding
{
    if [ -z "$STY" -a -z "$TMUX" ]; then
        echo $DISPLAY > ~/.display.txt
    else
        export DISPLAY=`cat ~/.display.txt`
    fi
}

# This is run before every command.
preexec() {
    # Don't cause a preexec for PROMPT_COMMAND.
    # Beware!  This fails if PROMPT_COMMAND is a string containing more than one command.
    [ "$BASH_COMMAND" = "$PROMPT_COMMAND" ] && return 

    update-x11-forwarding

    # Debugging.
    #echo DISPLAY = $DISPLAY, display.txt = `cat ~/.display.txt`, STY = $STY, TMUX = $TMUX  
}
trap 'preexec' DEBUG

# fix byobu freezes
stty ixany

function identity()
{
    # run an ssh-agent and add identity
    eval `ssh-agent`
    ssh-add

    # define git environment variables
    export GIT_AUTHOR_NAME="Jakob Schwendner"
    export GIT_AUTHOR_EMAIL="jschwendner@krakenrobotik.de"
    export GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
    export GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
}

function sshf()
{
    if [ -z "$SSH_AGENT_PID" ]; then
        # add the identity
        identity
    fi

    DISPLAY=${DISPLAY:-localhost:0.0} ssh -X -A $@
}

