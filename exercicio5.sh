    #!/bin/sh
    
    # programa que testa 5 vezes se o usuario vai digitar a senha correcta 123
    
    echo "Seja bem vindo usuario. Mas antes introduza a senha"
    read senha
    if [ "$senha" == "123" ]; then
        sleep 2
        echo
        echo "Senha correcta"
    else
        tentativas=$"1" # devia ser 0 mas a primeira utilizei acima
        while [ $tentativas -lt 5 ]; do
            tentativas=$[$tentativas + 1]
            sleep 2
            echo
            echo "Tente novamente"
            read senha
            if [ "$senha" == "123" ]; then
                sleep 2
                echo
                echo "Senha correcta"
                exit
            elif [ $tentativas -eq 5 ]; then
                sleep 2
                echo
                echo "Excedeu o numero de tentativas!"
                exit
            fi
        done
    fi
    exit
