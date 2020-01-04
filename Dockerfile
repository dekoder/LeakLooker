FROM python:3-alpine

RUN apk add --update --no-cache git bash
WORKDIR /leaklooker
COPY . .
RUN pip3 install -r requirements.txt
ENTRYPOINT [ "python", "leaklooker.py" ]
CMD ["-h"]