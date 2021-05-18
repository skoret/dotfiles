alias cls='clear'
alias hgrep='fc -El 0 | grep'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'

alias dps='docker ps -a --format="table {{.Names}}\t{{.Status}}\t{{.Ports}}\t{{.Command}}\t{{.Image}}" | cut -c-$(tput cols)'
alias dis='docker images'
alias dvs='docker volume ls'
alias dns='docker network ls'
alias dlf='docker logs -f'

alias dpr='docker rm $(docker ps -aq)'
alias dvr='docker volume rm $(docker volume ls -q)'
alias dim='docker rmi $(docker images -q --filter="dangling=true")'
alias dnr='docker network prune -f'

