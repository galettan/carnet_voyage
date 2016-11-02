class AddColorAndTemplateToCongresses < ActiveRecord::Migration[5.0]
  def change
    add_column :congresses, :color, :string
    add_column :congresses, :template_id, :integer
  end
end
