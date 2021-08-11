class AddWebpageurlToAccess < ActiveRecord::Migration[6.1]
  def change
    add_column :accesses, :webpage_url, :string
  end
end
