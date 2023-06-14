
## This is

html, css(sass)のHowToや、デザインのサンプルなんかを日々追加しているリポジトリ

## Required

※sassはDart SASS

```
$node -v
v16.10.0  

$npm -v
7.24.0  

$yarn -v
3.3.1  

$sass --version
1.63.3
```

## 起動

```
yarn install
yarn server
```

## SCSSの監視、コンパイル

```
yarn sass
```

## Info

- 起動  
<http://localhost:8000/>

- 参考のサンプルサイト
<http://sample.komorikomasha.info/index.html>  
user: sample  
pass: htmlcss  

- <http://htmlcss.cat-speak.net/>

## Deploy

以下の手順でraspoiにnode.js,npm,yarn,Dart SASSのインストール、node.jsのサービス登録までやっている  
<https://monkey999.notion.site/raspi-what_is_html_css-9e5403afe1c14716b975a3d03b2675a5>

以下はTODO(または検証中)

- node-sassをラズパイでyarn installするとエラーになるので、Dart SASSで対応中
- Dart SASSで、あるディレクトリ配下のすべての.scssをコンパイルする方法がないか探し中。なければスクリプト書く
