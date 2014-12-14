## Sitename
This is a boilerplate Ruby on Rails application configured with best practices in dependencies, performance and various other areas.

### Development
#### Setup
- ```cp config/database.yml.sample config/database.yml```

### Architecture
#### Client-side Javascript
- CoffeeScript for JavaScript Abstraction

#### Database
- MySQL for all environments

#### Views
- Haml for HTML Abstraction
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
