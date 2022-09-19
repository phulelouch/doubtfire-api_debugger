## Steps to take:

* Replace your current Gemfile with the Gemfile on this, or use this whole folder replace for doubtfire-api/
* In doubtfire-api, run the dev-db 
* Run the doubtfire-api docker once in doubtfire-api/ with something like this: 
*docker-compose run -p 3000:3000 -p 1234:1234 -p 26166:26168 df-api  bash -c "gem install ruby-debug-ide --pre; bundle install; bundle exec rails db:environment:set RAILS_ENV=development; bundle exec rake db:populate;  /usr/local/bundle/bin/bundle exec rake db:migrate && /usr/local/bundle/bin/bundle exec rails s -b 0.0.0.0"

* Configure a remote interpreter with the docker just run https://www.jetbrains.com/help/ruby/using-docker-compose-as-a-remote-interpreter.html#configure_remote_interpreter

* Run for test with this: 
*docker-compose run -p 3000:3000 -p 1234:1234 -p 26166:26168 df-api  bash -c "gem install ruby-debug-ide --pre; bundle install; bundle exec rails db:environment:set RAILS_ENV=development; bundle exec rake db:populate; rdebug-ide --host 0.0.0.0 --port 1234 --dispatcher-port 26162 -- /usr/local/bundle/bin/bundle exec rake db:migrate && /usr/local/bundle/bin/bundle exec rails s -b 0.0.0.0"


For more details:
https://www.jetbrains.com/help/ruby/using-docker-compose-as-a-remote-interpreter.html
