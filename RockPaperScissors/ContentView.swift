//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Hiro Yanagisawa on 2024/07/06.
//

import SwiftUI

struct ContentView: View {
    //画面表示の変数
    @State var jankenNumber = 0
    var body: some View {
        VStack {
            if jankenNumber == 0 {
                Text("これからじゃんけんをします！")
            }
            else if jankenNumber == 1 {
                //グーの画像を表示
                Image(.gu)
                //リサイズを指定
                    .resizable()
                //画面に収まるようにアスペクト比を維持する設定
                    .scaledToFit()
                //じゃんけんの種類を指定
                Text("グー")
            }
            else if jankenNumber == 2 {
                //チョキの画像を表示
                Image(.choki)
                //リサイズを指定
                    .resizable()
                //画面に収まるようにアスペクト比を維持する設定
                    .scaledToFit()
                //じゃんけんの種類を指定
                Text("チョキ")
            }
            else {
                //パーの画像を表示
                Image(.pa)
                //リサイズを指定
                    .resizable()
                //画面に収まるようにアスペクト比を維持する設定
                    .scaledToFit()
                //じゃんけんの種類を指定
                Text("パー")
            }
            Button(action: {
                print("タップされたよ")
                //新しいじゃんけん結果を一時的に格納する変数
                var newJankenNmber = 0
                
                //ランダムに結果を出すが、前回の結果と異なる場合のみ採用
                repeat {
                    //1...3の数値をランダムに算出
                    newJankenNmber = Int.random(in: 1...3)
                    
                    //前回の結果と同じ場合は、再度ランダムに数値を算出
                    
                    //異なる場合は、repeatを抜ける
                }while jankenNumber == newJankenNmber
                //新しいじゃんけんの結果を格納
                jankenNumber = newJankenNmber
            }, label: {
                Text("じゃんけんをする")
            })
        }
        
    }
}

#Preview {
    ContentView()
}
