class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :page_id
      t.string :anchortext
      t.string :url
      t.boolean :outbound
      t.boolean :crawled
      t.integer :targetpageid

      t.timestamps
    end
  end
end
