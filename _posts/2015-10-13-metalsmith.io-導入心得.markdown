---
layout: post
title:  "metalsmith.io 導入心得"
date:   2015-10-13 16:00:24
categories: TIL
---
metalsmith.io 是 javascirpt 為核心的 static site generator，使用 HBA/Any JS 的樣版引擎。

https://github.com/donpark/hbs
Express.js view engine for handlebars.js

--
開發的核心把所有功能都當成 plugin 來開發 ..

ex:

+ autoprefixer：自動加上 brower prefix，可以很簡易的開發 CSS 不用鳥各種 borwer prefix 的差異
+ metalsmith-archive：拿來生 posts 頁的檔案櫃
+ metalsmith-assets：把靜態檔案都 include 近來 :cp _path_a _path_b
+ metalsmith-beautify：輸出表準化 ~
+ metalsmith-branch：把檔案進入 pipeline 的生產線
+ metalsmith-broken-link-checker(使用cheerio)：斷鏈檢查(internal only)
+ metalsmith-browser-sync：串接 http://www.browsersync.io/ 服務
+ metalsmith-build-date：將 build 日期丟進 metadata
+ code.metalsmith-linkcheck：檢查 internal and external 斷鏈
+ metalsmith-clean-css：簡潔的 CSS
+ metalsmith-changed：只 build changed file
+ metalsmith-cleanscript：清理 build
+ metalsmith-collections：把相關的檔案 grouping 起來並且產生順序，像是 blog posts 的日期順序、上頁、上頁切換 ..
+ metalsmith-coffee：coffeescript 
+ metalsmith-concat：把檔案都 concatenate 串接起來 ..
+ contentful-metalsmith：連接 contentful api
+ metalsmith-convert：用 imagemagick 轉換影像
+ metalsmith-copy：可以針對檔案的 patten 批次的 cpoy and rename
+ metalsmith-updated：對 genated cached file 修改或更新
+ code.metalsmith-updated：類似 metalsmith-updated 也是在處理 cached file
+ metalsmith-date-in-filename：把檔名上的日期弄進 metadata
+ metalsmith-date-formatter：一樣是處理日期：但是從 metadata 內來取 ..
+ metalsmith-define：把k/v變數存在 metadata
+ metalsmith-drafts：把 drafts 隱藏起來
+ metalsmith-duo：用來支援 duo 的 package manager
+ s3
+ root path
.
.
.
.
.

基本上就是以 metalsmith 的核心最小的方式，以 plugin 詞彙化的方式擴充讓認知達到完整：

+ 動作詞：minify、ugilify、beautify、linkcheck、define、copy、concat ....

+ 名詞動作化：coffee、duo、webpack、browser-sync、s3、root-path

+ 副詞：except ..



