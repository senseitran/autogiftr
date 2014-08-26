class CreateOccaisions < ActiveRecord::Migration
  def change
    create_table :occaisions do |t|
      t.text :message
      t.string :name
      t.date :date
      t.string :occaision_type
      t.references :recipient, index: true

      t.timestamps
    end
  end
end
