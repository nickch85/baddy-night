class Player < ActiveRecord::Base
  scope :by_name, -> { order('name ASC') }

  belongs_to :grade
  has_many :event_players
  has_and_belongs_to_many :events

  validates :name, :presence => true

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
