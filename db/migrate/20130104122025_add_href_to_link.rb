class AddHrefToLink < ActiveRecord::Migration
  def change
    add_column :links, :href, :text
  end
end
