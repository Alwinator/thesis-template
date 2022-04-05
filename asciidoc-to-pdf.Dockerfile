FROM asciidoctor/docker-asciidoctor:1.16
RUN gem install asciidoctor-lists
RUN addgroup docker-group && adduser -DH -G docker-group docker-user
RUN mkdir -p /work
RUN chown docker-user /work
USER docker-user
WORKDIR /work
RUN mkdir scripts
COPY scripts/* /work/scripts/
RUN sed -i 's/\r$//' /work/scripts/asciidoc-to-pdf.sh
CMD ["/bin/bash", "/work/scripts/asciidoc-to-pdf.sh"]
