class CreateDatabase < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string name
    end

    create_table :comments do |t|
      t.integer :post_id
      t.string :text
      t.timestamps
    end

    create_table :posts do |t|
      t.string :name
      t.integer :category_id
      t.string :description
      t.timestamps
    end
  end
end
