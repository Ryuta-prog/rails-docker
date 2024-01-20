# README

環境構築方法
1. 以下のリポジトリを自分のGitHubアカウント配下に設置
https://github.com/ihatov08/rails7_docker_template
緑色のボタンUse this templateをクリックし、Create a new repositoryを選択
任意のリポジトリ名を入力する(ここではrails-docker)<br>
2. 設置したリポジトリをローカルにクローン
git clone https://github.com/Ryuta-prog/rails-docker<br>
3. DBはpostgresのversion12を使用
ホストのファイルシステムとコンテナのファイルシステムを同期させる<br>
4. docker-compose upでrailsプロセスとdbが起動し、http://localhost:3000 でアクセスできるようにする<br>
5. docker-compose.ymlファイルの18行目 bash -c "rm -f tmp/pids/server.pid && rails db:create && rails db:migrate && rails s -b 0.0.0.0" において && rails db:create は初回のみ実行し、2回目以降は削除する