class AddCompanyFieldsToForms < ActiveRecord::Migration
  def change
    add_column :forms, :company, :text
    add_column :forms, :job_title, :text
  end
end
