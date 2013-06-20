class CreateJobboards < ActiveRecord::Migration
  def change
    create_table :jobboards do |t|

      t.timestamps
    end
  end
end
