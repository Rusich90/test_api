Создайте в корне .env файл и скопируйте в него содержимое .env-example

Команда для первого запуска (с миграциями и загрузкой дампа):
```
make first-up
```

Команда для остановки и удаления контейнеров:
```
make down
```

Команда для обычного запуска:
```
make up
```

Логи приложения:
```
make logs-app
```

После запуска можно просмотреть описания эндпоинтов и попробовать запросы в сваггере - http://localhost:8000/swagger/
Для авторизации нужно в свагере вставить номер телефона сотрудника, созданные номера дампом: 8-900-888-77-55, 8-800-999-77-66, 8-700-888-99-00

Админка доступна по адресу - http://localhost:8000/admin/
Логин: user
Пароль: 123456
