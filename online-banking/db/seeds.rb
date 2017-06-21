# Create users

def create_users
  User.create!(email: 'a@user.com', password: '12341234', password_confirmation: '12341234')
  User.create!(email: 'b@user.com', password: '12341234', password_confirmation: '12341234')
end

def create_money_transfers
  users = User.first(2)

  10.times.each do |t|
    if t % 2 == 0
      MoneyTransfer.create!(sender_id: users[0].id, receiver_id: users[1].id, amount: 100.0)
    else
      MoneyTransfer.create!(sender_id: users[1].id, receiver_id: users[0].id, amount: 100.0)
    end
  end
end

def main
  create_users
  create_money_transfers
end

main

