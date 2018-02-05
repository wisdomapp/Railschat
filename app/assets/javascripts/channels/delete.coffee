App.delete = App.cable.subscriptions.create "DeleteChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    id = "#" + data['id']
    $(id).remove()

  delete: (id)->
    @perform 'delete',id: id

  $(document).on 'click', '.delete-btn', (event) ->
   App.delete.delete event.target.id
