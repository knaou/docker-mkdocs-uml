package ci
// 使うコマンドをインポートする
import (
  "dagger.io/dagger"
  "universe.dagger.io/docker"
)
// 実行するプラン。
dagger.#Plan & {
  // 実行するクライアントの設定
  client: {
    env: {
      //イメージのpush先
      PUSH_IMAGE: string | *""
    }
    filesystem:{
      "./": read: {
        contents: dagger.#FS
        exclude: [
          "ci.cue",
        ]
      }
    }
  }
  // 定義するAction
  actions: {
    // ビルドする
    build: docker.#Dockerfile & {
      source: client.filesystem."./".read.contents 
      dockerfile: path: "Dockerfile"
    }
    // Pushする
    push: docker.#Push & {
      image: build.output
      dest: client.env.PUSH_IMAGE
    }
  }
}

