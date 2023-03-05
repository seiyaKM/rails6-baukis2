# はじめに
本ソースコードは「Ruby on Rails6 実戦ガイド」のハンズオンです

# 環境
- docker
- docker compose
- vscode
    - dev container
    - prettier
    - prettier+

# memo
- VSCode上でrubyコードをフォーマット（prettierを使って）するため、Dev Containerを利用し、VSCodeとコンテナを接続
このことで、コンテナに依存したExtensionを追加できるようになり、フォーマッターが効くようになった

- Dev Container内でgitの設定し直しかと思ったが、ホスト側の設定を引き継いでいるようで特に設定する必要なさそう
    - ただ、push時「Could not read from remote repository」が表示されたためリモートを再指定する必要がありそう？
    ホスト側のターミナルでpushすればいいので一旦気にしない

- 利用してるnodeのバージョンだとwebpackerのバンドルに失敗する
環境変数に `NODE_OPTIONS=--openssl-legacy-provider` を指定しておくとうまくいく
