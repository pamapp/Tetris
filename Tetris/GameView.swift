//
//  GameView.swift
//  Tetris
//
//  Created by Alina Potapova on 23.12.2021.
//

import SwiftUI

struct GameView: View {
//    @EnvironmentObject var vm: TetrisViewModel
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            ZStack {
                HStack(spacing: 90) {
                    Button(action: {
                        print("menu")
                    }, label: {
                        Image(systemName: "house.circle.fill")
                            .font(.title.weight(.bold))
                            .foregroundColor(.yellow)
                    })
                    
                    Text("Score: 0".uppercased())
                        .font(.subheadline.weight(.semibold))
                        .foregroundColor(.white)
                    
                    Button(action: {
                        print("stop")
                    }, label: {
                        Image(systemName: "pause.circle.fill")
                            .font(.title.weight(.bold))
                            .foregroundColor(.yellow)
                    })
                }
            }.frame(maxHeight: .infinity, alignment: .top)
            
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .foregroundColor(.secondary)
                .padding(.top, 50)
                .padding(.bottom, 120)
                .padding(.trailing, 30)
                .padding(.leading, 30)
//                .overlay(
//                    GeometryReader { (geometry: GeometryProxy) in
//                        self.drawBoard(boundingRect: geometry.size)
//                    }
//                    .gesture(tetrisGame.getMoveGesture())
//                    .gesture(tetrisGame.getRotateGesture())
//                )
            
            ZStack {
                HStack(spacing: 45) {
                    Button(action: {
                       print("left")
                    }, label: {
                        ZStack {
                            Image(systemName: "arrow.left")
                                .foregroundColor(.white)
                                .font(.title.weight(.bold))
                                .frame(width: 70, height: 70)
                                .background(Color.yellow)
                                .mask(
                                    RoundedRectangle(cornerRadius: 15)
                                )
                        }
                    })
                    
                    Button(action: {
                        print("bottom")
                    }, label: {
                        ZStack {
                            Image(systemName: "arrow.down")
                                .foregroundColor(.white)
                                .font(.title.weight(.bold))
                                .frame(width: 70, height: 70)
                                .background(Color.yellow)
                                .mask(
                                    RoundedRectangle(cornerRadius: 15)
                                )
                        }
                    })
                    
                    Button(action: {
                        print("right")
                    }, label: {
                        ZStack {
                            Image(systemName: "arrow.right")
                                .foregroundColor(.white)
                                .font(.title.weight(.bold))
                                .frame(width: 70, height: 70)
                                .background(Color.yellow)
                                .mask(
                                    RoundedRectangle(cornerRadius: 15)
                                )
                        }
                    })
                }
            }.frame(maxHeight: .infinity, alignment: .bottom).padding(20)
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
