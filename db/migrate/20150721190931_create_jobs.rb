class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :position
      t.string :city
      t.string :contact

      t.timestamps
    end
  end
end
