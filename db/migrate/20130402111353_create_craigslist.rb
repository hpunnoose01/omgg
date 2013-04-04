class CreateCraigslist < ActiveRecord::Migration
  def change

    create_table(:categories) do |category|
          category.string :name
          category.timestamps
    end

    create_table(:posts) do |post|
          post.string :subject, :description, :email, :key
          post.integer :price, :category_id
          post.timestamps

    end
  end



end
