# What Is Kraut? #
I thought Relish was a great idea, but when I needed to use it for a project whose spec I couldn't release, I found emptiness. (A private repo wasn't good enough)

SO Kraut is a clone. Imitation is flattery, no?

# Use #
Its a formatter.  Install the gem, include it in your Gemfile if appropriate, and use it with:
    kraut features
If you need to run it against some standalone features, or would rather clone the repo than install a gem, include it in the require path along with your support directory (if necessary):
    cucumber --require <path-to-support-dir> <path-to-installed-gem-or-cloned-repository> features
See [Cucumber's page on custom formatters](https://github.com/cucumber/cucumber/wiki/Custom-Formatters 'Custom Formatters') for more info

Kraut will place html files in ./kraut
