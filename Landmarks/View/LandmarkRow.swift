//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Eray Kayur on 25.12.22.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width:50,height:50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{ //to group without an eeffect like HStack
            LandmarkRow(landmark: landmarks[10])
          
            LandmarkRow(landmark: landmarks[11])

        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
