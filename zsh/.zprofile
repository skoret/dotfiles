
# list all oh-my-zsh plugins aliases
function options() {
    PLUGIN_PATH="$HOME/.oh-my-zsh/plugins/"
    for plugin in $plugins; do
        if [ -d "$PLUGIN_PATH$plugin" ]; then
            echo "\nPlugin: $plugin"
            echo "functions:"
            grep -r "^function \w*" $PLUGIN_PATH$plugin | sed 's/{$//' | cut -f2- -d ' '
            echo "aliases:"
            grep -r "^alias \w\+=" $PLUGIN_PATH$plugin | cut -f2- -d ' '
        fi
    done
}

# setup java home
export JAVA_HOME=$(/usr/libexec/java_home -v11)

function jdks() {
    /usr/libexec/java_home -V
}

# change current jdk (e.g. 'jdk 11' or 'jdk 1.8')
function jdk() {
    version=$1
    export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
    java -version
}

# docker shortcuts
function dls() {
    echo "------ containers ------"
    docker ps -a --format="table {{.Names}}\t{{.Status}}\t{{.Ports}}\t{{.Command}}\t{{.Image}}" | cut -c-$(tput cols)
    echo "-------- stats ---------"
    docker stats --no-stream
    echo "------- volumes --------"
    docker volume ls
    echo "------- networks -------"
    docker network ls
    echo "-------- images --------"
    docker images
}

function drm() {
    empty="noting to delete"
    echo "------ containers ------"
    docker rm $(docker ps -aq) 2> /dev/null || echo $empty
    echo "------- volumes --------"
    docker volume rm $(docker volume ls -q) 2> /dev/null || echo $empty
    echo "------- networks -------"
    docker network prune -f 2> /dev/null || echo $empty
    echo "-------- images --------"
    docker rmi $(docker images -q --filter="dangling=true") 2> /dev/null || echo $empty
}

