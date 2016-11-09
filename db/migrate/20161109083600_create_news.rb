class CreateNews < ActiveRecord::Migration[5.0]
  def change
    create_table :news do |t|
      t.datetime :date
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
