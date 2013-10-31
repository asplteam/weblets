class AddFieldsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :sport_id, :integer
  	add_column :users, :state_id, :integer
  	add_column :users, :position_id, :integer
  	add_column :users, :college_id, :integer
  end
end
