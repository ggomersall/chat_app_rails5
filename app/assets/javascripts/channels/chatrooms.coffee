App.chatrooms = App.cable.subscriptions.create "ChatroomsChannel",
  connected: ->

  disconnected: ->

  received: (data) ->
    # this will push the message to the correct ChatroomsChannel
    active_chatroom = $("[data-behaviour='messages'][data-chatroom-id='#{data.chatroom_id}']")
    if active_chatroom.length > 0
      active_chatroom.append(data.message)
    else
      $("[data-behaviour='chatroom-link'][data-chatroom-id='#{data.chatroom_id}']").css('font-weight','bold') ''
