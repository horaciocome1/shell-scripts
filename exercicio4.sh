    #!/bin/sh
    
    #este script controla os comandos que eu vou deixando numa pasta e os executa, bom para me comunicar remotamente
    
    
    echo "" > /home/$USER/meusScripts/exercicio4/comando
    echo "" > /home/$USER/meusScripts/exercicio4/aviso
    for ((loop=2;loop>1;loop++)); do
        sleep 60
        echo "$loop"
        comando=$(cat /home/$USER/meusScripts/exercicio4/comando)
        if [ "$comando" == "vivo?" ]; then
            echo "Sim,vivo. Esperando o comando, loop $loop" >> /home/$USER/meusScripts/exercicio4/aviso
            comando=$""
            echo "" > /home/$USER/meusScripts/exercicio4/comando
        fi
        if [ "$comando" == "descanse" ]; then
            echo "" > /home/$USER/meusScripts/exercicio4/comando
            exit
        fi
        if [ -n "$comando" ]; then
            $comando&
            echo "" > /home/$USER/meusScripts/exercicio4/comando
            echo "Executei " $comando "loop $loop" >> /home/$USER/meusScripts/exercicio4/aviso
        fi
    done
