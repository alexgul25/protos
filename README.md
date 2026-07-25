# :scroll: Protos

Публичный репозиторий для проекта **Date Wishlist Hub**.  

Ссылка на центральный репозиторий проекта: **[Date Wishlist Hub Deploy](https://github.com/alexgul25/date-wishlist-hub-deploy)**

Ссылка на канбан-доску проекта: **[Date Wishlist Hub - Development](https://github.com/users/alexgul25/projects/2)**

*Стек технологий репозитория:* `Go`  `Protobuf`

## :bulb: Описание репозитория

**Protos** - единый источник правды для gRPC-контрактов. Содержит `.proto`-файлы и сгенерированный по ним код, который импортируют остальные микросервисы.

:globe_with_meridians: [Gateway Service](https://github.com/alexgul25/gateway-svc) - gRPC-клиенты для **Place Service** и **User Service**.

:round_pushpin: [Place Service](https://github.com/alexgul25/place-svc) - соответствующий gRPC-сервер.

:busts_in_silhouette: [User Service](https://github.com/alexgul25/user-svc) - соответствующий gRPC-сервер.

:bell: **[Notify Service](https://github.com/alexgul25/notify-svc)** - gRPC-клиент для **User Service**.
