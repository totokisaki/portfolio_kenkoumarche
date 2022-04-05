# アプリケーション名

## 健康 marche

![イメージ](https://user-images.githubusercontent.com/86472761/161769098-088e1907-90fe-41f0-a76f-7b5d9f8a28c0.mp4)

# アプリケーション概要

食事や健康に興味がある方、健診でひっかかり生活を改善したい方のための情報共有アプリです。

# 目指した課題解決

病気にならないようにする「予防医学」の考え方を多くの方へ伝え、生活習慣や生活環境を改善して健康増進を図ることを目指し、このアプリを作成しました。管理栄養士として患者様とお話しする中で健康のために何かしたいけれど何をしたらいいのかわからないという方が多くいらっしゃるように感じていました。その中で特によく相談がある「食事を整えたいけれど自炊ができない、仕事の関係で外食をせざるを得ない」という方のために、健康に配慮した飲食店を調べたり、口コミを投稿したりできる機能を作成、「健診でひっかかったけれど何をしたらいいのかわからない」という方のために検査項目ごとの食事アドバイスを投稿、閲覧、個別相談ができる機能を作成しました。誰もが気軽に健康や食事に興味をもち行動しやすい社会になるきっかけになるサービスを目指しています。

# 実装した機能

1. 適正体重、必要エネルギー量（カロリー）の計算
   ![エネルギー量計算](https://user-images.githubusercontent.com/86472761/161769397-b21add39-44f3-4b67-adf7-c2bfa697a75e.mp4)
2. 健康に配慮したお店を調べる、口コミを見る書く
   ![飲食店](https://user-images.githubusercontent.com/86472761/161769563-fa673553-32e6-47bc-8be9-eaed2301f840.mp4)
3. 検査項目と栄養の関係を検索、投稿できる
   ![検査項目](https://user-images.githubusercontent.com/86472761/161769935-3f8c9a51-8b1f-41e0-9d4c-d50284331fc3.mp4)
4. 3 を投稿した人に個別で相談の依頼ができる

# ER 図

![飲食店](https://user-images.githubusercontent.com/86472761/161663438-795fb290-9249-4f43-a78e-a31eebdf90af.png)

![検査項目](https://user-images.githubusercontent.com/86472761/161663242-6ead2dee-cfe2-497b-940b-0f01f3a81f05.png)

# URL

https://tranquil-oasis-01124.herokuapp.com/

# テスト用アカウント

- メールアドレス：test1@example.co.jp
- パスワード：testuser1

# 今後の計画

- ユーザーを「相談したい人」「アドバイスする人」に分けて、システム内の情報に信憑性を高めたい
- 個別相談の予約があった場合、投稿者がメール等で通知を受け取れる機能をつけたい
