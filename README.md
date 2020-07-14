# StudyPool



# 概要




# 本番環境




# 制作背景




# DEMO




# 工夫したポイント




# 実装機能
- admins
   - ログイン機能
   - ログアウト機能
   - フラッシュメッセージ機能
   - shops,study-tips,chatへの権限
- users
   - ログイン機能
   - ログアウト機能
   - フラッシュメッセージ機能
   - chatへの権限
- shops
   - 新規作成機能
   - 編集機能
   - 削除機能
   - 検索機能
   - ページネーション機能
   - 画像複数投稿機能
- study_tips
   - 新規作成機能
   - 編集機能
   - 削除機能
- chat
   - 新規作成機能
   - 編集機能
   - 削除機能
   - 検索機能
   - ページネーション機能

# 使用技術(開発環境)
- AWS
- CircleCI
- Docker
- github
- ruby
- ruby on rails
- html haml
- scss
- Vue.js



# 課題や今後実装したい機能





# DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
|image|string|null: false|
|status_message|string||
|activated|boolean|null: false, defalt: false|
|admin|boolean|null: false, defalt: false|
### Association
- has_many :shops
- has_many :study_tips
- has_many :chats

## shopsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|detail|text|null: false|
|aicon_image|string||
|tel|string||
|email|string||
|address|string||
|access|string||
|url|string||
### Association
- belongs_to :user

## 投稿画像
## shop_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|shop_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :shop

## study_tipsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|detail|text|null: false|
|user_id|integer|foreign_key: true|
### Association
- belongs_to :user

## chatsテーブル
|Column|Type|Options|
|------|----|-------|
|detail|text|null: false|
|image|string||
|user_id|integer|foreign_key: true|
### Association
- belongs_to :user



