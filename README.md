<img width="1424" alt="trasto_top" src="https://user-images.githubusercontent.com/62245694/90328565-3d253500-dfd8-11ea-884d-a7cc25f13e58.png">

# trasto
## あなただけのゲストハウスの物語を語ろう

ご覧いただきありがとうございます。
こちらは就職活動のためポートフォリオとして作成したSNS Web アプリケーションです。
(4月15日学習開始 / 7月15日公開)
<br>
サイトへはこちらから(公開停止しました)
<br>

"travel story"、略してtrasto。このtrastoという言葉はスペイン語で「役に立たないオンボロ」という意味。
ネガティブな響きにも聞こえますが、あなたがゲストハウスでの出来事を記録した日記のような、なんてことない体験談も、そこに行ったことのない誰かにとってはとても役に立つ情報になるはずというメッセージを込めて名付けました。

## なぜtrastoを作ったか

trastoは全国のゲストハウスに関する情報共有や、ゲストハウス好きのユーザー同士の交流を目的としたSNSサイトです。
現状、国内ゲストハウスの情報まとめサイトはいくつかありますが、SNS形式のものは存在しません。ユーザーと一緒に作っていくサイトがあれば、よりリアルなゲストハウス情報を発信できると考えました。

## 技術面
### 言語・環境等

- RubyonRails(6.0.3.2)
- Ruby(2.7.1)
- javascript
- jQuery
- Vagrant
- AWS(EC2 / EIP / RDS / Certificate Manager /S3)
- MySQL(8.0.20)

### 使用した技術

- Bulma(CSSフレームワーク)
- Rspec(テストフレームワーク)
- kaminari(ページネーション)
- carrierwave(画像投稿機能)

## スクリーンショット

### ログイン機能(Devise等のライブラリは不使用)

![traso_login](https://user-images.githubusercontent.com/62245694/90328415-3c3fd380-dfd7-11ea-8f32-eb2188b49915.jpeg)

### ActionMailerを利用したメール認証およびパスワードリセット

![traso_mailer1](https://user-images.githubusercontent.com/62245694/90327954-6a231900-dfd3-11ea-9c38-bcc876ab1aa3.jpeg)


### ActionCableを利用したチャット機能

![trasto-ac](https://user-images.githubusercontent.com/62245694/90326172-24108a00-dfc0-11ea-995e-6d93948c5876.gif)


### ルーティングをネストし、各ゲストハウス別に記事を投稿できる設計で実装

![traso_vs](https://user-images.githubusercontent.com/62245694/90331496-cf850300-dfef-11ea-9fca-9ddbdd9942ce.gif)



## 設計書

### ER図

https://drive.google.com/file/d/17yoAxT9jRp7GEhbl4oK1InPRb3PNv0Ma/view?usp=sharing

### データベース定義書

https://drive.google.com/file/d/17e0RIeYr3ggOAGpvfDQd_bw7hTbPTF5c/view?usp=sharing


### AWS構成図

https://drive.google.com/file/d/15VwWOM_ZZPEgXyYfzKHKTM1296OidGTl/view?usp=sharing
