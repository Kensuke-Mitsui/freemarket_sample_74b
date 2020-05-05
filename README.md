# freemarket DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true, index: true|
|password|string|null: false|
|family_name|string|null: false|
|first_name|date|null: false|
|family_name_kana|string|null: false|
|first_name_kana|date|null: false|
|birthday|date|null: false|
|post_code|integer(7)|null: false|
|phone_number|integer|unique: true|
### Association
- belongs_to :item
- has_many :address

## addressテーブル
|Column|Type|Options|
|------|----|-------|
|prefectures|string|null: false|
|city|string|null: false|
|block|string|null: false|
|building|string|
### Association
- belongs_to :user


## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|item|string|null: false|
|user_id|references|null: false|
|name|string|null: false|
|content|string|null: false|
|size|string|null: false|
|status|string|null: false|
|brand|string|null: false|
### Association
- belongs_to :user
- has_many :images
- has_many :categories


## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image_url|string|null: false|
|item_id|reference|null: false, foreign_key: true|
### Association
- belongs_to :item

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- belongs_to :item
