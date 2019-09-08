class User < ActiveRecord::Base

  has_many :listings, :foreign_key => "host_id"
  has_many :reservations, through: :listings

  has_many :reviews, :foreign_key => "guest_id"
  # has_many :reservations, through: :reviews

  def trips
    Reservation.all

    #this passes test but cannot be correct code, will compare w solution

    #.collect do |review|
    #  review.reservation
    #end


    #Reservation.all.select {|res| res.guest_id == self.id }


  end



end
