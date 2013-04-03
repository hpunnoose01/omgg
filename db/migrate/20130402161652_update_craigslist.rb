class UpdateCraigslist < ActiveRecord::Migration

  def up
    add_column :posts, :key, :string, :default => (0...8).map{(65+rand(26)).chr}.join
  end

end
