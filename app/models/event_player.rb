class EventPlayer < ActiveRecord::Base
  scope :attendance_view_order, -> { joins(:player).order('event_players.left_at ASC, players.name ASC')}

  belongs_to :event
  belongs_to :player


end
