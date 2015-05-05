class CreateEventPlayersTable < ActiveRecord::Migration
  def change
    create_table :event_players do |t|
      t.belongs_to :event, index: true
      t.belongs_to :player, index: true
      t.datetime :arrived_at
      t.datetime :left_at
    end
  end
end
