

# 安裝 Vagrant

https://www.vagrantup.com/downloads.html

# 設定 git 並且 clone 專案

`git config --global user.name "Put Your Name"`

`git config --global user.email Put@Your Email Here`

`git clone https://github.com/huayinthon/til.git ~/blog`

# 啟動 vagrant 並 ssh 登入 vagrant box

`cd ~/blog` 

`vagrant up`

`vagrant ssh`

# 啟動 jekyll 

`cd /vagrant`

`jekyll serve --host 0.0.0.0``

# 開啟瀏覽器

`http://127.0.0.1:8808/`

# 可選擇刪除 vagrant destroy 環境

`cd ~/blog`

`vagrant destroy`

# 可選擇保留 vagrant halt 環境

`cd ~/blog`

`vagrant halt`
