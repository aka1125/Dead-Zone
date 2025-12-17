# dzoneコマンド
![test](https://github.com/aka1125/Dead-Zone/actions/workflows/test.yml/badge.svg)

デッドゾーン（不感帯）: ノイズの多い信号から、意味のある変化だけを抽出する非線形フィルタ

# インストール手順 ・使用例

```bash
$ git clone https://github.com/aka1125/Dead-Zone
$ cd Dead-Zone
$ chmod +x dzone
$ cat inputEX.txt | ./dzone
1.0
1.0
1.0
1.0
1.0
1.12
1.12
1.12
1.28
```

## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.13.5, 3.7〜3.10

## テスト環境
- Ubuntu 22.04.4 LTS
- Python 3.13.5（64bit）
# 権利について
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．

- © 2025 Yusaku Aka
