class AddColumnsToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :title, :string
    add_column :posts, :body, :text
    add_reference :posts, :user, foreign_key: true
  end
end
