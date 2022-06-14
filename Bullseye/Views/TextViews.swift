//
//  TextViews.swift
//  Bullseye
//
//  Created by BD Macbook Air B on 1/6/22.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .foregroundColor(Color("TextColor"))
    }
}

struct BigNumberText: View {
    var text: String

    var body: some View {
        Text(text)
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
    }
}

struct LeaderboardText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .kerning(2.0)
            .font(.title)
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
    }
}

struct SliderLabelText: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .frame(width: 35.0)
    }
}

struct LabelText: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .frame(width: 70.0)
    }
}

struct TitleText: View {
    var text: String
    var body: some View {
        Text(text)
            .kerning(1.5)
            .bold()
            .font(.caption)
            .foregroundColor(Color("TextColor"))
    }
}

struct BodyText: View {
    var text: String
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .lineSpacing(7.0)
            .font(.subheadline)
            .foregroundColor(Color("TextColor"))
    }
}

struct ButtonText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .bold()
            .font(.body)
            .foregroundColor(Color.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                Color.accentColor
            )
            .cornerRadius(Constants.General.roundedRectCornerRadius)
    }
}

struct ScoreText: View {
    var text: String
    var body: some View {
        Text(text)
            .kerning(-0.2)
            .bold()
            .font(.title3)
            .foregroundColor(Color("TextColor"))
    }
}

struct DateView: View {
    let date: Date
    var body: some View {
        Text(date, style: .time)
            .kerning(-0.2)
            .bold()
            .font(.title3)
            .foregroundColor(Color("TextColor"))
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "Instructions")
            BigNumberText(text: "00")
            SliderLabelText(text: "00")
            TitleText(text: "00")
            ScoreText(text: "00")
            BodyText(text: "You Scored 200 Points\n 🎉🎉🎉")
            ButtonText(text: "Start New Round")
            DateView(date: Date())
            LeaderboardText(text: "Leaderboard")
            LabelText(text: "Text")
        }
        .padding()
    }
}
