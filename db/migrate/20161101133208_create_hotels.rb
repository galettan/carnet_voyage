class CreateHotels < ActiveRecord::Migration[5.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :address
      t.string :postal_code
      t.string :city
      t.string :country
      t.string :phone_nbr
      t.string :check_in_time
      t.string :check_out_time
      t.belongs_to :congress, index: true

      t.timestamps
    end
  end
end
