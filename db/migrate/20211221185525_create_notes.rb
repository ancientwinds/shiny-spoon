class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.belongs_to :dashboard, index: true
      t.jsonb :content, null: false, default: {}
      t.timestamps
    end
  end
end
