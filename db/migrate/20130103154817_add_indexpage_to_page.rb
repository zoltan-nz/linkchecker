class AddIndexpageToPage < ActiveRecord::Migration
  def change
    add_column :pages, :indexpage, :boolean
  end
end
