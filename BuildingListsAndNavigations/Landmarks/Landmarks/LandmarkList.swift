//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Robin Malhotra on 21/04/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) {
                landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }.navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XR"], id: \.self) {
            deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice.init(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
