import consumer from "./consumer"

// turbolinksの読み込みが終わった後にidを取得
document.addEventListener('turbolinks:load', () => {

  window.messageContainer = document.getElementById('message-container')

  if (messageContainer === null) {
      return
  }

  consumer.subscriptions.create("RoomChannel", {
      connected() {
      },

      disconnected() {
      },

      received(data) {
          // HTMLを一番最後に加える
          messageContainer.insertAdjacentHTML('beforeend', data['message'])
      }
  })
  const documentElement = document.documentElement

  window.messageContent = document.getElementById('message_content')

  window.scrollToBottom = () => {
      window.scroll(0, documentElement.scrollHeight)
  }

  scrollToBottom()

    const messageButton = document.getElementById('message-button')

    messageContent.addEventListener('input', () => {
    changeLineCheck()
    })


    messageButton.addEventListener('click', () => {
    changeLineCount(1)

    })

    const maxLineCount = 5

    // 行数を調べる
    const getLineCount = () => {
        return (messageContent.value + '\n').match(/\r?\n/g).length;
    }

    let lineCount = getLineCount()
    let newLineCount

    const changeLineCheck = () => {

        newLineCount = Math.min(getLineCount(), maxLineCount)

        if (lineCount !== newLineCount) {
            changeLineCount(newLineCount)
        }
    }

    const changeLineCount = (newLineCount) => {

        messageContent.rows = lineCount = newLineCount
    }


    let oldestMessageId

    window.showAdditionally = true

    window.addEventListener('scroll', () => {
        if (documentElement.scrollTop === 0 && showAdditionally) {
            showAdditionally = false
            // 最も古いidを取得
            oldestMessageId = document.getElementsByClassName('message')[0].id.replace(/[^0-9]/g, '')
            $.ajax({
                type: 'GET',
                url: location.pathname + '/show_additionally',
                cache: false,
                data: {oldest_message_id: oldestMessageId, remote: true}
            })

        }
    }, {passive: true});

})
