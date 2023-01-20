//
//  CircleImage.swift
//  explorer
//
//  Created by Lelafe on 09/01/23.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var width: CGFloat = 100
    var height: CGFloat = 100
    
    var body: some View {
        image
            .resizable()
            .frame(width: width, height: height)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(
            image: Image("turtlerock"),
            width: 256,
            height: 256
        )
    }
}
