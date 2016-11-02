class CreateAgendaEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :agenda_events do |t|
      t.datetime :date
      t.string :time
      t.text :details
      t.belongs_to :congress, foreign_key: true

      t.timestamps
    end
  end
end
