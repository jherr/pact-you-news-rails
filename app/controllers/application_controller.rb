class ApplicationController < ActionController::Base
  def hello
    ActionCable.server.broadcast 'messages',
      value: 10
    head :ok
  end
end
