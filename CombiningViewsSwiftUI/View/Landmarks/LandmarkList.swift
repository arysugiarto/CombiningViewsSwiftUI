//
//  LandmarkList.swift
//  CombiningViewsSwiftUI
//
//  Created by Ary Sugiarto on 12/11/22.
//

import SwiftUI

struct LandmarkList: View{
    @EnvironmentObject var modelData: ModelData
    
    @State private var showFavoriteOnly = false
    
    var fillteredLandmarks: [Landmark]{
        modelData.landmarks.filter{landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
            NavigationView {
                List {
                    Toggle(isOn: $showFavoriteOnly) {
                        Text("Favorites only")
                    }

                    ForEach(fillteredLandmarks) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
                .navigationTitle("Landmarks")
            }
        }
}


struct LandmarkList_Previews: PreviewProvider{
    static var previews: some View{
        LandmarkList()
                    
    }
}
