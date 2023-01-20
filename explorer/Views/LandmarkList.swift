//
//  LandmarkList.swift
//  explorer
//
//  Created by Lelafe on 11/01/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView() {
            List (landmarks, id: \.id) { landmark in
                NavigationLink() {
                    LandmarkDetails(landmark: landmark)
                } label: {
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
    }
}
