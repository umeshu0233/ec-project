# 🌐 Webアプリケーション開発ポートフォリオ（Java / JSP / Servlet）

## 📘 概要
Java / JSP / Servlet / SQL を用いて開発した Web アプリケーションです。  
ユーザー管理・データ登録・検索などの CRUD 処理を実装し、MVC 設計と DB 連携を学習目的で作成しました。

---

## 🛠 開発環境
| 項目 | 内容 |
|------|------|
| 言語 | Java（JDK 17 など） |
| フレームワーク | Servlet / JSP（Jakarta EE） |
| データベース | H2DB|
| ビルドツール | Apache Maven または Eclipse Dynamic Web Project |vv
| アプリケーションサーバー | Apache Tomcat 10.x |
| IDE | Eclipse / IntelliJ IDEA / VS Code |
| バージョン管理 | Git / GitHub |
| OS |  Windows |

---

## 🧩 機能一覧
1. ユーザー関連

ログイン機能
DBUtil.javaでDB接続しユーザー認証

2. 商品関連（Product）

商品一覧表示

商品情報管理（DAO / Service）

商品価格・説明取得
（コード上は表示用中心っぽい）

3. カート機能（Cart）
カート追加
カート内容表示

4. 注文関連（Order）
注文確認画面
注文内容の確認
注文完了

---

## 📂 ディレクトリ構成
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

---

## 🗄 データベース構成
### 📘 ER図
> 画像を `docs/er_diagram.png` に差し替えてください。  
> 例：  
> ![ER図](./docs/er_diagram.png)

### テーブル定義例：users

|H2DB JDBC URL  : jdbc:h2:~/ecdb;MODE=MySQL;AUTO_SERVER=TRUE
| カラム名 | 型 | 説明 |
|-----------|----|------|
| id | INT | 主キー（AUTO_INCREMENT） |
| name | VARCHAR(50) | ユーザー名 |
| email | VARCHAR(100) | メールアドレス |
| password | VARCHAR(255) | ハッシュ化されたパスワード |
| created_at | DATETIME | 登録日時 |

---

## 🧠 設計方針・工夫点
- MVC設計：Servlet（Controller）、DAO（Model）、JSP（View）を分離
- SQLインジェクション対策として **PreparedStatement** を使用
- パスワードは **ハッシュ化（SHA-256 / bcrypt）** して保存
- JSP include によるヘッダー・フッターの共通化
- ER図・シーケンス図を用いて処理を明確化

---

## 📊 UML / 設計資料
> 以下のファイルを差し替えてください（今はプレースホルダー画像です）：
>
> - `docs/usecase.png`：ユースケース図  
> - `docs/uml_sequence.png`：シーケンス図  
> - `docs/class_diagram.png`：クラス図  
>
> 例：  
> ![シーケンス図](./docs/uml_sequence.png)

---

## 💬 使用技術のポイント
- **Servlet & JSP**：HTTPリクエスト処理・セッション管理・リダイレクト制御  
- **DAOパターン**：DB操作の共通化・保守性向上  
- **SQL**：CRUD・JOIN・トランザクション  
- **HTML/CSS**：UI / フォーム入力補助  
- **Tomcat**：WARデプロイ・ローカルテスト環境構築  

---

## 🧭 今後の拡張予定
- Bootstrap / Vue.js の導入でUI改善  
- REST API 化（JSON対応）  
- Docker による環境構築自動化  
- ログイン履歴・アクセスログの分析機能追加  
- JUnit / Mockito による単体テストの充実  

---

## 📸 画面キャプチャ（例）
> - `docs/login_screen.png`  
> - `docs/list_screen.png`  
>
> 例：  
> ![ログイン画面](./docs/login_screen.png)

---

## 🧾 ライセンス・著作権
このプロジェクトは学習目的で作成したものであり、商用利用は想定していません。  
各種ライブラリ・ツールのライセンスはそれぞれの作者に帰属します。

---

## 👤 作成者
- **氏名：umeshu0233
- **開発期間**：2025年11~
- **連絡先**：umedashunyacoco@gmail.com
- **GitHub**：https://github.com/umeshu0233/ec-project.git

---

## ✅ 最終更新日
2025-11-20

---

> ✏️ **編集方法**：VS Code / Typora などの Markdown 対応エディタで開くと、見出しや画像をプレビューできます。
