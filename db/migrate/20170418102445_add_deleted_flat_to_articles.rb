class AddDeletedFlatToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :deleted_flag, :boolean, default: false, null: false
  end
end
