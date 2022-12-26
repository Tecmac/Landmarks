//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Eray Kayur on 25.12.22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationStack{
            List(landmarks){ landmark in
                NavigationLink{
                    LandmarkDetail(landmark:  landmark)
                }label: {
                    LandmarkRow(landmark: landmark)
                }
                
            }
            .navigationTitle("Landmarks")
            
            
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        
            LandmarkList()
       //         .previewDevice(PreviewDevice(rawValue: deviceName))
      //          .previewDisplayName(deviceName)
        
    }
}
