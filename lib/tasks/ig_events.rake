namespace :ig_events do
  desc "Instagramからイベント情報を自動取得する"
  task fetch_posts: :environment do
    # 本来はここにAPIを叩くコードを書く（今は制限中なので「擬似データ」でテスト）
    puts "Instagram APIをチェック中..."

    # APIから返ってくるであろうデータ（例）
    dummy_posts = [
      {
        caption: "今週末の親不孝通りDJイベント！ #vibe_kyushu",
        media_url: "https://example.com",
        permalink: "https://instagram.com",
        timestamp: Time.current
      }
    ]

    dummy_posts.each do |post|
      # ハッシュタグ #vibe_kyushu が含まれている投稿だけを保存する、などの条件
      if post[:caption].include?("#vibe_kyushu")
        Event.find_or_create_by!(source_url: post[:permalink]) do |event|
          event.title = "自動取得イベント（タイトルは後で調整）"
          event.description = post[:caption]
          event.date = post[:timestamp]
          event.venue = Venue.first # とりあえず最初の会場を紐付け
          event.user = User.find_by(role: 'admin') # 管理者に紐付け
          event.status = "draft" # 最初は下書きとして保存
          event.image = post[:media_url]
          event.fee = "TBD"
        end
      end
    end

    puts "取得完了！"
  end
end