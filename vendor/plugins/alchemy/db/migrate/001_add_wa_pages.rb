class AddWaPages < ActiveRecord::Migration
  def self.up
    create_table :wa_pages do |t|
      t.column :name, :string
      t.column :urlname, :string
      t.column :title, :string
      t.column :lft, :integer
      t.column :rgt, :integer
      t.column :parent_id, :integer
      t.column :public, :boolean
      t.column :visible, :boolean
    end
  end

  def self.down
    drop_table :wa_pages
  end
end
