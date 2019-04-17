    #!/bin/sh
    
    echo "Digite o numero a ser processado"
    read numero
    for ((loop=0;loop<3;loop++)); do
        sleep 2
        echo
        case $loop in
        0)
            echo "Rodada 1 -" $numero "multiplicado por 10 da" $(($numero * 10));;
        1)
            echo "Rodada 2 -" $numero "multiplicado por 10 da" $(($numero * 20));;
        2)
            echo "Rodada 3 -" $numero "multiplicado por 10 da" $(($numero * 30));;
        esac
    done
    sleep 2
    exit
