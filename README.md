## アプリケーション名

ゲーム情報交換アプリ


## アプリケーションの概要

最新ゲームからレトロゲーム、話題作からインディーズゲームまで様々なゲームがある昨今、ユーザーがゲームの情報や評価を投稿し、コミュニケーションをとるためのアプリです。


## URL

http://18.180.68.20/


## テスト用アカウント

#### Basic認証

・ID: virchow  
・Pass: 1986

・メールアドレス: test@com  
・パスワード: test001


## 利用方法

### ゲーム情報の投稿

1.トップページのヘッダーからユーザーの新規登録を行う。  
2.投稿からゲーム情報を投稿する。


# 投稿にコメントする

・投稿の詳細ページから投稿にコメントする

# アプリケーションを開発した背景

ファミリーコンピュータが発売されて40年、発売されたゲームの
種類も多くソフトの情報を集めたりプレーヤー同士で情報交換するのは大変です。  
そこでユーザーが各々のプレイしたコンシューマーゲームの情報を投稿し、交流できるアプリを開発することにしました。

# 洗い出した要件

https://docs.google.com/spreadsheets/d/1te50cr3LkieeGYzT9oRFGWQn1vwvFzdXLpO9QD7_qAU/edit#gid=982722306

# 実装予定の機能

・単語、カテゴリーごとの検索機能  
・評価順でのソート機能  
・評価基準の細分化(ストーリー、システム、音楽、グラフィック、UI)

# テーブル設計

### usersテーブル
| Column   | Type   | Options     |
|----------|--------|-------------|
| nickname | string | null: false |
| email    | string | null: false, default: |
| encrypted_password | string | null: false, default: |

#### Association
has_many :games

### gamesテーブル
| Column   | Type   | Options     |
|----------|--------|-------------|
| title | string | null: false |
| category_id    | integer | null: false |
| point_id | integer | null: false |
| time | integer | null: false |
| comment    | text | null: false |
| user | references | null: false, foreign_key: true |

#### Association
belongs_to :user

# 開発環境

#### ローカル環境
・Rails 6.0.6  
・ruby 2.6.5  
・mysql2 0.5.3

# ローカルでの動作方法
以下のコマンドを順に実行

% git clone https://github.com/yuuji1123/gamejouhou-app  
% cd gamejouhou-app  
% bundle install  
% rails db:create  
% rails db:migrate  
% yarn install

# 工夫したポイント

ユーザーが利用しやすい機能、視覚的にわかりやすい見た目を目指しました。  
情報が多くなると画面がゴチャゴチャして見にくくなるので、できるだけスッキリした見た目になるよう意識しました。