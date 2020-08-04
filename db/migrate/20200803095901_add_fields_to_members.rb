class AddFieldsToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :member_status, :bolean, default: true
    add_column :members, :name, :string
  end
end
