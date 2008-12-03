class PongHandler < Lokii::Handler
  def process
    Lokii::Logger.debug "Processing message with the pong handler"
    reply("pong") and complete if message.text.downcase == "ping"
  end
end