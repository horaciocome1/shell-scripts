    #!/bin/sh
    
    #pc1 vale 5, pc2 vale 10, perguntar ao usuario se cada um esta ligado e apresentar a soma dos ligados
    
    echo "Bem vindo!"
    sleep 1
    echo
    echo "Escreva ligado se o PC1 estiver ligado ou desligado caso contrario"
    read pc1
    if [ "$pc1" == "ligado" -o "$pc1" == "desligado" ]; then
        sleep 1
        echo
        echo "Escreva ligado se o PC2 estiver ligado ou desligado caso contrario"
        read pc2
        if [ "$pc2" == "ligado" -o "$pc2" == "desligado" ]; then
            sleep 1
            if [ "$pc1" == "ligado" ]; then
                if [ "$pc2" == "ligado" ]; then
                    echo "15"
                    else
                        echo "5"
                fi
                else
                    if [ "$pc2" == "ligado" ]; then
                        echo "10"
                        else
                            echo "0"
                    fi
            fi
            else
                echo "Estado invalido!"
        fi
        else
            echo "Estado invalido!"
    fi
    sleep 2
    echo
    echo "Adeus!"
    
    exit
