# RUN with docker run --rm -it -v ${PWD}:/workdir:rw djangosca

FROM alpine:3.1

RUN apk add --update python python-dev py-pip build-base git
RUN pip install Django
RUN git clone https://bitbucket.org/jsthyer/djangosca.git /djangosca

WORKDIR /workdir

CMD ["python", "/djangosca/djangoSCA.py", "-r", "/djangosca/djangoSCA.rules", \
    "/workdir"]
