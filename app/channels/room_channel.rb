class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    BoardMessage.create!(content: data['message'],board_user_id: 'current_account.id')
    #print "アカウントIDは",current_account.id
  end
end
