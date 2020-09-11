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

| Column    | Type   | Options     |
| --------- | ------ | ----------- |
| nick_name | string | null: false |
| email     | string | null: false |
| password  | string | null: false |
| name      | string | null: false |

### Association

- has_many :items
- has_many :customers

## itemsテーブル

| Column      | Type       | Options                       |
| ----------- | ---------- | ----------------------------- |
| user_id     | references | null: false, foreign_key: true|
| image       | string     | null: false                   |
| item_name   | string     | null: false                   |
| explanation | string     | null: false                   |
| price       | string     | null: false                   |

### Association

- belongs_to :users
- has one :customers

## customersテーブル

| Column      | Type       | Options                       |
| ----------- | ---------- | ----------------------------- |
| user_id     | references | null: false, foreign_key: true|
| item_id     | references | null: false, foreign_key: true|
| card_number | string     | null: false                   |
| yubin_number| string     | null: false                   |
| banthi      | string     | null: false                   |
| phone_number| string     | null: false                   |
| tatemono    | string     | null: false                   |
| municipality| string     | null: false                   |

### Association

- belongs_to :users
- belongs_to :items
