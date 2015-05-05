class Grade < ActiveRecord::Base

  validates :name, presence: true

  scope :by_rank, -> { order('rank ASC') }

  has_many :players

  before_create :assign_rank

  def colour
    color = Digest::MD5.hexdigest(self.name)[0..5]
  end

  def assign_rank
    self.rank = Grade.order('rank DESC').first.rank + 1
  end
end
