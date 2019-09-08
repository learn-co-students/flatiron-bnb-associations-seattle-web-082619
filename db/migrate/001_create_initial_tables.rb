class CreateInitialTables < ActiveRecord::Migration[5.0]

  def change
    create_table :cities do |t|
      t.string :name
    end

    create_table :listings do |t|
      t.string :address
      t.string :listing_type
      t.string :title
      t.string :description
      t.decimal :price
    end

    create_table :neighborhoods do |t|
      t.string :name
    end

    create_table :reservations do |t|
      t.datetime :checkin
      t.datetime :checkout
    end

    create_table :reviews do |t|
      t.string :description
      t.integer :rating
    end

    create_table :users do |t|
      t.string :name
    end

  end

end
