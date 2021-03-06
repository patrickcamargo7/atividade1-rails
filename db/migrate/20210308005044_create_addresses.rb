class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :number
      t.string :neighborhood
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
