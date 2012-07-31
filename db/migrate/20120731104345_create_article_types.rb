class CreateArticleTypes < ActiveRecord::Migration
  def change
    create_table :article_types do |t|
      t.string :title
      t.boolean :blogable

      t.timestamps
    end
  end
end
