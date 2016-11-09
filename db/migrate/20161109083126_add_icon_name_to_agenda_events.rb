class AddIconNameToAgendaEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :agenda_events, :icon, :string
  end
end
