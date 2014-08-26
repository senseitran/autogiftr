class CreateGiftOccaisions < ActiveRecord::Migration
  def change
    create_table :gift_occaisions do |t|
      t.references :gift, index: true
      t.references :occaision, index: true

      t.timestamps
    end
  end
end
