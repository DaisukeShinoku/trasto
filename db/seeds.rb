# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
  email: 'admin@admin.com',
  password: '111111',
  password_confirmation: '111111'
)

User.create!(
  account_name: 'trasto',
  display_name: '公式アカウント',
  email: 'trasto@trasto.com',
  password: '111111',
  password_confirmation: '111111',
  introduction: 'お前が一人箱根学園のジャージと歴史、プライドを背負いゴールに向けて走る状態になったのならその時は自由に走れ。チームのことは全て忘れていい',
  avatar: open("#{Rails.root}/db/fixtures/trasto.png"),
  admin: true
)

User.create!(
  account_name: 'user1',
  display_name: '東堂尽八',
  email: '111@user.com',
  password: '111111',
  password_confirmation: '111111',
  introduction: 'お前が一人箱根学園のジャージと歴史、プライドを背負いゴールに向けて走る状態になったのならその時は自由に走れ。チームのことは全て忘れていい',
  avatar: open("#{Rails.root}/db/fixtures/user1.jpg")
)

User.create!(
  account_name: 'user2',
  display_name: '石垣光太郎',
  email: '222@user.com',
  password: '222222',
  password_confirmation: '222222',
  introduction: '道は違えど同じや、ゴールへ向かう気持ちは同じや御堂筋！見ろ総北、箱根学園！形は少しいびつかもしれんけどこれが・・・俺たち京都伏見というチームや',
  avatar: open("#{Rails.root}/db/fixtures/user2.jpg")
)

User.create!(
  account_name: 'user3',
  display_name: '荒北靖友',
  email: '333@user.com',
  password: '333333',
  password_confirmation: '333333',
  introduction: 'ジャマなんだよ！！ワーギャー騒ぐなっつんだよ！！ガンバレじゃねーよおめーががんばれボケナスが！！傍観者が！！俺はここまで一人できた。たった一人の力でこの大舞台まで登ってきたんだよ！！見てるだけのヤツにがんばれ言われる筋合いねーよ',
  avatar: open("#{Rails.root}/db/fixtures/user3.jpeg")
)

User.create!(
  account_name: 'user4',
  display_name: '新開隼人',
  email: '444@user.com',
  password: '444444',
  password_confirmation: '444444',
  introduction: '勝つぜ！寿一！尽八！靖友！勝つぜオレは！オレは勝つ！勝つからよ！チーム戻ったら…　最ッ高のハイタッチをしてくれるか！',
  avatar: open("#{Rails.root}/db/fixtures/user4.jpg")
)

User.create!(
  account_name: 'user5',
  display_name: '御堂筋翔',
  email: '555@user.com',
  password: '555555',
  password_confirmation: '555555',
  introduction: 'キモいとかキモくないとか、まだそういうもんにこだわっとる、飾りにこだわっとる！！飾りはゴミや、カスや、不要品や、そんなものにこだわっとる限り、本質は、真実は、絶対に見えてこない！！',
  avatar: open("#{Rails.root}/db/fixtures/user5.jpg")
)

# 1
Category.create!(
  name: '何もないを楽しむ',
  is_valid: '1'
)
# 2
Category.create!(
  name: '観光地へのアクセス良好',
  is_valid: '1'
)
# 3
Category.create!(
  name: '旅人同士でワイワイ',
  is_valid: '1'
)
# 4
Category.create!(
  name: '静かな時間を過ごせる',
  is_valid: '1'
)
# 5
Category.create!(
  name: '設備が充実',
  is_valid: '1'
)
# 6
Category.create!(
  name: '不便を楽しむ',
  is_valid: '1'
)
# 7
Category.create!(
  name: '女性の一人旅でも安心',
  is_valid: '1'
)
# 8
Category.create!(
  name: 'ワイルドを楽しむ',
  is_valid: '1'
)
# 9
Category.create!(
  name: 'スタッフがフレンドリー',
  is_valid: '1'
)
# 10
Category.create!(
  name: 'スタッフとの距離感が絶妙',
  is_valid: '1'
)
# 11
Category.create!(
  name: '海を楽しむ',
  is_valid: '1'
)
# 12
Category.create!(
  name: '山を楽しむ',
  is_valid: '1'
)
# 13
Category.create!(
  name: '街を楽しむ',
  is_valid: '1'
)
# 14
Category.create!(
  name: '食事可能',
  is_valid: '1'
)
# 15
Category.create!(
  name: 'バー併設',
  is_valid: '1'
)
# 16
Category.create!(
  name: 'カフェ併設',
  is_valid: '1'
)

