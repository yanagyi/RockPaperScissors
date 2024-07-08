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
    //出した手の変数
    @State var selectNumber = 0
    var body: some View {
        VStack {
            //画面上部にスペースを設ける
            Spacer()
            
            if jankenNumber == 0 {
                Text("これからじゃんけんをします！")
                Text("出す手を選んでください。")
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
                if selectNumber == 1{
                    Text("あいこです！")
                        .padding(.bottom)
                }
                else if selectNumber == 2{
                    Text("あなたの負けです！")
                        .padding(.bottom)
                }
                else if selectNumber == 3{
                    Text("あなたの勝ちです！")
                        .padding(.bottom)
                }
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
                if selectNumber == 1{
                    Text("あなたの勝ちです！")
                        .padding(.bottom)
                }
                else if selectNumber == 2{
                    Text("あいこです！")
                        .padding(.bottom)
                }
                else if selectNumber == 3{
                    Text("あなたの負けです！")
                        .padding(.bottom)
                }
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
                if selectNumber == 1{
                    Text("あなたの負けです！")
                        .padding(.bottom)
                }
                else if selectNumber == 2{
                    Text("あなたの勝ちです！")
                        .padding(.bottom)
                }
                else if selectNumber == 3{
                    Text("あいこです！")
                        .padding(.bottom)
                }
            }
            HStack{
                //グーのボタン
                Button(action: {
                    print("グーを選択")
                    //1...3の数値をランダムに算出
                    jankenNumber = Int.random(in: 1...3)
                    selectNumber = 1
                }, label: {
                    Text("グー")
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .background(.pink)
                        .foregroundColor(.white)
                })
                //チョキのボタン
                Button(action: {
                    print("チョキを選択")
                    //1...3の数値をランダムに算出
                    jankenNumber = Int.random(in: 1...3)
                    selectNumber = 2
                }, label: {
                    Text("チョキ")
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .background(.orange)
                        .foregroundColor(.white)
                })
                //パーのボタン
                Button(action: {
                    print("パーを選択")
                    //1...3の数値をランダムに算出
                    jankenNumber = Int.random(in: 1...3)
                    selectNumber = 3
                }, label: {
                    Text("パー")
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .background(.blue)
                        .foregroundColor(.white)
                })
            }
        }
    }
}

#Preview {
    ContentView()
}
