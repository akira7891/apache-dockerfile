#ベースイメージを作成
FROM ubuntu:20.04
#イメージ作成時に時間設定を求められてフリーズするので、シンボリックリンクで最初に時間の設定
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
#パッケージ管理システムのインデックスを更新
RUN apt-get update
#アパッチをインストール
RUN apt-get install -y apache2
#アパッチを実行　バックグラウンドで実行するとバッシュが終了してコンテナが終了してしまうのでフォアグラウンドで実行
CMD ["apachectl", "-D", "FOREGROUND"]
