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
                                  lineWidth: Constants.General.strokeWidth)
            )
    }
}

struct RoundedImageViewFilled: View {
    var systemName: String

    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .background(
                Circle()
                    .fill(Color("TextColor")))
    }
}

struct RoundedTextView: View {
    let text: String
    var body: some View {
        ScoreText(text: text)
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewHeight)
            .overlay(
                Circle()
                    .strokeBorder(Color("LeaderboardRowColor"),
                                  lineWidth: Constants.General.strokeWidth)
            )
    }
}

struct RoundedRecTextView: View {
    var text: String
    var body: some View {
        ScoreText(text: text)
            .frame(width: Constants.General.roundedViewWidth, height: Constants.General.roundedViewHeight)
            .background(Color("BackgroundColor"))
            .foregroundColor(Color.white)
            .cornerRadius(Constants.General.roundedRectCornerRadius)
            .overlay(
                RoundedRectangle(cornerRadius: Constants.General.roundedRectCornerRadius)
                    .strokeBorder(Color("ButtonStrokeColor"),
                                  lineWidth: Constants.General.strokeWidth)
            )
    }
}

struct PreviewView: View {
    var body: some View {
        VStack {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewFilled(systemName: "list.dash")
            RoundedRecTextView(text: "100")
            RoundedTextView(text: "50")
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
