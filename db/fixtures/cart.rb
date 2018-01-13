Cart.seed(:id,
  {id: 0, user_id: 0}
)

CartProduct.seed(:id,
  {id: 0, cart_id: 0, product_id: 0, quantity: 5, put_date: '13.01.2018'},
  {id: 1, cart_id: 0, product_id: 1, quantity: 10, put_date: '13.01.2018', purchase_date: '13.01.2018'}
)