# 1
House.create!(
  name: 'なきじんゲストハウス結家',
  postcode: '9050424',
  prefecture_code: '47',
  address: '国頭郡今帰仁村仲尾次609',
  domitory_price: '2200',
  private_price: '3500',
  copy: '旅人同士のご縁を結ぶ、賑やかなゲストハウス',
  introduction: 'のんびりとゴロゴロ過ごしてもよし、短期滞在では読みきれないほどの漫画達を楽しむもよし、目の前のプライベートビーチでシュノーケルを楽しむもよし、夕方には初めましての旅人たちとまるで家族のように卓を囲んでお酒を飲む。「何もしないことをしにくる」、これこそが究極の贅沢だと気づかせてくれる沖縄北部のゲストハウス。元・木下大サーカスのアクロバット芸人の女将”結ねえ”の司会で始まる毎晩8時からの”おかず交換会”は毎日でも参加したいほどの面白さ！',
  is_valid: '1',
  house_image: open("#{Rails.root}/db/fixtures/musubiya.jpg"),
)

HouseCategory.create!(
  house_id: '1',
  category_id: '1'
)

HouseCategory.create!(
  house_id: '1',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '1',
  category_id: '9'
)

HouseCategory.create!(
  house_id: '1',
  category_id: '11'
)

# 2
House.create!(
  name: 'マスヤゲストハウス',
  postcode: '3930062',
  prefecture_code: '20',
  address: '諏訪郡下諏訪町平沢町314',
  domitory_price: '3200',
  private_price: '5000',
  copy: '旅人からも地元からも愛される暖かいゲストハウス',
  introduction: 'マスヤゲストハウスは、長野県は諏訪湖のほとり下諏訪町にあるゲストハウス。赤煉瓦の続くかっこいい門構えのこの宿は、明治時代の古地図にも載っている老舗の旅館でした。「ますや旅館」の屋号を受け継ぎ、元々ある良いところを残しつつ、３ヶ月の改装を経て完成したマスヤゲストハウス。地元の方やスタッフと一緒に、のんびり楽しく、宿と諏訪での時間をお過ごしください。',
  is_valid: '1',
  house_image: open("#{Rails.root}/db/fixtures/masuyagh.png"),
)

HouseCategory.create!(
  house_id: '2',
  category_id: '1'
)

HouseCategory.create!(
  house_id: '2',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '2',
  category_id: '7'
)

HouseCategory.create!(
  house_id: '2',
  category_id: '15'
)

# 3
House.create!(
  name: 'おがのゲストハウス',
  postcode: '3680201',
  prefecture_code: '11',
  address: '秩父郡小鹿野町両神薄88',
  domitory_price: '3500',
  private_price: '4800',
  copy: 'みんなの「楽しい」を詰め込んだ宿',
  introduction: '穏やかで、のんびりとした空気に包まれた町、小鹿野。透き通った川の流れ、季節を感じさせてくれる山々、新鮮な野菜。大きな観光スポットはないけれど、言葉では表せない「安らぎ」がここにはあります。「なにもしない」が最高の贅沢。忙しい日常はお家に置いて、小鹿野町でのんびりまったり休憩しませんか？',
  is_valid: '0',
  house_image: open("#{Rails.root}/db/fixtures/daioganogh.jpg"),
)

