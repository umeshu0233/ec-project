# 🐟 Freshwater Fish Shop  
淡水魚を扱うECサイトのポートフォリオ作品です。

---

## 📌 概要（Overview）
淡水魚を販売するECサイトを想定して作成しました。  
商品一覧表示、カート、注文処理などの基本機能を実装しています。

---

## ✨ 主な機能（Features）
- 商品一覧表示（生体）
- 商品詳細ページ
- カート機能
- 注文（擬似注文）機能

---

## 🛠 使用技術（Tech Stack）
Frontend:
JSP（Java Server Pages）
HTML / CS

Backend:
Java（Servlet）
Tomcat 10（Java21）

Database :　H2DB

Build / Tools:

Maven / Eclipse



---

## 💡 工夫したポイント（Key Points）
- 
- 淡水魚ショップらしい UI（色味・アイコン）を意識  
- カート処理・在庫処理を簡潔なロジックに整理  
- データをコンポーネントごとに分離し可読性を向上  
- 今後機能を足しやすい構成を意識  

---

---

## 📁 ディレクトリ構成（Directory Structure）

```
MyECProject
├─ JRE システム・ライブラリー [JavaSE-21]
├─ Tomcat10 (Java21)
├─ 参照ライブラリー
│
├─ src
│  └─ main
│     ├─ java
│     │   └─ ec
│     │       ├─ controller
│     │       │    ├─ CartServlet.java
│     │       │    ├─ OrderServlet.java
│     │       │    └─ ProductServlet.java
│     │       │
│     │       ├─ DBUtil.java
│     │       └─ ProductDAO.java
│     │
│     └─ webapp
│         ├─ css
│         │    └─ style.css
│         ├─ images
│         ├─ META-INF
│         ├─ WEB-INF
│         ├─ cart.jsp
│         ├─ index.jsp
│         ├─ login.jsp
│         ├─ orderComplete.jsp
│         ├─ orderConfirm.jsp
│         └─ productList.jsp
│
├─ build
│
└─ README.md
```
```

---

## 📝 今後追加したい機能（Future Improvements）
- 生体発送日の自動計算
- 入荷通知 / お気に入り
- ユーザー認証
- 注文履歴
- もっと詳細な検索（サイズ、水質、混泳可否）
- 商品レビュー

---

## 👤 作成者
- **氏名**：umesh0233
- **開発期間**：2025年11月〜12月
- **連絡先** umedashunyacoco@gmail.com
- **GitHub**：https://github.com/umeshu0233/ec-project.git 
