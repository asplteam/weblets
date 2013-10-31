class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
      t.text :state_code

      t.timestamps
    end
  end
end
