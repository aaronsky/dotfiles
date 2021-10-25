for repo in (find ~/repos -mindepth 2 -maxdepth 2 -type d)
    complete --no-files --command repodir --arguments "(basename \"$repo\")"
end
