class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string   :login
      t.string   :password
      t.string   :email
      t.string   :full_name
      t.date     :birth_date
      t.integer  :gender
      t.datetime :blocked_date

      t.timestamps
    end
  end
end
