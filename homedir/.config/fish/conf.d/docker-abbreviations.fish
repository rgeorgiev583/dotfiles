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
abbr --add --global da "$docker_cmd attach"
abbr --add --global db "$docker_cmd build"
abbr --add --global dco "$docker_cmd commit"
abbr --add --global de "$docker_cmd exec"
abbr --add --global dei "$docker_cmd exec -it"
abbr --add --global di "$docker_cmd images"
abbr --add --global din "$docker_cmd inspect"
abbr --add --global dk "$docker_cmd kill"
abbr --add --global dl "$docker_cmd logs"
abbr --add --global dlf "$docker_cmd logs -f"
abbr --add --global dp "$docker_cmd ps"
abbr --add --global dpa "$docker_cmd ps -a"
abbr --add --global dpl "$docker_cmd pull"
abbr --add --global dpu "$docker_cmd push"
abbr --add --global drs "$docker_cmd restart"
abbr --add --global dr "$docker_cmd run"
abbr --add --global drr "$docker_cmd run --rm -it"
abbr --add --global dri "$docker_cmd run -i"
abbr --add --global drd "$docker_cmd run -d"
abbr --add --global dst "$docker_cmd start"
abbr --add --global ds "$docker_cmd stop"
abbr --add --global dt "$docker_cmd tag"

set docker_compose_cmd $docker_cmd compose

abbr --add --global dc "$docker_compose_cmd"
abbr --add --global dce "$docker_compose_cmd exec"
abbr --add --global dcr "$docker_compose_cmd run"
abbr --add --global dcrr "$docker_compose_cmd run --rm"
abbr --add --global dcrd "$docker_compose_cmd run -d"
abbr --add --global dcs "$docker_compose_cmd stop"
abbr --add --global dcst "$docker_compose_cmd start"
abbr --add --global dcrs "$docker_compose_cmd restart"
abbr --add --global dcu "$docker_compose_cmd up"
abbr --add --global dcud "$docker_compose_cmd up -d"
abbr --add --global dcd "$docker_compose_cmd down"
abbr --add --global dcdr "$docker_compose_cmd down --remove-orphans --volumes"
abbr --add --global dcl "$docker_compose_cmd logs --no-log-prefix"
abbr --add --global dclf "$docker_compose_cmd logs --no-log-prefix -f"
abbr --add --global dcpr "$docker_compose_cmd -p (basename (pwd))"
abbr --add --global dcpd "$docker_compose_cmd -p (basename (pwd)) down --remove-orphans --volumes"
abbr --add --global dcp "$docker_compose_cmd ps"
abbr --add --global dcpa "$docker_compose_cmd ps -a"
abbr --add --global dcpl "$docker_compose_cmd pull"
abbr --add --global dcpu "$docker_compose_cmd push"
abbr --add --global dck "$docker_compose_cmd kill"
abbr --add --global dcb "$docker_compose_cmd build"
abbr --add --global dci "$docker_compose_cmd images"