HouseCategory.create!(
  house_id: '3',
  category_id: '1'
)

HouseCategory.create!(
  house_id: '3',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '3',
  category_id: '7'
)

HouseCategory.create!(
  house_id: '3',
  category_id: '12'
)

# 4
House.create!(
  name: '晴耕雨読',
  postcode: '8914205',
  prefecture_code: '46',
  address: '熊毛郡屋久島町宮之浦1567',
  domitory_price: '0',
  private_price: '2500',
  copy: '一人旅好きが自然と集まる屋久島の有名宿',
  introduction: '屋久島で人気の素泊まり宿。ホームページ等は持たず、予約は電話のみという営業スタイルだが、オーナーさんの人柄と、チェックイン後の心地良い距離感からか全国にファンがいる知る人ぞ知る宿。',
  is_valid: '1',
  house_image: open("#{Rails.root}/db/fixtures/daiseikoudoku.jpg"),
)

HouseCategory.create!(
  house_id: '4',
  category_id: '1'
)

HouseCategory.create!(
  house_id: '4',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '4',
  category_id: '8'
)

HouseCategory.create!(
  house_id: '4',
  category_id: '11'
)

# 5
House.create!(
  name: '小笠原ユースホステル',
  postcode: '1002101',
  prefecture_code: '13',
  address: '小笠原村父島字西町',
  domitory_price: '3950',
  private_price: '5950',
  copy: '東京から丸一日、１週間以上のフリータイムを手に入れて向かう贅沢時間をここで！',
  introduction: '東京から南へ1,000Kmの絶海の孤島。月に5便ほど、25時間半もかかる定期船でしか行かれない、世界的にも遠い島。訪れる人は少ないけれど、だからこそ本物の自然が残っています。海ではダイビングはもちろん、ドルフィンスイムやホエールウォッチング、スキンダイブに島巡りボート。山はトレッキングに数々の展望台。1便やりすごして8~9泊してもやることいっぱい。',
  is_valid: '1',
  house_image: open("#{Rails.root}/db/fixtures/ogasawarayh.jpg"),
)

HouseCategory.create!(
  house_id: '5',
  category_id: '1'
)

HouseCategory.create!(
  house_id: '5',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '5',
  category_id: '6'
)

HouseCategory.create!(
  house_id: '5',
  category_id: '9'
)

# 6
House.create!(
  name: '御宿ゲストハウス 海おやぶん',
  postcode: '2995103',
  prefecture_code: '12',
  address: '夷隅郡御宿町新町608',
  domitory_price: '3300',
  private_price: '4300',
  copy: '都心からすぐ来られる房総に、誰もがくつろげる場所を。',
  introduction: '約40年前にこだわり抜いて建てられた家屋を引き継ぎ、ゲストハウスを開きました。関東屈指の美しさを誇る御宿の海から徒歩5分、駅から徒歩8分、スーパーから徒歩2分の御宿中心街にひっそりと佇んでいます。帰ってきたらすぐに浴びられる外シャワーがあるので、海水浴やサーフィンも快適。ツーリングなどの拠点にもご利用ください。皆様のお越しを心よりお待ちしております',
  is_valid: '1',
  house_image: open("#{Rails.root}/db/fixtures/umioyabun.jpg"),
)

HouseCategory.create!(
  house_id: '6',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '6',
  category_id: '5'
)

HouseCategory.create!(
  house_id: '6',
  category_id: '9'
)

HouseCategory.create!(
  house_id: '6',
  category_id: '11'
)

