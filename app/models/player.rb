class Player < ActiveRecord::Base
  scope :by_last_name, -> { order('last_name ASC') }

  belongs_to :grade
  has_many :event_players
  has_many :events, through: :event_players

  validates :first_name, :presence => true
  validates :gender, :presence => true

  GENDER_OPTIONS = [["Male", "M"], ["Female", "F"]]
  MEMBERSHIP_TYPES = ["Casual", "Full Member", "Affiliate"]

  def self.search(term)
    if term
     where(['first_name LIKE ? OR last_name LIKE ? OR email LIKE ?', "#{term}%", "#{term}%", "#{term}%"])
    else
      scoped
    end
  end

  def full_name(sep=" ")
    [first_name, last_name].join(sep)
  end

  def event_player_for(e)
    self.event_players.where('event_id = ?', e.id).first
  end

  def has_left_event?(e)
    self.event_players.where('event_id = ?', e.id).first.left_at.present?
  end

  def country_name
    country = ISO3166::Country[self.country_code]
    country.translations[I18n.locale.to_s] || country.name
  end

  def grade_colour
    self.grade ? grade.colour : '7D7D7D'
  end

end
