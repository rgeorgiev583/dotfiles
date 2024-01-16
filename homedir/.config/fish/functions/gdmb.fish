function gdmb
    git diff (git merge-base HEAD $argv[1]) $argv[2..]
end
