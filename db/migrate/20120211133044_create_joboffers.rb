class CreateJoboffers < ActiveRecord::Migration
  def change
    create_table :joboffers do |t|
      t.string :title
      t.string :link

      t.timestamps
    end
  end
end
