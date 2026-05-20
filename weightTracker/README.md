# ORDER65 Weight Tracker

シンプルな個人用体重記録アプリです。
ブラウザ上で動作し、DBを使用せず LocalStorage を利用して体重データを保存します。

## 概要

毎日の体重記録を素早く残すことを目的とした単機能アプリです。

記録項目：

- Date（日付）
- Weight（体重）
- Fat（体脂肪率）
- Waist（腹囲）

機能：

- 前回値の自動入力
- ±ボタンで簡単調整
- 手動入力対応
- 当日データ上書き
- 履歴表示
- LocalStorage保存

## 技術構成

- HTML
- CSS
- JavaScript
- LocalStorage

初期段階ではサーバーサイドDBを使用しません。

将来的な拡張候補：

- PHP + JSON保存
- グラフ表示
- PWA対応
- 7日平均表示
- ORDER65進捗表示

---

## 実行方法

index.html をブラウザで開くだけで利用可能です。

またはサーバーへ配置：

```text
/public_html/tools/weight/
```

例：

```text
https://example.com/tools/weight/
```

---

## 注意事項

このリポジトリは開発者個人が利用する目的で作成した個人プロジェクトです。

学習・検証・個人運用を前提としており、一般公開サービスとしての運用は想定していません。

---

## 利用規約

Copyright (c) 2026

本ソフトウェアおよびソースコードの二次利用、再配布、改変、転載、商用利用を禁止します。

許可なく以下を禁止します：

- 再配布
- コピー利用
- 改変物の公開
- 商用利用
- 一部流用

All Rights Reserved.

---

ORDER65 Project Prototype