# 7
House.create!(
  name: '五島バックパッカーズ ぽれ',
  postcode: '8574214',
  prefecture_code: '42',
  address: '新上五島町七目郷 1005-2',
  domitory_price: '3500',
  private_price: '4500',
  copy: '世界を練り歩いたバックパッカーが地元に建てた夢の宿',
  introduction: 'ゲストハウスの魅力に取り憑かれバックパッカーとして世界を旅した五島出身のオーナーが、「いつか、ゲストハウスを、自分が生まれ育った島に作りたい！」という思いを形にした宿。旅人の気持ちがわかるオーナーだから作れる居心地の良い宿です',
  is_valid: '1',
  house_image: open("#{Rails.root}/db/fixtures/pore.jpeg"),
)

HouseCategory.create!(
  house_id: '7',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '7',
  category_id: '5'
)

HouseCategory.create!(
  house_id: '7',
  category_id: '10'
)

HouseCategory.create!(
  house_id: '7',
  category_id: '11'
)

# 8
House.create!(
  name: 'さっぽろゲストハウス 縁家',
  postcode: '0640808',
  prefecture_code: '1',
  address: '札幌市中央区南8条西8丁目515 南八条アーバンライフ201号室',
  domitory_price: '2500',
  private_price: '0',
  copy: '暮らすように旅しよう',
  introduction: '縁家は10階建ての大きなマンションの一室にあります。初めてお越しになるゲストさんは『こんな所にゲストハウスが！？』と驚きますが、縁家の重い扉を開けた瞬間に、その緊張はどこかへと吹っ飛ぶことでしょう。中に入れば、北の大地とは思えないユルい雰囲気と居心地の良さ。まるでホームステイに来たようなアットホームな空気感が自慢の宿です。ホテルや旅館では味わえない、素敵な一期一会の出会いが待っています。',
  is_valid: '1',
  house_image: open("#{Rails.root}/db/fixtures/enishiya.jpg"),
)

HouseCategory.create!(
  house_id: '8',
  category_id: '2'
)

HouseCategory.create!(
  house_id: '8',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '8',
  category_id: '7'
)

HouseCategory.create!(
  house_id: '8',
  category_id: '13'
)

# 9
House.create!(
  name: 'ゲストハウス Nami',
  postcode: '9071751',
  prefecture_code: '47',
  address: '八重山郡竹富町波照間5251',
  domitory_price: '0',
  private_price: '2800',
  copy: '日本の最南端にある素敵な出会い',
  introduction: '日本最南端の有人島にあるゲストハウスNami。どこか懐かしさを感じるその佇まいは夏休みに田舎のおばあちゃんの家に帰ってきた時の感覚を思い出させます。広々とした庭に置かれた大きなテーブルを囲んであなたも”ゆんたく（おしゃべり）”を楽しみませんか？',
  is_valid: '1',
  house_image: open("#{Rails.root}/db/fixtures/nami.jpg"),
)

HouseCategory.create!(
  house_id: '9',
  category_id: '1'
)

HouseCategory.create!(
  house_id: '9',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '9',
  category_id: '10'
)

HouseCategory.create!(
  house_id: '9',
  category_id: '11'
)

# 10
House.create!(
  name: '旅人宿 石垣屋',
  postcode: '5191112',
  prefecture_code: '24',
  address: '亀山市関町中町445',
  domitory_price: '2500',
  private_price: '4500',
  copy: '三重の古民家ゲストハウス',
  introduction: 'ここは三重県、東海道五十三次の宿場町『関宿』。江戸から明治にかけての歴史的建物が200軒ほど残る町並みの中心に、日本全国からいろんな旅人が集まる、楽しいお宿です!!',
  is_valid: '1',
  house_image: open("#{Rails.root}/db/fixtures/ishigakiya.jpg"),
)

HouseCategory.create!(
  house_id: '10',
  category_id: '2'
)

HouseCategory.create!(
  house_id: '10',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '10',
  category_id: '5'
)

HouseCategory.create!(
  house_id: '10',
  category_id: '9'
)

