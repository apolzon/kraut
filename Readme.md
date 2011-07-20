# What Is Kraut? #
Kraut is a visual display of cucumber-driven JSON API features. Heavily influenced by Relish, currently works best with json_spec.

# Use #
Its a formatter.  Install the gem, include it in your Gemfile if appropriate, and use it with:
    kraut features
If you need to run it against some standalone features, or would rather clone the repo than install a gem, include it in the require path along with your support directory (if necessary):
    cucumber --require <path-to-support-dir> <path-to-installed-gem-or-cloned-repository> features
See [Cucumber's page on custom formatters](https://github.com/cucumber/cucumber/wiki/Custom-Formatters 'Custom Formatters') for more info

Kraut will place html files in ./kraut
