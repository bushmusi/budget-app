user1 = User.create(name: "Admin user", email: "admin@admin.com", password: "123456", password_confirmation: "123456")
user2 = User.create(name: 'Guest User', email: 'guest@guest.guest', password: '123456', password_confirmation: '123456')

payment1 = Payment.create(name: 'Salary', amount: 89, user_id: user1.id)
payment2 = Payment.create(name: 'Revenu', amount: 998, user: user1)
payment3 = Payment.create(name: 'Gift', amount: 93, user: user1)
payment4 = Payment.create(name: 'Payemnt', amount: 9990, user: user2)

category1 = Category.create(name: 'As beza', icon: 'fa fa-balance-scale', user: user1)
category2 = Category.create(name: 'Make up', icon: 'fa fa-heart-o', user: user1)
category3 = Category.create(name: 'Kids', icon: 'fa fa-cc-paypal', user: user1)
category4 = Category.create(name: 'Transport', icon: 'fa fa-car', user: user2)

payment_category1 = CategoryPayment.create(payment: payment1, category: category1)
payment_category2 = CategoryPayment.create(payment: payment2, category: category2)
payment_category3 = CategoryPayment.create(payment: payment3, category: category3)
payment_category4 = CategoryPayment.create(payment: payment4, category: category4)
