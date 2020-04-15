//
//  CircleImage.swift
//  Landmarks
//
//  Created by Robin Malhotra on 15/04/2020.
//  Copyright © 2020 Robin Malhotra. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
