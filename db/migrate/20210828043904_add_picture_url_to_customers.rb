class AddPictureUrlToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :picture_url, :string
    add_column :customers, :logo_url, :string
  end
end
