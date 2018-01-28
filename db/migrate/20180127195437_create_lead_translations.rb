class CreateLeadTranslations < ActiveRecord::Migration[5.1]
  def self.up
  	Lead.create_translation_table!({
  		:job_post => :string
  		},
  		{
  			:migrate_data => true
  		})
  end

  def self.down
  	Lead.drop_translation_table! migrate_data: true
  	
  end
end



