class CreateJobBoards < ActiveRecord::Migration
  def change
    create_table :job_boards do |t|
      t.string :JobTitle
      t.string :JobDesc
      t.string :PostedDate
      t.string :FullDesc
      t.string :CompanyLogo
      t.string :CompanyName
      t.string :Location

      t.timestamps
    end
  end
end
