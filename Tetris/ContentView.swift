//
//  ContentView.swift
//  Tetris
//
//  Created by Alina Potapova on 23.12.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var showGameView = false
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            ZStack(alignment: .bottom) {
                Text("High Score: 1200".uppercased())
                    .font(.subheadline.weight(.semibold))
                    .foregroundColor(.white)
                
            }.frame(maxHeight: .infinity, alignment: .top)
            
            VStack() {
                Text("Tetris".uppercased())
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(.white)
                    .padding(.bottom, 5)
                Button(action: {
                    showGameView.toggle()
                    print(showGameView)
                }, label: {
                    Text("Play Game")
                        .padding(20)
                        .font(.title.weight(.semibold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .background(Color.red)
                        .mask(
                            RoundedRectangle(cornerRadius: 20)
                        )
                        .padding(40)
                })
            }
            
            ZStack(alignment: .bottom) {
                Text("By Pamapp".uppercased())
                    .font(.subheadline.weight(.semibold))
                    .foregroundColor(.white)
                
            }.frame(maxHeight: .infinity, alignment: .bottom)
            
            if self.showGameView {
                ZStack {
                    GameView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
