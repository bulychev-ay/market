Price.seed(:id,
  {id: 0, price: '100', currency_id: 0},
  {id: 1, price: '200', currency_id: 2}
)

PriceProduct.seed(:id,
  {id: 0, product_id: 0, price_id: 0, start_date: '01.01.2018'},
  {id: 1, product_id: 1, price_id: 1, start_date: '01.01.2018'}
)