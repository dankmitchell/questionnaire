class AddFieldsToForms < ActiveRecord::Migration
  def change
    add_column :forms, :comment, :text
    add_column :forms, :rating, :integer
    add_column :forms, :would_recommend, :boolean
  end
end
