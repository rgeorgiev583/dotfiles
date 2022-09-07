if type -q xhost and set -q DISPLAY
    xhost local:root > /dev/null 2>&1
end

