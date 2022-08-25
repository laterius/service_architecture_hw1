# service_architecture_hw1

#make
make build - сборка образа
make push - отправка образа в репо
make docker-start - запуск докер контейнера
make docker-stop - остановка контейнера
make k8s-apply - применение всех манифестов
make k8s-delete - удаление всех ресурсов развернутых из манифеста
make newman - запуск прогона коллекции Postman

#calls by curl
curl http://arch.homework/health
curl http://arch.homework/probe/live
curl http://arch.homework/probe/ready
curl http://arch.homework/health
