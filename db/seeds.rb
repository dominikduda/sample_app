# frozen_string_literal: true

# create_table "users", force: :cascade do |t|
#   t.string "email", default: "", null: false
#   t.string "encrypted_password", default: "", null: false
#   t.string "reset_password_token"
#   t.datetime "reset_password_sent_at"
#   t.datetime "remember_created_at"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.index ["email"], name: "index_users_on_email", unique: true
#   t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
# end

begin
data = [
  %w[user1@example.com test1234],
  %w[user2@example.com test1234],
  %w[user3@example.com test1234],
  %w[user4@example.com test1234],
  %w[user5@example.com test1234],
  %w[user6@example.com test1234],
  %w[user7@example.com test1234],
  %w[user8@example.com test1234]
]

data.each do |user_data|
  user_data.each do |email, password|
    User.create(email: email, password: 'test1234')
    puts 'user created'
  end
end
end
