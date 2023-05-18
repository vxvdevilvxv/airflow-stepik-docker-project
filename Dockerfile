# Возьмем за основу образ 
FROM python:3.7

# Airflow глобальные переменные
ARG AIRFLOW_VERSION=1.10.14
ARG AIRFLOW_USER_HOME=/usr/local/airflow
ENV AIRFLOW_HOME=${AIRFLOW_USER_HOME}

COPY requirements.txt ${AIRFLOW_HOME}/requirements.txt
RUN python -m pip install --upgrade pip
RUN pip install -r ${AIRFLOW_HOME}/requirements.txt

RUN mkdir /project

COPY script/ /project/scripts/
COPY config/airflow.cfg ${AIRFLOW_HOME}/airflow.cfg

# Доступы для скрипта
RUN chmod +x /project/scripts/init.sh

# Запускаем sh скрипт
ENTRYPOINT ["/project/scripts/init.sh"]


