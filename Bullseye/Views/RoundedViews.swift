//
//  RoundedViews.swift
//  Bullseye
//
//  Created by BD Macbook Air B on 2/6/22.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56.0, height: 56.0)
            .overlay(
                Circle()
                    .strokeBorder(Color("ButtonStrokeColor"),
                                  lineWidth: 2.0)
            )
    }
}

struct RoundedImageViewFilled: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: 56.0, height: 56.0)
            .background(
                Circle()
                    .fill(Color("TextColor")))
    }
}

struct RoundedRecTextView: View {
    var text: String
    var body: some View {
        ScoreText(text: text)
            .frame(width: 68.0, height: 56.0)
            .background(Color("BackgroundColor"))
            .foregroundColor(Color.white)
            .cornerRadius(21.0)
            .overlay(
                RoundedRectangle(cornerRadius: 21.0)
                    .strokeBorder(Color("ButtonStrokeColor"),
                                  lineWidth: 2.0)
            )
    }
}

struct PreviewView: View {
    var body: some View {
        VStack {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewFilled(systemName: "list.dash")
            RoundedRecTextView(text: "100")
        }
    }
}

struct RoundedViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}
