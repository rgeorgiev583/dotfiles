if not status --is-interactive
    exit
end

abbr --add --global g git
abbr --add --global ga 'git add'
abbr --add --global gaa 'git add --all'
abbr --add --global gap 'git add --patch'
abbr --add --global gau 'git add --update'
abbr --add --global gav 'git add --verbose'
abbr --add --global gapp 'git apply'
abbr --add --global gb 'git branch'
abbr --add --global gba 'git branch -a'
abbr --add --global gbd 'git branch -d'
abbr --add --global gbda 'git branch --no-color --merged | command grep -vE \'^(\*|\s*(master|develop|dev)\s*$)\' | command xargs -n 1 git branch -d'
abbr --add --global gbD 'git branch -D'
abbr --add --global gbl 'git blame -b -w'
abbr --add --global gbm 'git branch --merged'
abbr --add --global gbnm 'git branch --no-merged'
abbr --add --global gbr 'git branch --remote'
abbr --add --global gbs 'git bisect'
abbr --add --global gbsb 'git bisect bad'
abbr --add --global gbsg 'git bisect good'
abbr --add --global gbsr 'git bisect reset'
abbr --add --global gbss 'git bisect start'
abbr --add --global gc 'git commit -v'
abbr --add --global gc! 'git commit -v --amend'
abbr --add --global gcn! 'git commit -v --no-edit --amend'
abbr --add --global gca 'git commit -v -a'
abbr --add --global gca! 'git commit -v -a --amend'
abbr --add --global gcan! 'git commit -v -a --no-edit --amend'
abbr --add --global gcans! 'git commit -v -a -s --no-edit --amend'
abbr --add --global gcam 'git commit -a -m'
abbr --add --global gcsm 'git commit -s -m'
abbr --add --global gcb 'git checkout -b'
abbr --add --global gcf 'git config'
abbr --add --global gcl 'git clone --recurse-submodules'
abbr --add --global gcle 'git clean -id'
abbr --add --global gclean 'git reset --hard && git clean -dfx'
abbr --add --global gcom 'git checkout master'
abbr --add --global gcod 'git checkout develop'
abbr --add --global gcm 'git commit -m'
abbr --add --global gco 'git checkout'
abbr --add --global gcop 'git checkout --patch'
abbr --add --global gcount 'git shortlog -sn'
abbr --add --global gcp 'git cherry-pick'
abbr --add --global gcpa 'git cherry-pick --abort'
abbr --add --global gcpc 'git cherry-pick --continue'
abbr --add --global gcs 'git commit -S'
abbr --add --global gd 'git diff'
abbr --add --global gdca 'git diff --cached'
abbr --add --global gdcw 'git diff --cached --word-diff'
abbr --add --global gdct 'git describe --tags `git rev-list --tags --max-count=1`'
abbr --add --global gds 'git diff --staged'
abbr --add --global gdt 'git diff-tree --no-commit-id --name-only -r'
abbr --add --global gdw 'git diff --word-diff'
abbr --add --global gf 'git fetch'
abbr --add --global gfa 'git fetch --all'
abbr --add --global gfo 'git fetch origin'
abbr --add --global gg 'git gui citool'
abbr --add --global gga 'git gui citool --amend'
abbr --add --global gpull 'git pull origin (git rev-parse --abbrev-ref HEAD)'
abbr --add --global gpush 'git push origin (git rev-parse --abbrev-ref HEAD)'
abbr --add --global gbu 'git branch --set-upstream-to=origin/(git rev-parse --abbrev-ref HEAD)'
abbr --add --global gpu 'git push --set-upstream origin (git rev-parse --abbrev-ref HEAD)'
abbr --add --global gh 'git help'
abbr --add --global gignore 'git update-index --assume-unchanged'
abbr --add --global gignored 'git ls-files -v | grep \'^[[:lower:]]\''
abbr --add --global gk 'gitk --all --branches'
abbr --add --global gke 'gitk --all (git log -g --pretty=%h)'
abbr --add --global gl 'git pull'
abbr --add --global glp 'git pull --prune'
abbr --add --global glg 'git log --stat'
abbr --add --global glgp 'git log --stat -p'
abbr --add --global glgg 'git log --graph'
abbr --add --global glgga 'git log --graph --decorate --all'
abbr --add --global glgm 'git log --graph --max-count=10'
abbr --add --global glo 'git log --oneline --decorate'
abbr --add --global glol 'git log --graph --pretty=\'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset\''
abbr --add --global glols 'git log --graph --pretty=\'%Cred%h%Creset -%C(auto)%d%Creset%s %Cgreen(%cr) %C(bold blue)<%an>%Creset\' --stat'
abbr --add --global glod 'git log --graph --pretty=\'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset\''
abbr --add --global glods 'git log --graph --pretty=\'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset\' --date=short'
abbr --add --global glola 'git log --graph --pretty=\'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset\' --all'
abbr --add --global glog 'git log --oneline --decorate --graph'
abbr --add --global gloga 'git log --oneline --decorate --graph --all'
abbr --add --global gm 'git merge'
abbr --add --global gmom 'git merge origin/master'
abbr --add --global gmt 'git mergetool --no-prompt'
abbr --add --global gmtv 'git mergetool --no-prompt --tool=vimdiff'
abbr --add --global gmum 'git merge upstream/master'
abbr --add --global gma 'git merge --abort'
abbr --add --global gp 'git push'
abbr --add --global gpd 'git push --dry-run'
abbr --add --global gpf 'git push --force-with-lease'
abbr --add --global gpf! 'git push --force'
abbr --add --global gpat 'git push --all && git push --tags'
abbr --add --global gpo 'git push origin'
abbr --add --global gpu 'git push upstream'
abbr --add --global gpv 'git push -v'
abbr --add --global gre 'git remote'
abbr --add --global grea 'git remote add'
abbr --add --global grb 'git rebase'
abbr --add --global grba 'git rebase --abort'
abbr --add --global grbc 'git rebase --continue'
abbr --add --global grbd 'git rebase develop'
abbr --add --global grbi 'git rebase -i'
abbr --add --global grbt 'git rebase -i (tig-pick)'
abbr --add --global grbm 'git rebase master'
abbr --add --global grbs 'git rebase --skip'
abbr --add --global gr 'git reset'
abbr --add --global grh 'git reset --hard'
abbr --add --global groh 'git reset origin/(git rev-parse --abbrev-ref HEAD) --hard'
abbr --add --global grm 'git rm'
abbr --add --global grmc 'git rm --cached'
abbr --add --global grer 'git remote rename'
abbr --add --global gred 'git remote remove'
abbr --add --global gres 'git remote set-url'
abbr --add --global gct 'cd (git rev-parse --show-toplevel || echo .)'
abbr --add --global gru 'git reset --'
abbr --add --global greu 'git remote update'
abbr --add --global grev 'git remote -v'
abbr --add --global gsb 'git status -sb'
abbr --add --global gs 'git show'
abbr --add --global gsi 'git submodule init'
abbr --add --global gsps 'git show --pretty=short --show-signature'
abbr --add --global gss 'git status -s'
abbr --add --global gst 'git status'
abbr --add --global gsta 'git stash'
abbr --add --global gstaa 'git stash apply'
abbr --add --global gstc 'git stash clear'
abbr --add --global gstd 'git stash drop'
abbr --add --global gstl 'git stash list'
abbr --add --global gstp 'git stash pop'
abbr --add --global gsts 'git stash show --text'
abbr --add --global gstall 'git stash --all'
abbr --add --global gsu 'git submodule update'
abbr --add --global gt 'git tag'
abbr --add --global gts 'git tag -s'
abbr --add --global gtv 'git tag | sort -V'
abbr --add --global gtl 'git tag --sort=-v:refname -n -l $1\*'
abbr --add --global gunignore 'git update-index --no-assume-unchanged'
abbr --add --global gunwip 'git log -n 1 | grep -q -c \'\-\-wip\-\-\' && git reset HEAD~1'
abbr --add --global glr 'git pull --rebase'
abbr --add --global glrv 'git pull --rebase -v'
abbr --add --global glra 'git pull --rebase --autostash'
abbr --add --global glrav 'git pull --rebase --autostash -v'
abbr --add --global glum 'git pull upstream master'
abbr --add --global gwch 'git whatchanged -p --abbrev-commit --pretty=medium'
abbr --add --global gwip 'git add -A; git rm (git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign -m \'--wip-- [skip ci]\''
