set -x EDITOR vim
function mkcd
    mkdir $argv; and cd $argv
end
