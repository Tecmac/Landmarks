//
//  CircleImage.swift
//  Landmarks
//
//  Created by Eray Kayur on 25.12.22.
//

import SwiftUI

struct CircleImage: View {
    var image:Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay{
                Circle().stroke(Color(red: 0.06, green: 0.13,blue:0.18), lineWidth: 4)
            }
            .shadow(radius: 7)
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image:Image("turtlerock"))
    }
}
