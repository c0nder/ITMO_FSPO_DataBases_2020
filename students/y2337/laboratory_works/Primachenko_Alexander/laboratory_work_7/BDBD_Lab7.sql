/*Вывести Продукты и Фирмы их производящие*/
db.Birzha.find({}, {"product.firm.name": 1, "product.name": 1})

/*Вывести тех Брокеров, чей процент от прибыли меньше 50%*/
db.Birzha.find({"broker.percent": {$lt: 0.5}}, {"broker.name": 1, "broker.percent": 1})

/*Вывести партии, где Продукт стоит больше 10 ед., также имя Брокера, количество и конкретную цену этих товаров*/
db.Birzha.find({"price": {$gt: 10}}, {"product.name": 1, "broker.name": 1, "price": 1, "count": 1})

/*Вывести Продукты, стоящие в какой-либо партии больше 5, но меньше 10 единиц, а также всю информацию по Фирмам, производящим этот Продукт.*/
db.Birzha.find({"price": {$gt: 5, $lt: 10}}, {"product.name": 1, "price": 1, "product.firm": 1})