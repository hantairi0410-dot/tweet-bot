# Playwright公式イメージを使用 (Node.js, ブラウザ同梱)
# バージョンはプロジェクトに合わせて適宜変更してください
FROM mcr.microsoft.com/playwright:v1.40.0-focal

# 作業ディレクトリ設定
WORKDIR /app

# 定義ファイルをコピー
COPY package.json ./

# 依存関係インストール
RUN npm install

# ソースコードをコピー
COPY . .

# デフォルトコマンド (ヘルプ表示)
CMD ["npx", "tsx", "src/index.ts"]
