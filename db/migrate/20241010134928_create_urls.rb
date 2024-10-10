class CreateUrls < ActiveRecord::Migration[7.1]
  def change
    create_table :urls do |t|
      t.string :short_url
      t.string :real_url
      t.integer :clicks
      t.string :title
      t.timestamps
    end
  end
end
