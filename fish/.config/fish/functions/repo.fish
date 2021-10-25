function repo
    set --local repo_path (repodir $argv)
    echo "$repo_path"
    cd "$repo_path"
end
