# cheapClaude CC

[中文](README.md) | [English](README_EN.md) | **日本語** | [한국어](README_KO.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | [Español](README_ES.md) | [Русский](README_RU.md)

より安価なClaudeモデル（claude-opus-4-20250514）を使用してClaude Codeを駆動します。

[claude-opus-4-20250514性能パラメータの包括的調査](https://www.anthropic.com/claude/opus)

## クイックインストール

1. CursorAIオープンプラットフォームでAPI Keyを申請してください。

こちらをクリック：[CursorAIオープンプラットフォーム](https://api.cursorai.art/register?aff=xoXg/)

右上角コンソール -> APIトークン -> トークンを追加 -> 下までスクロール -> グループ設定でトークンを**純AZ**グループに設定

2. クイックインストール - API Keyの入力を求められますので、最後にEnterを押してください。

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/XTurnV007/cheapClaude-cc/refs/heads/main/install.sh)"
```

3. 低コストでClaude Codeの使用を開始します。

```shell
claude
```

## 機能

- **コスト効率**: Anthropic APIの代わりにCursor Aiの競争力のある価格設定を使用
- **簡単セットアップ**: 自動構成による1コマンドインストール
- **シームレス統合**: 既存のClaude Codeワークフローと連携
- **最新モデル**: Cursor Aiのclaude-opus-4-20250514モデルを使用

## インストーラーの動作

インストールスクリプトは自動的に以下を実行します：
1. Node.js（v18+）をチェックし、必要に応じてインストール
2. npmを介してClaude Codeをグローバルにインストール
3. オンボーディングをスキップするようにClaude Codeを構成
4. CursorAi API keyの入力を促す
5. API呼び出しをCursor Aiのサーバーにリダイレクトする環境変数を設定

## 手動構成

手動で構成したい場合は、以下の環境変数を設定してください：

```bash
export ANTHROPIC_BASE_URL=https://api.cursorai.art/anthropic/
export ANTHROPIC_API_KEY=your_CursorAi_api_key_here
```

## サポート

問題や質問については、[Cursor Ai Open Platform](https://api.cursorai.art/register?aff=xoXg)をご覧いただくか、元のClaude Codeドキュメントをご確認ください。 