# Hatena x Dowango Hackathon

## Requirements

This app requires `Rails 4.2.5` and `Ruby 2.2.2`.

On Windows, installation of them has many problems. Please refer to [here](http://qiita.com/akaneko3/items/247af28abded3b3d3617).


## Installation

Requires the following steps:

In your develop directory, enter this:
```bash
git clone https://github.com/tattn-team/hatengo.git
cd hatengo
bundle
```
2. Create "config/secrets.yml" file.
3. Edit "config/secrets.yml" file, and set "secret_key_base". For the details, search about "config/secrets.yml".


## Test

```bash
bundle exec rspec
```


