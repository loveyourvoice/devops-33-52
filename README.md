1) создаю бакет, чтобы точно было уникальное имя, добавляю дату [bucket.tf](terraform%2Fbucket.tf)
![img_1.png](img%2Fimg_1.png)
2) Загружаю картинку в бакет(которую только что сгенерировал через Stable Defusion) [bucket.tf](terraform%2Fbucket.tf)
![img_2.png](img%2Fimg_2.png)
3) Создаю сеть и подсеть [main.tf](terraform%2Fmain.tf)
4) Создаю группу виртуальных машин из 3шт [groupvm.tf](terraform%2Fgroupvm.tf)
![img_3.png](img%2Fimg_3.png)
5) Балансировщик нагрузки [net_balancer.tf](terraform%2Fnet_balancer.tf)
6) Смотрю ip балансира
![img_4.png](img%2Fimg_4.png)
7) Пробую тормознуть две виртуалки, проверяю что сайт все равно работает
![img_5.png](img%2Fimg_5.png)
8) Вижу что healtcheck отработал, виртуалки запустились сами
![img_6.png](img%2Fimg_6.png)
9) Целевая группа [alb_target.tf](terraform%2Falb_target.tf)
10) Создаю Application Load Balancer [alb.tf](terraform%2Falb.tf)
10) Группа бекендов [alb_back.tf](terraform%2Falb_back.tf)
11) Маршруты [alb_route.tf](terraform%2Falb_route.tf)
12) Применяю все, прохожу по ip alb
![img.png](img%2Fimg.png)