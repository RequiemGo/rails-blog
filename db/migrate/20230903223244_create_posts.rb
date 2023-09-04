class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title_es
      t.string :title_en

      t.timestamps
    end
  end
end
