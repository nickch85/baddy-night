class Event < ActiveRecord::Base
  has_many :event_players
  has_and_belongs_to_many :players
  scope :latest, -> { order('event_date DESC')}

  def add_player(player)
    ep = self.event_players.new
    ep.player = player
    ep.arrived_at = Time.now
    ep.left_at = nil
    ep.save
  end
end
