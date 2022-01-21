
# Environment:
```
Ruby version: 2.6.6
Rails version: 5.2.3
```
# Run in terminal for setup:
```
bundle install
rake db:create
rake db:migrate
```

# How to create feeds

Create sample feeds

Edit `db/seeds.rb`
Run in terminal:
`rake db:seed` for default feeds

Or create feeds in /admin

# How to run server

Run in terminal:
```
rails s
```

# How to run daemon for fetching RSS feeds
```
rake rss:daemon
```
