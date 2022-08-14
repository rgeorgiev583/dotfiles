if not status --is-interactive
    exit
end

set docker_cmd docker

abbr --add --global d "$docker_cmd"
abbr --add --global dcn "$docker_cmd container"
abbr --add --global dim "$docker_cmd image"
abbr --add --global dip "$docker_cmd image prune"
abbr --add --global dn "$docker_cmd network"
abbr --add --global dsp "$docker_cmd system prune"
abbr --add --global dat "$docker_cmd attach"
abbr --add --global db "$docker_cmd build"
abbr --add --global dco "$docker_cmd commit"
abbr --add --global de "$docker_cmd exec"
abbr --add --global dei "$docker_cmd exec -it"
abbr --add --global di "$docker_cmd images"
abbr --add --global din "$docker_cmd inspect"
abbr --add --global dk "$docker_cmd kill"
abbr --add --global dl "$docker_cmd logs"
abbr --add --global dp "$docker_cmd pull"
abbr --add --global dps "$docker_cmd push"
abbr --add --global drs "$docker_cmd restart"
abbr --add --global dr "$docker_cmd run"
abbr --add --global drr "$docker_cmd run --rm -it"
abbr --add --global dsta "$docker_cmd start"
abbr --add --global dst "$docker_cmd stop"
abbr --add --global dt "$docker_cmd tag"

set docker_compose_cmd docker compose

abbr --add --global dc "$docker_compose_cmd"
abbr --add --global dce "$docker_compose_cmd exec"
abbr --add --global dcr "$docker_compose_cmd run"
abbr --add --global dcrr "$docker_compose_cmd run --rm"
abbr --add --global dcs "$docker_compose_cmd stop"
abbr --add --global dcud "$docker_compose_cmd up -d"
abbr --add --global dcd "$docker_compose_cmd down"
abbr --add --global dcl "$docker_compose_cmd logs --no-log-prefix"
abbr --add --global dclf "$docker_compose_cmd logs --no-log-prefix -f"
abbr --add --global dcp "$docker_compose_cmd pull"
abbr --add --global dck "$docker_compose_cmd kill"
