# README

Vibe_Kyushu
九州のクラブイベント情報を掲載できるサイトです

### Venues(開催地) テーブル


| Column                 | Type    | Options     |
| ---------------------- | ------- | ----------- |
| name                   | string  | null: false |
| address                | string  | null: false |
| instagram_url          | string  | null: false |
| area                   | string  | null: false |
## アソシエーション
- has_many :events (1つの会場には、たくさんのイベントがある)



### Users(使用者) テーブル


| Column                 | Type    | Options     |
| ---------------------- | ------- | ----------- |
| email                  | string  | null: false |
| password               | string | null: false |
| name                   | string  | null: false |
| role(一般ユーザー、オーガナイザー、管理者)        | string  | null: false |
## アソシエーション
- has_many :events (1つのユーザーには、たくさんのイベントがある)



### Events(イベント) テーブル


| Column                 | Type    | Options     |
| ---------------------- | ------- | ----------- |
| venue_id               | references  | null: false |
| user_id                | references  | null: false |
| title                  | string  | null: false |
| date                   | datetime  | null: false |
| description            | text    | null: false |
| image                  | string  | null: false |
| fee                    | string  | null: false |
| genre                  | string  | null: false |
| status                 | string  | null: false |
| source_url             | string  | null: false |
## アソシエーション
- belongs_to :venue (1つのイベントは、特定の会場に属する)
- belongs_to :user  (1つのイベントは、特定の登録者に属する)



