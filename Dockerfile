FROM ubuntu

ENV links https://github.com/samhoooo/shopping-cart/archive/refs/heads/main.zip
ENV name shopping-cart-main
RUN apt update -y  && apt upgrade -y && apt install npm unzip -y

ADD $links /home/master.zip

RUN cd /home && unzip master.zip && cd /home/$name && npm install

CMD cd /home/$name && npm start

 
