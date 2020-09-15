# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル

| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
| nick_name       | string | null: false |
| email           | string | null: false |
| password        | string | null: false |
| second_name     | string | null: false |
| first_name      | string | null: false |
| second_name_k   | string | null: false |
| first_name_k    | string | null: false |
| birthday        | date   | null: false |

### Association

- has_many :items
- has_many :customers

## itemsテーブル

| Column      | Type       | Options                       |
| ----------- | ---------- | ----------------------------- |
| user        | references | null: false, foreign_key: true|
| item_name   | string     | null: false                   |
| explanation | string     | null: false                   |
| category    | integer    | null: false                   |
| status      | integer    | null: false                   |
| fee         | integer    | null: false                   |
| area        | integer    | null: false                  |
| day         | integer    | null: false                   |
| price       | integer    | null: false                   |

### Association

- belongs_to :user
- has_one :purchase

## purchasesテーブル

| Column      | Type       | Options                       |
| ----------- | ---------- | ----------------------------- |
| user        | references | null: false, foreign_key: true|
| item        | references | null: false, foreign_key: true|

### Association

- belongs_to :user
- belongs_to :item
- has_one :customer

## customersテーブル

| Column      | Type       | Options                       |
| ----------- | ---------- | ----------------------------- |
| post_code   | string     | null: false                   |
| prefectures | integer    | null: false                   |
| municipality| string     | null: false                   |
| address     | string     | null: false                   |
| building    | string     |                               |
| phone_number| string     | null: false                   |

### Association

- belongs_to :purchase
