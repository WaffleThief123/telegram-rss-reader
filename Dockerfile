##################################################
#  telegram-rss-reader                           #
#  Forked From santhoshtr/telegram-rss-reader    #
#  Dockerfile by John W                          #
#  2021-12-27 @ 0047 Pacific Time    7           #
##################################################
FROM python:3.7-slim
COPY ./app/ /app
WORKDIR /app/
RUN pip install -r /app/requirements.txt
RUN python3 svc_create_db.py
RUN python3 /app/bot.py || python3 
ENTRYPOINT [ "python" ]
CMD [ "bot.py" ]
