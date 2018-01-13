Product.seed(:id,
  {id: 0, name: "Apple Magic Mouse 2 белый", photo: "http://gsmking.ru/5915-tm_thickbox_default/besprovodnaya-mysh-apple-magic-mouse-2-white-bluetooth-mla02.jpg", description: "Беспроводная мышь Apple Magic Mouse 2 отвечает всем современным требованиям.", available: 55},
  {id: 1, name: 'Samsung SM-J330F Galaxy J3 16 ГБ синий', photo: 'https://c.dns-shop.ru/thumb/st4/fit/750/1000/f0e11da2f2b940f6696130071ceb04a9/2b7e2de0de5718166ca38beaab79d78cdc69ad0cf265cb58c001fb40ef5f5a30.jpg', description: 'Samsung SM-J330F Galaxy J3 – высокопроизводительный смартфон, который может похвастаться демократичной ценой. Корпус аппарата исполнен из материала повышенной прочности.', available: 55},
)

CategoryProduct.seed(:id,
  {id: 0, category_id: 0, product_id: 0},
  {id: 1, category_id: 1, product_id: 1},
  {id: 2, category_id: 3, product_id: 1}
)
