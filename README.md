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
| birthday        | string | null: false |

### Association

- has_many :items
- has_many :customers

## itemsテーブル

| Column      | Type       | Options                       |
| ----------- | ---------- | ----------------------------- |
| user        | references | null: false, foreign_key: true|
| item_name   | string     | null: false                   |
| explanation | string     | null: false                   |
| category    | string     | null: false                   |
| status      | string     | null: false                   |
| fee         | string     | null: false                   |
| area        | string     | null: false                  |
| day         | string     | null: false                   |
| price       | string     | null: false                   |

### Association

- belongs_to :user
- has_one :customer

## customersテーブル

| Column      | Type       | Options                       |
| ----------- | ---------- | ----------------------------- |
| card_number | string     | null: false                   |
| yubin_number| string     | null: false                   |
| banthi      | string     | null: false                   |
| phone_number| string     | null: false                   |
| tatemono    | string     | null: false                   |
| municipality| string     | null: false                   |

### Association

- belongs_to :purchase

## purchasesテーブル

| Column      | Type       | Options                       |
| ----------- | ---------- | ----------------------------- |
| user_id     | references | null: false, foreign_key: true|
| item_id     | references | null: false, foreign_key: true|

### Association

- belongs_to :user
- belongs_to :item
- has_one :customer