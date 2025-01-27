<details>
<summary>1/27 - "ActiveSupport::LoggerThreadSafeLevel::Logger (NameError)"</summary>
Solution

- Removed unused babel plugins
- Aligned the "loose" mode
- Reinstalled node and recompiled with rails/webpacker installation commands

```
# Use node 16 to avoid the openSSL error with webpack 4 on node 17/18
nvm install 16
nvm use 16

# Remove old node modules and lockfile, then reinstall for a clean environment
rm -rf node_modules yarn.lock
yarn install

# Remove webpacker then re-add it
bundle remove webpacker
bundle add webpacker -v "~> 5.4.0"

# Reinstall Webpacker
bundle exec rails webpacker:install

# Compile assets again
bin/rails assets:precompile
```

sources: 
- [StackOverflow](https://stackoverflow.com/questions/79360526/uninitialized-constant-activesupportloggerthreadsafelevellogger-nameerror)
- [GitHub](https://github.com/rails/rails/issues/54260)
</details>