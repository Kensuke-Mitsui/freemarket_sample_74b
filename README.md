# freemarket DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|string|null: false|
|nickname|string|null: false|
|email|string|null: false, unique: true, index: true|
|password|string|null: false|
|family_name|string|null: false|
|first_name|date|null: false|
|family_name_kana|string|null: false|
|first_name_kana|date|null: false|
|birthday|date|null: false|
|post_code|integer(7)|null: false|
|prefectures|string|null: false|
|city|string|null: false|
|block|string|null: false|
|building|string|
|phone_number|integer|unique: true|
### Association
- belongs_to :items


## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|item|string|null: false|
|user_id|references|null: false|
|item_name|string|null: false|
|item_content|string|null: false|
|size|string|null: false|
|status|string|null: false|
|brand|string|null: false|
### Association
- belongs_to :users
- has_many :images
- has_many :items_categories
- has_many :categories,  througn:  :items_categories


## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image_url|string|null: false|
|item_id|reference|null: false, foreign_key: true|
### Association
- belongs_to :items

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :items_categories
- has_many :items,  through:  :posts_tags

## items_categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|category_id|reference|null: false, foreign_key:true|
|item_id|reference|null: false, foreign_key: true|
### Association
- belongs_to :items
- belongs_to :categories
