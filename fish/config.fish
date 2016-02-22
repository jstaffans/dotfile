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
end

. $HOME/.config/fish/local-config.fish
. $HOME/.config/fish/functions/z.fish

alias ecl "/usr/local/Cellar/emacs/24.5/bin/emacsclient -t"

