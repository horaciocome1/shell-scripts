    #!/bin/sh
    
    echo
    echo "Introduza o nome de usuario"
    read usuario
    echo
    
    echo "Seja bem vindo $usuario"
    echo
    
    sleep 2
    
    echo "Por favor digite a opcao do turno desejado"
    echo
    
    echo "1 - Manha"
    echo "2 - Tarde"
    echo "3 - Noite"
    echo
    
    read turno
    echo
          
    if [ $turno == 1 ]; then
        echo "Apenas a doutora Anilza atende nesse turno"
    fi
    
    if [ $turno == 2 ]; then
        echo "Apenas a doutora Cynthia atende nesse turno"
    fi
    
    if [ $turno == 3 ]; then
        echo "Apenas o doutor Noa atende nesse turno"
    fi
    
    sleep 2
    echo
    
    echo "Sua consulta foi marcada"
    sleep 4
    
    exit
