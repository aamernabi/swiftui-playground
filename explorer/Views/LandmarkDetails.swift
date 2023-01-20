//
//  LandmarkDetails.swift
//  explorer
//
//  Created by Lelafe on 13/01/23.
//

import SwiftUI
import MapKit

struct LandmarkDetails: View {
    @EnvironmentObject private var modelData: ModelData
    var landmark: Landmark
    
    private var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }

    var body: some View {
        ScrollView {
            MapView(coordinates:landmark.locationCoordinate).ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image, width: 256, height: 256)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                    .padding(.top, 4)
                Text(landmark.description)
                    .font(.body)
                    .foregroundColor(.gray)
                    .padding(.top, 8)
                    
                
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
        .ignoresSafeArea(edges: .top)
    }
}

struct LandmarkDetails_Previews: PreviewProvider {
    static var modelData = ModelData()

    static var previews: some View {
        LandmarkDetails(landmark: modelData.landmarks[6])
            .environmentObject(modelData)
    }
}
