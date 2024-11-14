
#!/bin/bash
ps aux
cd
echo "Escolha 1 nome para o ficheiro: "
read ficheiro

ps aux > "$ficheiro.txt"