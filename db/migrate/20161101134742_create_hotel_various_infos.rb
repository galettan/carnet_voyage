class CreateHotelVariousInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :hotel_various_infos do |t|
      t.string :title
      t.text :content
      t.belongs_to :hotel, foreign_key: true

      t.timestamps
    end
  end
end
