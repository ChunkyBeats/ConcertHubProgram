class Venue < ActiveRecord::Base
  has_and_belongs_to_many(:bands)
  validates(:name, {:presence => true})
  validates :name, uniqueness: true

  before_save(:formatting)
  before_update(:formatting)

  private
    def formatting
      # self.name=(name.capitalize!)
      temp=self.name.split.each do |word|
        word.capitalize!
      end
      self.name = temp.join(" ")
    end

end
