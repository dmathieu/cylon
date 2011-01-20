# Cylon

Disallows indexation by search engines (with the robots.txt file) whenever you're not in production.

## Installation

Add the cylon gem to your Gemfile.

    gem 'cylon'

If you are using rails, that's all you have to do. Cylon is a rails engine so the middleware will be automatically added.  
In any other way, you have to add the `Cylon::Rack` middleware to your application.

    use Cylon::Rack
    run Your::App

## What about my robots.txt file in production ?

Whenever you are in production, cylon doesn't do anything. It just continues with the application.  
So you can, inside of your application, render any content in your robots.txt if you want to disallow indexation for a file or directory.

In any other environment though, we won't call your application's methods for the robots.txt url. So you have to have ENV['RACK_ENV'] defined at "production" if you want to test your own robots.txt file.

## Contributing

If you think Cylon is great but can be improved, feel free to contribute. To do so, you can :

* [Fork](http://help.github.com/forking/) the project
* Do your changes and commit them to your repository
* Test your changes. We won't accept any untested contributions (except if they're not testable).
* Create an [issue](https://github.com/dmathieu/cylon/issues) with a link to your commits.

And that's it! We'll soon take a look at your issue and review your changes.

## Author and Credits

Damien MATHIEU :: 42 (AT|CHEZ) dmathieu.com