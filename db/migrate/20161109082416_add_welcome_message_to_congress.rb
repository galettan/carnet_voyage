class AddWelcomeMessageToCongress < ActiveRecord::Migration[5.0]
  def change
    add_column :congresses, :welcome_message, :text
  end
end
