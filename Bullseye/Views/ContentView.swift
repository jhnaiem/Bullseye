//
//  ContentView.swift
//  Bullseye
//
//  Created by BD Macbook Air B on 28/5/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack{
                InstructionsViews(game: $game)
                SliderView(sliderValue: $sliderValue)
                HitMeButtonView(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
                
            }
        }
    }
}

struct InstructionsViews: View {
    @Binding var game: Game
    var body: some View {
        VStack {
            InstructionText(text: "🎯🎯🎯 \nPut the bullseye as you can to")
                .padding(.leading, 30.0)
                .padding(.trailing, 30.0)
            BigNumberText(text: String(game.target))
        }
    }
}

struct SliderView: View {
    @Binding var sliderValue: Double
    var body: some View {
        HStack {
            SliderLabelText(text: "1")
            Slider(value: $sliderValue, in: 1.0...100.0)
            SliderLabelText(text: "100")
        }
        .padding()

    }
}

struct HitMeButtonView: View {
    @Binding  var alertIsVisible: Bool
    @Binding  var sliderValue: Double
    @Binding  var game: Game
    var body: some View {
        Button(action: {
            print("Hello, SwiftUI!")
            self.alertIsVisible = true
        }) {
            Text("Hit me".uppercased())
                .bold()
                .font(.title3)
        }
        .padding(20.0)
        .background(ZStack {
            Color("ButtonColor")
            LinearGradient(colors: [Color.white.opacity(0.3),Color.clear], startPoint: .top, endPoint: .bottom)
        })
        .foregroundColor(Color.white)
        .cornerRadius(21.0)
        .overlay(RoundedRectangle(cornerRadius: 21.0)
            .strokeBorder(Color.white, lineWidth: 2.0))
        .alert("Hello there!", isPresented: $alertIsVisible){
            Button("Awesome"){}
        }message: {
            let roundedValue = Int(sliderValue.rounded())
            Text("The slider value is \(roundedValue).\n" + "You scored \(self.game.points(sliderValue: roundedValue)) points this round.")
        }
    }
}

struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
