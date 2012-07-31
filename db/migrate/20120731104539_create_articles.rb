class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :article_type_id
      t.string :title

      t.timestamps
    end
  end
end
