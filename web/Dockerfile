# Debianがベースのrubyイメージを指定
FROM ruby:2.5.1

# 必要なものをインストール
RUN apt-get update -qq && apt-get -y install \
    build-essential \
    libpq-dev 

## install nodejs
RUN curl -s -L git.io/nodebrew | perl - setup
ENV PATH /root/.nodebrew/current/bin:$PATH
RUN nodebrew install-binary v8.7.0
RUN nodebrew use v8.7.0

## install yarn
RUN npm install yarn -g

# rails用のディレクトリを作成
RUN mkdir /JPHACKS

# ローカルマシン(Mac)からコンテナの中にファイルをコピー
COPY . /JPHACKS

# 作業ディレクトリを指定
WORKDIR /JPHACKS

# 上でコピーしたGemfileに従ってGemをインストール
RUN gem install bundler && bundle install

CMD ["rails", "s", "-b", "0.0.0.0"]
