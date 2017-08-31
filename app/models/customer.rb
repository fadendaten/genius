class Customer < ActiveRecord::Base
  belongs_to :country
  belongs_to :language
  belongs_to :gender


end
