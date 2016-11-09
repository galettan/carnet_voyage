class RenameNewsTableToBreakingInfo < ActiveRecord::Migration[5.0]
  def change
    rename_table :news, :breaking_infos
  end
end
