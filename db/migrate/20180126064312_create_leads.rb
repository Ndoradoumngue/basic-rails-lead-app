class CreateLeads < ActiveRecord::Migration[5.1]
  def change
    create_table :leads do |t|
      t.string :name
      t.string :email
      t.string :job_post
      t.string :company
      t.datetime :registered_on

      t.timestamps
    end
  end
end
