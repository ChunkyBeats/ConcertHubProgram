class Band < ActiveRecord::Base
  has_and_belongs_to_many(:venues)
  validates(:name, {:presence => true})
  before_save(:formatting)

  private
    def formatting
      self.name=(name.capitalize!)
    end

end
