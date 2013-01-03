class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :page_id
      t.string :anchortext
      t.boolean :crawled
      t.boolean :outbound
      t.integer :targetpageid

      t.timestamps
    end
  end
end
