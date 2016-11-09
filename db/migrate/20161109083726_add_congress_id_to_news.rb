class AddCongressIdToNews < ActiveRecord::Migration[5.0]
  def change
    add_reference :news, :congress, foreign_key: true
  end
end
