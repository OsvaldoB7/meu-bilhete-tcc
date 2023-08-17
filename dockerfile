# Utilize uma imagem Ruby. Pode alterar a versão para a desejada.
FROM ruby:3.1.3

# Instale as bibliotecas necessárias.
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Configure a pasta para a aplicação.
RUN mkdir /myapp
WORKDIR /myapp
#VOLUME [ "/home/osvaldo/Documentos/projetos" ]



# Copie o restante da aplicação para a imagem.

# Exponha a porta em que o Rails irá rodar.
EXPOSE 3000


