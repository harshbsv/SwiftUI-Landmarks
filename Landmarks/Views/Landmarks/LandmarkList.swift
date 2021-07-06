//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Harshvardhan Basava on 29/06/21.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    //computed property
    var filteredLandmarks: [Landmark]{
        modelData.landmarks.filter{ landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    var body: some View {
        //dynamic list of landmarks
        NavigationView {
            VStack{
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favorites only")
                })
                .padding(.horizontal)
                List{
                    ForEach(filteredLandmarks){ landmark in
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
                .navigationTitle("Landmarks")
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
            LandmarkList()
                .previewDevice("iPhone 12 Pro Max")
                .environmentObject(ModelData())
    }
}
