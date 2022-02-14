FROM sandy1709/catuserbot:alpine

#clonning repo 
RUN git clone https://github.com/BeingMighty/MightyXBotSpam.git /root/MightyXSpam
#working directory 
WORKDIR /root/MightyXSpam

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/MightyXSpam/bin:$PATH"

CMD ["python3","-m","MightyXSpam"]
