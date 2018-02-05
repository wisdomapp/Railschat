App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#messages').append data['message']
    #alert(data['message'])

  speak:(message,id) ->
    #alert(message)
    @perform('speak',{message: message,id: id})


