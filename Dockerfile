##################################################
#  telegram-rss-reader                           #
#  Forked From santhoshtr/telegram-rss-reader    #
#  Dockerfile by John W                          #
#  2021-12-27 @ 0047 Pacific Time    7           #
##################################################
FROM python:3.7-slim
COPY ./auditor/ /app
WORKDIR /app/
RUN pip install -r /app/requirements.txt
RUN mkdir -p <redacted> && python3 /app/<redacted> || python3 <redacted>
EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD [ "svc_redacted.py" ]
