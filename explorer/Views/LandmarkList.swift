//
//  LandmarkList.swift
//  explorer
//
//  Created by Lelafe on 11/01/23.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject private var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    private var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { !showFavoritesOnly || $0.isFavorite }
    }
    
    var body: some View {
        NavigationView() {
            List {
                Toggle("Favorites Only", isOn: $showFavoritesOnly)
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink() {
                        LandmarkDetails(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
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
