class CreateCongressInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :congress_infos do |t|
      t.string :title
      t.text :content
      t.string :color
      t.integer :position
      t.belongs_to :congress, foreign_key: true

      t.timestamps
    end
  end
end
