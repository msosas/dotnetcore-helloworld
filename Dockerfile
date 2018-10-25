FROM ubuntu:16.04
MAINTAINER Matias Sosa <matiassosas@gmail.com>

RUN apt update && apt install -y wget 

#Install dotnet
RUN wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb && dpkg -i packages-microsoft-prod.deb
RUN apt-get install -y apt-transport-https && apt-get update && apt-get install -y dotnet-sdk-2.1

COPY . /var/www/dotnetcore-helloworld/

EXPOSE 5000

WORKDIR /var/www/dotnetcore-helloworld/DotNetCoreHelloWorld

CMD ["dotnet","run"]
