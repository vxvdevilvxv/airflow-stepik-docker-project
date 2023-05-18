# Проект в рамках курса stepik.org - Apache Airflow 2.0 для аналитиков. 
### Суть проекта получении навыков по сборке docker-контейнера по следующим параметрам:

* Версия Apache Airflow - 1.10.14.
* БД для метаданных - postgres.
* Executor - Local Executor.
* SMTP отправка писем. 
* Поддержка аутентификации.
* Поднятие сервисов через docker-compose с дополнительным сервисом Adminer.


### Для развертки проекта необходимо клонировать репозиторий и выполнить команду: 
    > docker-compose up --build 

### Web-интерфейс для управления Apache Airflow будет доступен по адресу:
    > localhost:8080
    >> login: airflow
    >> password: airflow
### Web-интерфейс для управления Adminer будет доступен по адресу:
    > localhost:8081
    >> DB HOST - postgres:5432
    >> DB NAME - airflow
    >> DB LOGIN - postgres
    >> DB PASSWORD - postgres

#### PS. Все логины/пароли указаны для простоты доступа.
