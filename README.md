# README


## app_name : RailsEngineTest
## Discription

Rails Engine Study

## contribute
[Rails Engineを使って管理画面を作ろうとした話、とその後(クラウドワークス エンジニアブログ)](http://engineer.crowdworks.jp/entry/2016/05/17/173602)


## build rails app

``` 
rails new RailsEngineTest --skip-bundle -d postgresql
cd RailsEngineTest
bundle install --path vendor/bundle
bundle exec rails g scaffold user name:string
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rails s
```

## rails engine を追加
``` 
bundle install
bundle exec rails plugin new bulletin_board --mountable --skip-bundle
bundle exec rails plugin new vendor/engines/bulletin_board --mountable --skip-bundle -T --dummy-path=spec/dummy -d postgresql
cd bulletin_board
"fix TODO in gemspec"
bundle exec rails g scaffold board title:string
bundle install
```

## commentテーブルを定義
``` 
cd RailsEngineTest/bulletin_board
bundle exec rails g model comment text:string board_id:integer
bundle exec rake db:migrate
```


## Gemfile

``` 
gem 'bulletin_board', path: 'bulletin_board'
```

## config/routes.rb
``` 
mount BulletinBoard::Engine, at: 'bulletin_board'
```

## migration file をRailsEngineから同期
``` 
cd RailsEngineTest
bundle exec rake bulletin_board:install:migrations
bundle exec rake db:migrate
```
