require_relative './Conference'

sessions_data = [
  {
    title: "Witchcraft for Memory",
    speaker: "Masataka Kuwabara",
    thoughts: "少し自分には難しかったが、Linuxの仕組みやメモリプロファイルなど、わからない単語を知るきっかけになった。"
  },
  {
    title: "「富岳」と研究者をRubyでつなぐ：シミュレーション管理ツールOACIS",
    speaker: "村瀬洋介",
    thoughts: "研究者がシュミレーションテストを行うこと自体新しい気づきだったし、そのテストが自動で視覚化されるのがすごいと思った。"
  },
  {
    title: "「1ヶ月でWebサービスを作る会」で出会った rails new、そして今に至る rails new",
    speaker: "桐生あんず(kiryuanzu)",
    thoughts: "私の会社の先輩の発表だった。堂々とされていて、本当に感動した。個人開発しようと本気で思えたし、使うツールのヒントを得れた。"
  },
  {
    title: "mrubyとmicro-ROSが繋ぐロボットの世界",
    speaker: "影山勝彦",
    thoughts: "ロボットx Rubyという発想が新鮮だった。PicoRubyの存在を認識できていなかったので、知るきっかけを得られた。"
  },
  {
    title: "ふだんのWEB技術スタックだけでアート作品を作ってみる",
    speaker: "Akira Yagi",
    thoughts: "自分が知っている技術スタックが出てきて理解しやすく、またそれを使って美しいアート作品が作れるんだと驚いた。"
  },
  {
    title: "Rubyと💪を作り込む - PicoRubyとマイコンでの自作トレーニング計測装置を用いたワークアウトの理想と現実",
    speaker: "bash",
    thoughts: "試行錯誤しながらPicoRubyを使ってトレーニング計測装置を自作する様子がとてもわかりやすく伝わってきた。問題にぶつかっても問題を分析してまたトライする姿を見てとても勇気をもらった。"
  },
  {
    title: "分散オブジェクトで遊ぼう！〜dRubyで作るマルチプレイヤー迷路ゲーム〜",
    speaker: "yumu",
    thoughts: "当日の朝までプロダクトの開発に取り組んだと聞いて驚いた。また色んなバグにぶつかりながらも、原因を見つけて解決した様子が伝わり、登壇するくらいすごい人でもバグとぶつかって戦っているんだなと勇気をもらえた。"
  },
  {
    title: "Rubyで世界を作ってみる話",
    speaker: "Akira Matsuda",
    thoughts: "世界は意外と複雑だったということで結果実現できなかったものの、どのような思考プロセスでオブジェクト指向設計を考えていけばいいのかを学べた。"
  },
  {
    title: "Regional.rb and the Kyoto City",
    speaker: "関西地域.rb",
    thoughts: "どんな方達がrubyコミュニティを作っているのか、そしてどんな思いで運営を続けているのかを知れた。また、それぞれのコミュニティの楽しそうな雰囲気を見て自分も参加してみようと思った。"
  },
  {
    title: "Rubyを使った10年の個人開発でやってきたこと",
    speaker: "Koji Shimba (@shimbaco)",
    thoughts: "ほんと、ごめんなさい。重要な電話がかかってきてお聞きすることができなかった…"
  }
]

ruby_conf = Conference.new("関西Ruby会議", "先斗町歌舞練場", "京都", sessions_data)
ruby_conf.start_sessions
