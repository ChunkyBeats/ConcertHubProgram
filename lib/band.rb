class Band < ActiveRecord::Base
  has_and_belongs_to_many(:venues)
  validates(:name, {:presence => true})
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
