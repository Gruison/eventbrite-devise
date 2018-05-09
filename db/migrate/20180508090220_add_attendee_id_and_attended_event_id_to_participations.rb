class AddAttendeeIdAndAttendedEventIdToParticipations < ActiveRecord::Migration[5.2]
  def change
    add_column :participations, :attendee_id, :integer
    add_column :participations, :attended_event_id, :integer
  end
end
