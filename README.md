# DB 設計

## users table
 
| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| nickname           | string              | null: false, unique: true |
| name               | string              | null: false               |
| read_name          | string              | null: false               |
| email              | string              | null: false, unique: true |
| confirm_password   | string              | null: false               |
| birth_year         | integer             | null: false               |
| birth_month        | integer             | null: false               |
| birth_day          | integer             | null: false               |
 
### Association
* has_many :prefectures
* has_many :comments


## prefectures table

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| user               | references          | foreign_key: true       |
| price              | integer             | null: false             |
| name               | string              | null: false             |
| explanation        | text                | null: false             |
| category_id        | integer             | null: false             |
| condition_id       | integer             | null: false             |
| delivery_fee_id    | integer             | null: false             |
| prefecture_id      | integer             | null: false             |
| shipment_date_id   | integer             | null: false             |

### Association

* belongs_to :user
* has_one : purchasing


## purchasings table

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| user               | references          | foreign_key: true       |
| item               | references          | foreign_key: true       |

### Association
 
* belongs_to :user
* belongs_to :item
* has_one : address


## addresses table

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| purchasing         | references          | foreign_key: true       |
| postcode           | string              | null: false             |
| prefecture_id      | integer             | null: false             |
| town               | string              | null: false             |
| house_number       | string              | null: false             |
| building_name      | string              |                         |
| phone              | string              | null: false             |

### Association

* belongs_to :purchasing


