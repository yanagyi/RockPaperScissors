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
            //画面上部にスペースを設ける
            Spacer()
            
            if jankenNumber == 0 {
                Text("これからじゃんけんをします！")
                //下辺に余白を設定
                    .padding(.bottom)
            }
            else if jankenNumber == 1 {
                //グーの画像を表示
                Image(.gu)
                //リサイズを指定
                    .resizable()
                //画面に収まるようにアスペクト比を維持する設定
                    .scaledToFit()
                //画面にスペースを設ける
                Spacer()
                //じゃんけんの種類を指定
                Text("グー")
                //下辺に余白を設定
                    .padding(.bottom)
            }
            else if jankenNumber == 2 {
                //チョキの画像を表示
                Image(.choki)
                //リサイズを指定
                    .resizable()
                //画面に収まるようにアスペクト比を維持する設定
                    .scaledToFit()
                //画面上部にスペースを設ける
                Spacer()
                //じゃんけんの種類を指定
                Text("チョキ")
                //下辺に余白を設定
                    .padding(.bottom)
            }
            else {
                //パーの画像を表示
                Image(.pa)
                //リサイズを指定
                    .resizable()
                //画面に収まるようにアスペクト比を維持する設定
                    .scaledToFit()
                //画面上部にスペースを設ける
                Spacer()
                //じゃんけんの種類を指定
                Text("パー")
                //下辺に余白を設定
                    .padding(.bottom)
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
                //ボタンの装飾
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .background(.pink)
                    .foregroundColor(.white)
            })
        }
        
    }
}

#Preview {
    ContentView()
}
