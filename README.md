## Sitename
This is a boilerplate Ruby on Rails application configured with best practices in dependencies, performance and various other areas.

### Development
#### Project Setup
- Devise Authentication ```config/devise.rb```
    - Change ```config.mailer_sender = '<email>'```
- Environments
    - Production ```config/environments/production.rb```
        - Configure Action Mailer settings (ie. asset_host)
- RVM
    - Change project name in ```.rvmrc```

#### Setup
- ```cp config/database.yml.sample config/database.yml```

### Architecture
#### Authentication
- Devise

#### Client-side Javascript
- CoffeeScript for JavaScript Abstraction

#### Database
- MySQL for all environments

#### Views
- Haml for HTML Abstraction
    - Rake task generate only ERB? Run ```rake haml:replace_erbs``` to convert them.
- Sass for CSS Abstraction

#### Webserver
- Unicorn for concurrency

### Debugging
- For easier debugging commands in pry, simply create ~/.pryrc with the following lines...

    ```
    if defined?(PryByebug)
      Pry.commands.alias_command 'c', 'continue'
      Pry.commands.alias_command 's', 'step'
      Pry.commands.alias_command 'n', 'next'
      Pry.commands.alias_command 'f', 'finish'
    end
    ```

### Troubleshooting
#### Could not find bcrypt though bundler installed correctly
- Need to locate spring server ```ps aux | grep spring```
- Kill the process ```kill 12345```
