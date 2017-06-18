class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.string :subject
      t.text :message

      t.timestamps null: false
    end
  end
end
