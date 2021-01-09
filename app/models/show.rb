class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def self.actors_list
    actors.each do |t|
      t.full_name
    end
  end  
end