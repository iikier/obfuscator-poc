# Estágio 1: Build da Aplicação
# Usamos uma imagem Node.js para instalar dependências e ofuscar o código
FROM node:18-alpine AS builder

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos de definição do projeto e instala as dependências
# Usar `npm ci` é mais rápido e seguro para builds automatizados
COPY package*.json ./
RUN npm ci

# Copia o restante dos arquivos da aplicação
COPY . .

# Executa o script de ofuscação para gerar os arquivos em /app/dist
RUN npm run obfuscate


# Estágio 2: Servidor Web
# Usamos uma imagem Nginx leve para servir os arquivos estáticos
FROM nginx:stable-alpine

# Copia os arquivos de build (HTML e a pasta dist) do estágio 'builder' 
# para o diretório padrão do Nginx onde ele serve os arquivos
COPY --from=builder /app/index.html /usr/share/nginx/html/index.html
COPY --from=builder /app/dist/ /usr/share/nginx/html/dist/

# Expõe a porta 80, que é a porta padrão do Nginx
EXPOSE 80

# Comando para iniciar o Nginx e manter o container em execução
CMD ["nginx", "-g", "daemon off;"] 