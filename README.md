## Sitename
This is a boilerplate Ruby on Rails application configured with best practices in dependencies, performance and various other areas.

### Infrastructure
#### Webserver
- Unicorn for concurrency

### Application Architecture
#### Client-side Javascript
- CoffeeScript for JavaScript Abstraction

#### Views
- Haml for HTML Abstraction
- Sass for CSS Abstraction

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
