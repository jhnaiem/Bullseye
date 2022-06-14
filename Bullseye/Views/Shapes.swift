//
//  Shapes.swift
//  Bullseye
//
//  Created by BD Macbook Air B on 2/6/22.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack {
            Circle()
                .strokeBorder(Color.white, lineWidth: 10.0)
                .frame(width: 200, height: 100.0)
        }
        .background(Color.blue)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
