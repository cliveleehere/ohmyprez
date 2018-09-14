#
# Defines Git aliases.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

#
# Settings
#
#

# Log
zstyle -s ':prezto:module:git:log:medium' format '_git_log_medium_format' \
  || _git_log_medium_format='%C(bold)Commit:%C(reset) %C(green)%H%C(red)%d%n%C(bold)Author:%C(reset) %C(cyan)%an <%ae>%n%C(bold)Date:%C(reset)   %C(blue)%ai (%ar)%C(reset)%n%+B'
zstyle -s ':prezto:module:git:log:oneline' format '_git_log_oneline_format' \
  || _git_log_oneline_format='%C(green)%h%C(reset) %s%C(red)%d%C(reset)%n'
zstyle -s ':prezto:module:git:log:brief' format '_git_log_brief_format' \
  || _git_log_brief_format='%C(green)%h%C(reset) %s%n%C(blue)(%ar by %an)%C(red)%d%C(reset)%n'

# Status
zstyle -s ':prezto:module:git:status:ignore' submodules '_git_status_ignore_submodules' \
  || _git_status_ignore_submodules='none'

#
# Aliases
#

if ! zstyle -t ':prezto:module:git:alias' skip 'yes'; then
  # Git
  alias g='git'

  # Branch (b)
  alias gb='git branch'
  alias gba='git branch --all --verbose'
  alias gbr='git branch -r'

  # Cherry-pick (cp)
  alias gcp='git cherry-pick'
  alias gcpff='git cherry-pick --ff'

  # Commit (c)
  alias gc='git commit --verbose'
  alias gca='git commit --ammend'
  alias gco='git checkout'
  
  # Diff (d)
  alias gd='git diff'
  alias gdU='git --no-pager diff --name-only --diff-filter=U'
  alias gaa='git add $(gdU)'
  alias gma='git mergetool $(gdU)'
  # alias gCo='git checkout --ours --'
  # alias gCO='gCo $(gCl)'
  # alias gCt='git checkout --theirs --'
  # alias gCT='gCt $(gCl)'
  # alias gdi='git status --porcelain --short --ignored | sed -n "s/^!! //p"'

  # Fetch (f)
  alias gf='git fetch'
  alias gfa='git fetch --all'
  alias gpl='git pull'
  alias gplr='git pull --rebase'

  # Flow (F)
  alias gFi='git flow init'
  alias gFf='git flow feature'
  alias gFb='git flow bugfix'
  alias gFl='git flow release'
  alias gFh='git flow hotfix'
  alias gFs='git flow support'

  alias gFfl='git flow feature list'
  alias gFfs='git flow feature start'
  alias gFff='git flow feature finish'
  alias gFfp='git flow feature publish'
  alias gFft='git flow feature track'
  alias gFfd='git flow feature diff'
  alias gFfr='git flow feature rebase'
  alias gFfc='git flow feature checkout'
  alias gFfm='git flow feature pull'
  alias gFfx='git flow feature delete'

  alias gFbl='git flow bugfix list'
  alias gFbs='git flow bugfix start'
  alias gFbf='git flow bugfix finish'
  alias gFbp='git flow bugfix publish'
  alias gFbt='git flow bugfix track'
  alias gFbd='git flow bugfix diff'
  alias gFbr='git flow bugfix rebase'
  alias gFbc='git flow bugfix checkout'
  alias gFbm='git flow bugfix pull'
  alias gFbx='git flow bugfix delete'

  alias gFll='git flow release list'
  alias gFls='git flow release start'
  alias gFlf='git flow release finish'
  alias gFlp='git flow release publish'
  alias gFlt='git flow release track'
  alias gFld='git flow release diff'
  alias gFlr='git flow release rebase'
  alias gFlc='git flow release checkout'
  alias gFlm='git flow release pull'
  alias gFlx='git flow release delete'

  alias gFhl='git flow hotfix list'
  alias gFhs='git flow hotfix start'
  alias gFhf='git flow hotfix finish'
  alias gFhp='git flow hotfix publish'
  alias gFht='git flow hotfix track'
  alias gFhd='git flow hotfix diff'
  alias gFhr='git flow hotfix rebase'
  alias gFhc='git flow hotfix checkout'
  alias gFhm='git flow hotfix pull'
  alias gFhx='git flow hotfix delete'

  alias gFsl='git flow support list'
  alias gFss='git flow support start'
  alias gFsf='git flow support finish'
  alias gFsp='git flow support publish'
  alias gFst='git flow support track'
  alias gFsd='git flow support diff'
  alias gFsr='git flow support rebase'
  alias gFsc='git flow support checkout'
  alias gFsm='git flow support pull'
  alias gFsx='git flow support delete'

  # Grep (g)
  alias gg='git grep'

  # Index (i)
  alias ga='git add'
  
  # Log (l)
  alias gl='git log --topo-order --pretty=format:"${_git_log_medium_format}"'
  alias gls='git log --topo-order --stat --pretty=format:"${_git_log_medium_format}"'
  alias gld='git log --topo-order --stat --patch --full-diff --pretty=format:"${_git_log_medium_format}"'
  alias glo='git log --topo-order --pretty=format:"${_git_log_oneline_format}"'
  alias glg='git log --topo-order --all --graph --pretty=format:"${_git_log_oneline_format}"'
  alias glb='git log --topo-order --pretty=format:"${_git_log_brief_format}"'
  alias glc='git shortlog --summary --numbered'
  alias glgd='git log --graph --decorate --pretty=oneline --abbrev-commit'
  alias gla='git log --graph --decorate --pretty=oneline --abbrev-commit --all --date=local'

  # Merge (m)
  alias gm='git merge'
  alias gmC='git merge --no-commit'
  alias gmF='git merge --no-ff'
  alias gma='git merge --abort'
  alias gmt='git mergetool'

  # Push (p)
  alias gp='git push'
  alias gpb='git push origin HEAD:refs/publish/"$(git-branch-current)"'
  # alias gpp='git pull origin "$(git-branch-current 2> /dev/null)" && git push origin "$(git-branch-current 2> /dev/null)"'

  # Rebase (r)
  alias gr='git rebase'
  alias gra='git rebase --abort'
  alias grc='git rebase --continue'
  alias gri='git rebase --interactive'
  alias grs='git rebase --skip'

  # Stash (st)
  alias gst='git stash'

  # status (s)
  alias gs='git status'
  alias gss='git status --short'

  # Submodule (S)
  alias gS='git submodule'
  alias gSa='git submodule add'
  alias gSf='git submodule foreach'
  alias gSi='git submodule init'
  alias gSI='git submodule update --init --recursive'
  alias gSl='git submodule status'
  alias gSm='git-submodule-move'
  alias gSs='git submodule sync'
  alias gSu='git submodule foreach git pull origin master'
  alias gSx='git-submodule-remove'

  # Tag (t)
  alias gt='git tag'
  alias gtl='git tag -l'
fi
