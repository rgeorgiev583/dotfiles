function logout --wraps='qdbus org.kde.ksmserver /KSMServer logout 0 0 1' --description 'alias logout=qdbus org.kde.ksmserver /KSMServer logout 0 0 1'
    qdbus org.kde.ksmserver /KSMServer logout 0 0 1 $argv
end
