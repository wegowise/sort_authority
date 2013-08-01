# sort_authority

Natural order string comparison using
[natsort](http://sourcefrog.net/projects/natsort/)
by [Martin Pool](http://sourcefrog.net/).

### Getting Started

If you're using Bundler, you can add `sort_authority` to your Gemfile:

```ruby
gem 'sort_authority'
```

Or manually install the gem using:

```shell
gem install sort_authority
```

### Usage

```ruby
# bad
['9 Main Street', '10 Main Street'].sort
# => ['10 Main Street', '9 Main Street']

# good!
require 'sort_authority/ext/enumerable'
['9 Main Street', '10 Main Street'].natural_sort
# => ['9 Main Street', '10 Main Street']
```

### Benchmarks

Comparison of sorting an array `['x1'] * 100_000` with [naturalsort](https://rubygems.org/gems/naturalsort),
[naturally](https://rubygems.org/gems/naturally), [natcmp](https://rubygems.org/gems/natcmp),
and [sensible_sort](http://www.davekoelle.com/alphanum.html).

```
                 user     system      total        real
sort             0.000000   0.000000   0.000000 (  0.001758)
strnatcmp.c      0.030000   0.000000   0.030000 (  0.029083)
naturalsort gem  0.060000   0.000000   0.060000 (  0.061879)
naturally gem    0.990000   0.020000   1.010000 (  1.009634)
natcmp gem       1.140000   0.010000   1.150000 (  1.141950)
sensible_sort    2.280000   0.000000   2.280000 (  2.286274)
```


### Contributing

Fork, branch, and pull-request.
