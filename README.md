# periodic-slack-bot-on-aws-lambda

指定のSlackチャンネルへ予め設定した間隔または時間帯にメッセージを投稿するbot。

※ AWS Lambdaで稼働中。

参照記事: [Ruby × AWS Lambda × CloudWatch Eventsで定期実行プログラムを作成する](https://qiita.com/kazama1209/items/ab6bd2c09adaadba8cf6)

## セットアップ

### Rubyのバージョン指定

```
$ rbenv local 2.5.1

# 本リポジトリはRuby2.5.1で作成しているが、それぞれ任意のバージョンでOK。
```

### 環境変数のセットやbundle installなど初期設定

```
$ make init 

# .env内に各自環境変数をセット。
# 例) SLACK_BOT_TOKEN=xoxb-******-******-******, SLACK_CHANNEL_NAME=#slack-bot-test
```

### SlackBotの起動
```
$ make run

# 成功時は指定のSlackチャンネルに「テスト送信 from AWS Lambda」というメッセージが飛ぶ。
```

![スクリーンショット 2020-10-10 16 31 56](https://user-images.githubusercontent.com/51913879/95648974-2d2c5c00-0b16-11eb-80b3-1b20dcc6ff67.png)
