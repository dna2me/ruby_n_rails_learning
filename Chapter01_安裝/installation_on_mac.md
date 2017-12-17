# 前提
安裝的方式很多，我個人習慣使用 rbenv + ruby-build 手動安裝。

先講操作方式再講安裝概念。

## 懶人包指令
    cd ~
    git clone https://github.com/rbenv/rbenv.git ~/.rbenv
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
    ~/.rbenv/bin/rbenv init
    git clone https://github.com/rbenv/ruby-build.git .rbenv/plugins/ruby-build
    rbenv install 2.3.6
    gem install bundler

## 概念
在家目錄下面新增一個 .rbenv 資料夾，並且在 .rbenv/plugins 下面安裝 ruby-build。透過 rbevn install 的指令就可以安裝 ruby。第一個一定要安裝的 gem 是 bundler，方便快速下載專案中 Gemfile 要求的library。


# Reference

[Why rbenv?](https://github.com/rbenv/rbenv/wiki/Why-rbenv%3F)

[rbenv](https://github.com/rbenv/rbenv)

[ruby-build](https://github.com/rbenv/ruby-build/wiki#suggested-build-environment) 