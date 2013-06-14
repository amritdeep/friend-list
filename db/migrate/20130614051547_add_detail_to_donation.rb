class AddDetailToDonation < ActiveRecord::Migration
  def change
    add_column :donations, :name, :string
    add_column :donations, :amount, :string
  end
end
