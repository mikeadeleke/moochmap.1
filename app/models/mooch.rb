class Mooch < ActiveRecord::Base
 geocoded_by :address,
    :latitude  => :fetched_latitude,  # this will be overridden by the below
    :longitude => :fetched_longitude  # same here

 reverse_geocoded_by :latitude, :longitude
end
