# 1. Qual imagem base vamos usar? (O SO com Node já instalado)
FROM node:24-alpine

# 2. Em qual pasta a app vai morar dentro do container?
WORKDIR /app

# 3. Copia os arquivos de dependências e instala
COPY package*.json ./
RUN npm install

# 4. Copia o resto do código fonte
COPY . .

# 5. Qual porta a app usa?
EXPOSE 3000

# 6. Comando para ligar a aplicação
CMD ["npm", "start"]

