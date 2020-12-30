for repo in (find ~/repos -mindepth 2 -maxdepth 2 -type d)
    complete --no-files --command repo --arguments "(basename \"$repo\")"
end
