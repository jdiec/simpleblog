# class TestChannel < ApplicationCable::Channel
#   def subscribed
#     # stream_from "some_channel"
#   end

#   def unsubscribed
#     # Any cleanup needed when channel is unsubscribed
#   end
# end

class TestChannel < ApplicationCable::Channel
  def subscribed
    stream_from "test"
  end

  def receive(data)
    puts data["message"]
    ActionCable.server.broadcast("test", "ActionCable is connected")
  end
end
