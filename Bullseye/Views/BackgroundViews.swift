//
//  BackgroundViews.swift
//  Bullseye
//
//  Created by BD Macbook Air B on 2/6/22.
//

import SwiftUI

struct BackgroundViews: View {
    @Binding var game: Game
    var body: some View {
        VStack{
            TopView(game: $game)
            Spacer()
            BottomView(game: $game)
        }
        .padding()
        .background(
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all))
    }
}

struct TopView: View {
    @Binding var game: Game
    
    var body: some View {
        HStack{
            Button(action: {
                game.restart()
            }){
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            }
            Spacer()
            RoundedImageViewFilled(systemName: "list.dash")
            
        }
    }
}

struct NumberView: View {
    var title: String
    var text: String
    var body: some View {
        VStack(spacing: 5){
            TitleText(text: title.uppercased())
            RoundedRecTextView(text: text)
        }
        
    }
}

struct BottomView: View {
    @Binding var game: Game
    var body: some View {
        HStack{
            NumberView(title: "Score", text: String(game.score))
            Spacer()
            NumberView(title: "Round", text: String(game.round))
            
        }
    }
}
struct BackgroundViews_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundViews(game: .constant(Game()))
    }
}
