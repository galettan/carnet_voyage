class CreateCongresses < ActiveRecord::Migration[5.0]
  def change
    create_table :congresses do |t|
      t.string :name
      t.string :subtitle
      t.string :place
      t.datetime :date_from
      t.datetime :date_to
      t.string :host_company
      t.string :host_logo_url

      t.timestamps
    end
  end
end
