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
* has_many :diaries
* has_many :comments


## Diaries table

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| user               | references          | foreign_key: true       |
| text               | text                |                         |
| good_counter       | string              |                         |


### Association

* belongs_to :user
* has_many :comments


## comments table

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| user               | references          | foreign_key: true       |
| comment            | text                |                         |


### Association
 
* belongs_to :user
* belongs_to :diary






