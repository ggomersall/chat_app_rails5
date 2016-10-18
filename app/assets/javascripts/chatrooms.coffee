$(document).on "turbolinks:load", ->
  # this function below allows us to submit the form when we
  # press the return key
  $("#new_message").on "keypress", (e) ->
    if e && e.keyCode == 13
      e.preventDefault()
      $(this).submit()

  $("#new_message").on "submit", (e) ->
    e.preventDefault()
    chatroom_id = $("[data-behaviour='messages']").data("chatroom-id")
    body        = $("#message_body")

    App.chatrooms.send_message(chatroom_id, body.val())
