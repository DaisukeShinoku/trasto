import consumer from "./consumer"

// turbolinks の読み込みが終わった後にidを取得しないと，エラーが出ます。
document.addEventListener('turbolinks:load', () => {

  // js.erb 内で使用できるように変数を定義しておく
  window.messageContainer = document.getElementById('message-container')

  // 以下のプログラムが他のページで動作しないようにしておく
  if (messageContainer === null) {
      return
  }

  consumer.subscriptions.create("RoomChannel", {
      connected() {
      },

      disconnected() {
      },

      received(data) {
          // サーバー側から受け取ったHTMLを一番最後に加える
          messageContainer.insertAdjacentHTML('beforeend', data['message', 'oldest_message_id'])
      }
  })
  const documentElement = document.documentElement
  // js.erb 内でも使用できるように変数を決定
  window.messageContent = document.getElementById('message_content')
  // 一番下まで移動する関数。js.erb 内でも使用できるように変数を決定
  window.scrollToBottom = () => {
      window.scroll(0, documentElement.scrollHeight)
  }

  // 最初にページ一番下へ移動させる
  scrollToBottom()

    const messageButton = document.getElementById('message-button')

    // フォームに入力した際の動作
    messageContent.addEventListener('input', () => {
    changeLineCheck()
    })


    messageButton.addEventListener('click', () => {
    changeLineCount(1)

    })
    // フォームの最大行数を決定
    const maxLineCount = 5

    // 入力メッセージの行数を調べる関数
    const getLineCount = () => {
        return (messageContent.value + '\n').match(/\r?\n/g).length;
    }

    let lineCount = getLineCount()
    let newLineCount

    const changeLineCheck = () => {
        // 現在の入力行数を取得（ただし，最大の行数は maxLineCount とする）
        newLineCount = Math.min(getLineCount(), maxLineCount)
        // 以前の入力行数と異なる場合は変更する
        if (lineCount !== newLineCount) {
            changeLineCount(newLineCount)
        }
    }

    const changeLineCount = (newLineCount) => {
        // フォームの行数を変更
        messageContent.rows = lineCount = newLineCount
    }

    // ********** 以下を追加 **********
    let oldestMessageId
    // メッセージの追加読み込みの可否を決定する変数
    window.showAdditionally = true

    window.addEventListener('scroll', () => {
        if (documentElement.scrollTop === 0 && showAdditionally) {
            showAdditionally = false
            // 表示済みのメッセージの内，最も古いidを取得
            oldestMessageId = document.getElementsByClassName('message')[0].id.replace(/[^0-9]/g, '')
            // Ajax を利用してメッセージの追加読み込みリクエストを送る。最も古いメッセージidも送信しておく。
            $.ajax({
                type: 'GET',
                url: location.pathname + '/show_additionally',
                cache: false,
                data: {oldest_message_id: oldestMessageId, remote: true}
            })
            // var request = new XMLHttpRequest();
            // request.open('GET', location.pathname + '/show_additionally', true);
            // request.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded; charset=UTF-8');
            // request.sendData({oldest_message_id: oldestMessageId, remote: true});
        }
    }, {passive: true});
    // ********** 以上を追加 **********
})
