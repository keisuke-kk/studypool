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

## adminsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
|image|string|null: false|
|status_message|string||
### Association
- has_many :comprehensive
- has_many :opinions

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
|image|string|null: false|
|status_message|string||
### Association
- has_many :comprehensive
- has_many :opinions

## constractorsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
|industry|string|null: false|
|aicon_image|string|null: false|
|tel|string|null: false|
|address|string|null: false|
|access|string||
|hp|string||
|account|string||
|remarks|text||
### Association
- has_many :comprehensive
- has_many :opinions
- has_many :performances
- has_many :constractor_images

## 投稿画像
## constractor_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|constractor_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :constractor

## comprehensiveテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|detail|text|null: false|
|user_id|integer|foreign_key: true|
|constractor_id|integer|foreign_key: true|
|area_id|integer|null: false, foreign_key: true|
|type_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :constructor
- belongs_to :area
- belongs_to :type
- has_many :comprehensive_images

## 投稿画像
## comprehensive_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|comprehensive_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :comprehensive

## areasテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
### Association
- has_many :types
- has_many :comprehensive

## typesテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
### Association
- belongs_to :area
- has_many :comprehensive


## performancesテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|detail|text|null: false|
|image|string|null: false|
|constructor_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :constructor

## opinionsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|detail|text|null: false|
|image|string||
|user_id|integer|foreign_key: true|
|constractor_id|integer|foreign_key: true|
### Association
- belongs_to :user
- belongs_to :constructor

