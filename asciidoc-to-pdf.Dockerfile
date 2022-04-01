FROM asciidoctor/docker-asciidoctor:1.16
RUN gem install asciidoctor-lists
RUN apk add --update --no-cache python3 python3-dev py3-pip py3-numpy py3-numpy-dev gcc g++
RUN git clone https://github.com/Alwinator/asciidoctor-diagram /tmp/asciidoctor-diagram
RUN pip3 install --upgrade pip setuptools wheel
RUN pip3 install diagrams graphviz-py matplotlib
RUN addgroup docker-group && adduser -DH -G docker-group docker-user
RUN mkdir -p /work
RUN chown docker-user /work
USER docker-user
WORKDIR /work
RUN mkdir scripts
COPY scripts/* /work/scripts/
RUN sed -i 's/\r$//' /work/scripts/asciidoc-to-pdf.sh
CMD ["/bin/bash", "/work/scripts/asciidoc-to-pdf.sh"]
