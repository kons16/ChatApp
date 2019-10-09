class RoomChannel < ApplicationCable::Channel
  # クライアントと接続されたとき
  def subscribed
    stream_from "room_channel"
  end

  # クライアントと接続が解除されたとき
  def unsubscribed
  end

  def speak(data)
    Message.create!({context: data['message'], user_id: current_user.id, room_id: current_user.chat_room})
  end

  # 入力中
  def now_input()
  end
end
