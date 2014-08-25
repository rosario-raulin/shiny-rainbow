class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.date :dob
      t.integer :gender
      t.string :faculty
      t.string :lang1
      t.string :lang2
      t.string :lang3
      t.text :remarks
      t.integer :max_buddies
      t.integer :training
      t.integer :status

      t.timestamps
    end
  end
end
