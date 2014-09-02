class AddSentToOccaision < ActiveRecord::Migration
  def change
    add_column :occaisions, :sent, :boolean
  end
end
