FROM rabbitmq:3.8.9-management

COPY rabbitmq.conf /etc/rabbitmq/rabbitmq.conf
COPY definitions.json /etc/definitions/definitions.json

RUN rabbitmq-plugins enable --offline rabbitmq_mqtt
