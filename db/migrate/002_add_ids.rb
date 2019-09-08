class AddIds < ActiveRecord::Migration[5.0]

  def change
    add_column :listings, :host_id, :integer
    add_column :neighborhoods, :city_id, :integer
    add_column :reservations, :guest_id, :integer
    add_column :reservations, :listing_id, :integer
    add_column :reviews, :guest_id, :integer
    add_column :reviews, :reservation_id, :integer
    add_column :users, :listing_id, :integer
  end


end
