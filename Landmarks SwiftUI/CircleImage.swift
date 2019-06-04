//
//  CircleImage.swift
//  Landmarks SwiftUI
//
//  Created by Geoffrey Caven on 2019-06-04.
//  Copyright © 2019 Geoffrey Caven. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    var body: some View {
        Image("turtlerock")
          .clipShape(Circle())
          .overlay(
            Circle().stroke(Color.white, lineWidth: 4))
          .shadow(radius: 10)
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
#endif
