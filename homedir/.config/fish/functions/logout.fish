function logout
    qdbus-qt5 org.kde.ksmserver /KSMServer logout 0 0 1 $argv
end
