    #!/bin/sh
    
    #este script vai gerir uma conversa atraves de ficheiros de texto
    #este eh o usuario1
    
    echo "Bem vindo! Introduza o nome a apresentar"
    read usuario
    
    echo "" > /home/$USER/meusScripts/Conversa/mensagem1
    echo "" > /home/$USER/meusScripts/Conversa/historico
    
    for((loop=2;loop>1;loop++)); do
        sleep 10
        echo "$loop"
        read mensagem
        echo "$mensagem" > /home/$USER/meusScripts/Conversa/mensagem1
        
    done
