class Beer < ActiveRecord::Base
  include RatingAverage

  belongs_to :brewery
  has_many :ratings, dependent: :destroy
  validates :name, presence: true

  def to_s
    "#{name} #{brewery.name}"
  end

  def average
  	return 0 if ratings.empty?
    ratings.map{ |r| r.score }.sum / ratings.count.to_f
  end
end
