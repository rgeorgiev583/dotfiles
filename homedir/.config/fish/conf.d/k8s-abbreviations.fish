if not status --is-interactive
    exit
end

set kubectl_cmd kubectl

abbr --add --global k kubectl
abbr --add --global ka kubectl apply
abbr --add --global kaf kubectl apply -f
abbr --add --global kan kubectl annotate
abbr --add --global kar kubectl api-resources
abbr --add --global kas kubectl autoscale
abbr --add --global kat kubectl attach
abbr --add --global kau kubectl auth
abbr --add --global kav kubectl api-versions
abbr --add --global kc kubectl create
abbr --add --global kce kubectl certificate
abbr --add --global kcf kubectl config
abbr --add --global kci kubectl cluster-info
abbr --add --global kco kubectl cordon
abbr --add --global kd kubectl describe
abbr --add --global kdb kubectl debug
abbr --add --global kdd kubectl describe deployments
abbr --add --global kde kubectl delete
abbr --add --global kded kubectl delete deployments
abbr --add --global kdep kubectl delete pods
abbr --add --global kdes kubectl delete services
abbr --add --global kdi kubectl diff
abbr --add --global kdp kubectl describe pods
abbr --add --global kdr kubectl drain
abbr --add --global kds kubectl describe services
abbr --add --global ke kubectl exec
abbr --add --global ked kubectl edit
abbr --add --global kei kubectl exec -it
abbr --add --global kev kubectl events
abbr --add --global kex kubectl explain
abbr --add --global kexp kubectl expose
abbr --add --global kg kubectl get
abbr --add --global kgd kubectl get deployments
abbr --add --global kgp kubectl get pods
abbr --add --global kgs kubectl get services
abbr --add --global kk kubectl kustomize
abbr --add --global kl kubectl logs
abbr --add --global klf kubectl logs -f
abbr --add --global kla kubectl label
abbr --add --global kp kubectl proxy
abbr --add --global kpa kubectl patch
abbr --add --global kpf kubectl port-forward
abbr --add --global kpl kubectl plugin
abbr --add --global kr kubectl run
abbr --add --global krd kubectl rollout restart deploy
abbr --add --global kre kubectl replace
abbr --add --global kro kubectl rollout
abbr --add --global krr kubectl rollout restart
abbr --add --global ks kubectl set
abbr --add --global ksc kubectl scale
abbr --add --global kt kubectl top
abbr --add --global kta kubectl taint
abbr --add --global kuc kubectl uncordon
abbr --add --global kv kubectl version
abbr --add --global kw kubectl wait
