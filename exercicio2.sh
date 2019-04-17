    #!/bin/sh
    
    # este scrip pergunta ao usuario que carro ele quer e retorna a respectiva classe
    
    echo
    echo "Bem vindo! Introduza o nome do carro que escolher"
    sleep 2
    
    echo
    echo "Temos:"
    echo "Ferrari"
    echo "Lamborghini"
    echo "Celta"
    echo "Palio"
    echo "Uno"
    echo
    
    read nomeCarro
    
    if [ -n "$nomeCarro" ]; then
        
        sleep 2
    
        if [ "$nomeCarro" == "Ferrari" -o "$nomeCarro" == "Lamborghini" ]; then
            echo "$nomeCarro - Classe A"
        fi
    
        if [ "$nomeCarro" == "Celta" ]; then
            echo "$nomeCarro - Classe B"
        fi
    
        if [ "$nomeCarro" == "Palio" -o "$nomeCarro" == "Uno" ]; then
            echo "$nomeCarro - Classe C"
        fi
        
    fi
    
    sleep 2
    
    echo
    echo "Adeus!"
    
    exit
