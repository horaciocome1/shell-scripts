    #!/bin/sh
    
    if [ "$1" == "" ]; then
        sleep 2
        exit
    fi
    echo "##########################"
    echo "Bem vindo" $1
    echo "##########################"
    echo
    echo "Digite o nome de sua cidade"
    read cidade
    echo
    echo "Digite seu ultimo nome"
    read sobrenome
    cadastro(){
        echo
        echo "Digite seu numero de BI"
        read bi
        echo "Cadastro finalizado com sucesso"
        echo "######################"
        entrada
    }
    entrada(){
        echo
        echo "Digite seu numero de BI para entrar"
        read bi2
        sleep 3
        if [ "$bi" == "$bi2" ]; then 
            echo
            echo "Entrou no sistema!" $1
            sleep 2
            exit
        else
            echo
            echo "Numero de BI incorrecto!"
            sleep 2
            entrada
        fi
    }
    cadastro
