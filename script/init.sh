#!/bin/bash
airflow initdb
sleep 10
airflow users create \
    --username airflow \
    --firstname Airflow \
    --lastname Apache \
    --role Admin \
    --email airflow@example.com \
    --password airflow
sleep 5
airflow webserver  & airflow scheduler
