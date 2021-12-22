class CreateDashboards < ActiveRecord::Migration[6.1]
  def change
    create_table :dashboards, id: :uuid do |t|
      t.timestamps
    end
  end
end
