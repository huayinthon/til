---
layout: post
title:  "深夜遇見華陰街(Jekyll)安裝說明"
date:   2015-10-10 00:00:00
categories: TIL
---

# 深夜遇見華陰街(Jekyll)安裝說明 #
## 使用Windows 8.1環境

- 1.install Ruby x64 on Win8.1 
- 2.install Ruby DevKit on Win8.1
- 3.Install the Jekyll Gem
- 4.Use Jekyll sample from "til"
- 5.Win Cmd to Folder and run jekyll server

可能出現的錯誤:
**: cannot load such file -- jekyll-redirect-from (LoadError)**
解決:

安裝套件**gem install jekyll-redirect-from**

可能出現的警告
>   Dependency Error:  Yikes! It looks like you don't have rdiscount or one of its
>  dependencies installed. In order to use Jekyll as currently configured, you'll
> need to install this gem. The full error message from Ruby is: 'cannot load such
>  file -- rdiscount' If you run into trouble, you can find helpful resources at h
> ttp://jekyllrb.com/help/!
>   Conversion error: Jekyll::Converters::Markdown encountered an error while conv
> erting '_posts/2015-10-08-til.markdown/#excerpt':
>                     rdiscount
>              ERROR: YOUR SITE COULD NOT BE BUILT:
>                     ------------------------------------
>                     rdiscount

因為使用rdiscount來渲染Markdown需要安裝
接下來就可以簡簡單單啟動Jekyll了

![](http://i.imgur.com/87jSETB.jpg)
