class VenueIdToBand < ActiveRecord::Migration
  def change
  	add_reference :bands, :venue, index: true, foreign_key: true
  end
end
