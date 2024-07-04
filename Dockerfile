# Use a versão específica do node como base
FROM node:20.11.1

# Defina o diretório de trabalho dentro do container
WORKDIR /app

# Copie o conteúdo do diretório atual para o diretório de trabalho do container
COPY . .

# Instale as dependências usando yarn
RUN yarn

# Exponha a porta 8080 para acesso externo, se necessário
EXPOSE 8080

# Comando padrão para iniciar o servidor de desenvolvimento
CMD ["yarn", "start"]