# 11
House.create!(
  name: '鎌倉ゲストハウス',
  postcode: '2480022',
  prefecture_code: '14',
  address: '鎌倉市常盤273-3',
  domitory_price: '3500',
  private_price: '15000',
  copy: '囲炉裏のある小さなお宿',
  introduction: '湘南よりも山のほう 大仏さまのずっと奥に、あかり灯る一軒家 大きな囲炉裏と、家を守る大きな柱 宮大工により造られた、あたたかな木のおうち 畳のにおい、陽だまり縁側 どこか懐かしい、おばあちゃん家のような ここに流れるのは、きっとこころから安らぐ時間 どうぞゆるりお過ごしください',
  is_valid: '1',
  house_image: open("#{Rails.root}/db/fixtures/kamagesu2.jpg"),
)

HouseCategory.create!(
  house_id: '11',
  category_id: '2'
)

HouseCategory.create!(
  house_id: '11',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '11',
  category_id: '7'
)

HouseCategory.create!(
  house_id: '11',
  category_id: '9'
)

# 12
House.create!(
  name: '島宿 月桃屋',
  postcode: '9070013',
  prefecture_code: '47',
  address: '石垣市浜崎町2−3−24 エメラルドアイル浜崎町1F南',
  domitory_price: '2500',
  private_price: '3900',
  copy: '月桃家におかえりなさい〜！！',
  introduction: '沖縄那覇からさらにさらに南の石垣島にてとしてみなさんの旅のお手伝いをしています。食事の提供はありませんが毎日自炊や石垣牛や島料理の美味しいお店に食べることも。夜はリビングに集まってみんなとゆんたく(おしゃべり)！自分のおうちのようにゆっくりやすんで友達作っていい思い出たくさん作ってまた帰ってきてね〜。',
  is_valid: '1',
  house_image: open("#{Rails.root}/db/fixtures/daigettouya.jpg"),
)

HouseCategory.create!(
  house_id: '12',
  category_id: '2'
)

HouseCategory.create!(
  house_id: '12',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '12',
  category_id: '7'
)

HouseCategory.create!(
  house_id: '12',
  category_id: '9'
)

# 13
House.create!(
  name: 'eat&stay ROMEY',
  postcode: '4210123',
  prefecture_code: '22',
  address: '静岡市駿河区石部27-11',
  domitory_price: '0',
  private_price: '3500',
  copy: 'ゲストハウス兼カレー屋さん',
  introduction: 'ネパール出身のご主人と、日本人の奥様が二人三脚で営むアットホームなゲストハウス兼カレー屋さん。ゲストとの一期一会の出会いを大切にしている素敵なお宿',
  is_valid: '1',
  house_image: open("#{Rails.root}/db/fixtures/dairomey.jpg"),
)

HouseCategory.create!(
  house_id: '13',
  category_id: '4'
)

HouseCategory.create!(
  house_id: '13',
  category_id: '9'
)

HouseCategory.create!(
  house_id: '13',
  category_id: '11'
)

HouseCategory.create!(
  house_id: '13',
  category_id: '14'
)

# 14
House.create!(
  name: '亀時間',
  postcode: '248-0013',
  prefecture_code: '14',
  address: '鎌倉市材木座３丁目１７−２１',
  domitory_price: '3200',
  private_price: '9000',
  copy: '鎌倉の暮らしを亀時間で旅する宿',
  introduction: '鎌倉時代に港町として栄えた材木座に、宮大工によって建てられた築94年の歴史を持つ古民家をゲストハウスに改装しました。海まで徒歩3分、鎌倉の暮らしをゆっくりお楽しみください。',
  is_valid: '1',
  house_image: open("#{Rails.root}/db/fixtures/kame.jpg"),
)

HouseCategory.create!(
  house_id: '14',
  category_id: '2'
)

HouseCategory.create!(
  house_id: '14',
  category_id: '4'
)

HouseCategory.create!(
  house_id: '14',
  category_id: '10'
)

HouseCategory.create!(
  house_id: '14',
  category_id: '13'
)