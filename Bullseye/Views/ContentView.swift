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
                Text("🎯🎯🎯 \nPut the bullseye as you can to".uppercased())
                        .bold()
                        .kerning(2.0)
                        .multilineTextAlignment(.center )
                        .lineSpacing(4.0)
                        .font(.footnote)

                Text(String(game.target))
                    .kerning(-1.0)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    HStack {
                        Text("1")
                            .bold()
                        Slider(value: $sliderValue, in: 1.0...100.0)
                        Text("100")
                            .bold()
                    }
                    .padding()
                
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
                        .alert("Hello there!", isPresented: $alertIsVisible){
                            Button("Awesome"){}
                        }message: {
                            let roundedValue = Int(sliderValue.rounded())
                            Text("The slider value is \(roundedValue).\n" + "You scored \(self.game.points(sliderValue: roundedValue)) points this round.")
                        }
                
            }
        }
    }
}

struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
