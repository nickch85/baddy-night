class Event < ActiveRecord::Base
  has_many :event_players
  has_many :players, through: :event_players
  scope :latest, -> { order('event_date DESC')}
  validates :event_date, :presence => true

  def description
    "#{name} (#{event_date})"
  end

  def add_players(player_ids)
    Event.transaction do
      player_ids.each do |pid|
        p = Player.find(pid)
        add_player(p)
      end
    end
  end

  def add_player(player)
    ep = self.event_players.new
    ep.player = player
    ep.arrived_at = Time.now
    ep.left_at = nil
    ep.save
  end
end
