class ChangeColumnInBandsVenuesTable < ActiveRecord::Migration
  def change
    drop_table(:bands_venues)
    create_table(:bands_venues) do |t|
      t.belongs_to :band, index: true
      t.belongs_to :venue, index: true
    end
  end
end
