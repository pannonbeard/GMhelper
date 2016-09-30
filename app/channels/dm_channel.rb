# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class DmChannel < ApplicationCable::Channel
  def self.broadcast(game, character)
    broadcast_to game, character
  end

  def subscribed
    # stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
