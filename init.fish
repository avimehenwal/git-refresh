# git-refresh initialization hook
#
# You can use the following variables in this file:
# * $package       package name
# * $path          package path
# * $dependencies  package dependencies

function git-refresh --on-variable PWD \
  --description "git pull automatically wherever inside a git repository"
    set --local hasGit (find ./ -maxdepth 1 -type d -name .git -print)
    if test "$hasGit" = "./.git"
        echo -e "\e[1m(git-refresh) - GIT repo detected\e[0m"
        git pull --all --verbose
    end
end