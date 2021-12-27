###############################################
#  telegram-rss-reader                        #
#  Forked From santhoshtr/telegram-rss-reader #
#  Dockerfile by Cyra W                       #
#  2021-12-27 @ 0047 Pacific Time             #
###############################################
FROM python:3.7-slim
COPY ./app/ /app
WORKDIR /app/
RUN pip install -r /app/requirements.txt
RUN python3 svc_create_db.py
ENTRYPOINT [ "python" ]
CMD [ "bot.py" ]
