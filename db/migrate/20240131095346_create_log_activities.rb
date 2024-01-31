class CreateLogActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :log_activities do |t|
      t.string :text

      t.timestamps
    end
  end
end
