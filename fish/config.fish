# fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'
 
function aws-creds-fish
    aws-creds env $argv | sed 's/export/set -x --global/' | sed 's/=/ /' | source
end
                 
function aws-creds-fish-erase
  set --erase AWS_ACCESS_KEY_ID
  set --erase AWS_ACCESS_KEY
  set --erase AWS_SECRET_ACCESS_KEY
  set --erase AWS_SECRET_KEY
  set --erase RPROMPT
  set --erase AWS_CREDS_NAME
end
                                                                                  
function fish_prompt
  set last_status $status
  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal
  printf '%s ' (__fish_git_prompt)
  set_color normal

  # Show the conda environment, calculate __fish_prompt_conda only once
  if set -q CONDA_DEFAULT_ENV
    if not set -q __fish_prompt_conda
      set -g __fish_prompt_conda "("$CONDA_DEFAULT_ENV")" "$__fish_prompt_normal "
    end
    echo -n $__fish_prompt_conda
  end

  if set -q VIRTUAL_ENV
    echo -n -s (set_color -b blue white) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
  end
end

function bind_bang
    switch (commandline -t)[-1]
        case "!"
            commandline -t $history[1]; commandline -f repaint
        case "*"
            commandline -i !
    end
end

function bind_dollar
    switch (commandline -t)[-1]
        case "!"
            commandline -t ""
            commandline -f history-token-search-backward
        case "*"
            commandline -i '$'
    end
end

function fish_user_key_bindings
    bind ! bind_bang
    bind '$' bind_dollar
end

# source highlighting for less (with brew install source-highlight)
set hilite (which src-hilite-lesspipe.sh)
set -x LESSOPEN "| $hilite %s"
set -x LESS " -R -X -F "

. $HOME/.config/fish/local-config.fish
. $HOME/.config/fish/functions/z.fish

# alias ecl "/usr/local/Cellar/emacs/24.5/bin/emacsclient -t"
# set -x GPG_AGENT_INFO ~/.gnupg/S.gpg-agent:(ps -A | grep -m1 "gpg-agent --daemon" | awk '{print $1}'):1

