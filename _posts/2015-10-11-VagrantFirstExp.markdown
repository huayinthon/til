---
layout: post
title:  "Vagrant使用初體驗"
date:   2015-10-11 16:00:24
categories: TIL
---

# Vagrant使用初體驗 #
## 使用Vagrant來管理VM,更新還在來回copy VM檔當開發/測試環境的老思想 ##

## 前言 ##
記得在某家公司工作的時候，開發人員接手維護舊專案時常常去跟前手copy一份VM檔
可是這往往很麻煩也會生出一些莫名的問題，像是為什麼VM多了一些跟專案無關的莫名軟體或文件。我今天就只想拿到source code無痛建立一個單純的開發環境與擁有一個跟正式上線的環境的相同VM。Vagrant就可以無痛並且自動化幫我們來完成這一件事，更可以在建立VM時就把相關套件指定，讓開發者不用去苦惱惱人的環境建置，而專注於其它功能的建立。


## 釋例 ##
下面就用[Vagrant](https://www.vagrantup.com/)來在Windows上建立一個Linux的VM開發環境，在[til專案](https://github.com/huayinthon/til)裡，小組成員[Jason](https://github.com/orgs/huayinthon/people/jasonatfleepio)提供了簡明的[安裝說明](https://github.com/huayinthon/til/blob/master/development.md)，我以這說明為例，讓我們秒速建立VM。


步驟

1.下載Vagrant,在Win環境下只需next安裝無須額外設定,安裝完成會需要reboot一次

2.打開cmd 輸入`vagrant -v`看看是否安裝完成,如有錯誤(比如 **command not found** )可能是環境變數沒有順利設置(解決方式:[參閱](https://gist.github.com/chgu82837/ab1255846b5335407105)最下方說明)

3.Win需自行安裝Virtual Box,在Linux下安裝會自動安裝Virtual Box

4.再來我們需要一個IMG檔來當我們的**Box**(**註1**),在專案的目錄裡成員Jason已經幫我們建立好一個檔案並且指定好Box,
如果自行建立則需輸入命令 `vagrant init`
此時會在目錄裡看到[**Vagrantfile**](http://docs.vagrantup.com/v2/vagrantfile/index.html),裏頭有一些英文設定說明，在此我使用了成員提供的**Vagrantfile**,裏頭已經指定了`config.vm.box = "ubuntu/trusty64"`
並且指定了專案環境該有的套件如jekyll,nodejs,gem等

5.輸入`Vagrant up`並開始下載VM並且安裝套件

6.透過ssh進入VM

7.啟動專案的服務,這樣一來我們便可以在我們的本地端看到部屬完成的結果了


## 結論 ##

從上述步驟中我們可以看到再導入VM過程中我們可以再安裝專安所依賴的套件，並且等Vagrant自動化的幫我們做好一個開發和上線環境一樣的VM不僅省去部屬成本，我們可以讓整個團隊的開發環境趨於一致，在一致化的環境裡我們可以有很大的機會來發現潛在的缺失,畢竟如果**開發跟自己來打電動的環境還是有差異**的或者快速修正專案的功能走向。對CI或敏捷開發頗具效益。
Kevin
上述文章如有錯誤，歡迎鞭策!請來我們的chanel跟我們哈拉~


**註1**:當你已經安裝好Virtual Box以及Vagrant後，你要開始思考你想要在你的VM上使用什麼作業系統，一個打包好的作業系統環境在Vagrant稱之為Box，也就是說每個Box都是一個打包好的作業系統環境引用自[http://gogojimmy.net/2013/05/26/vagrant-tutorial/](http://gogojimmy.net/2013/05/26/vagrant-tutorial/)




