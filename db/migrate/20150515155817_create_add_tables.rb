class CreateAddTables < ActiveRecord::Migration
  def change
    create_table(:bands) do |t|
      t.column(:name, :string)
    end
    create_table(:venues) do |t|
      t.column(:name, :string)
    end

    create_table(:bands_venues) do |t|
      t.belongs_to :bands, index: true
      t.belongs_to :venue_id, index: true
    end
  end
end
