/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing a list of landmarks.
*/

import SwiftUI

struct LandmarkList: View {
    @State var showFavouritesOnly = false
  
    var body: some View {
        NavigationView {
          List {
            Toggle(isOn: $showFavouritesOnly) {
              Text("Favourites Only")
            }
            
            ForEach(landmarkData) { landmark in
              if !self.showFavouritesOnly || landmark.isFavourite {
                NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                  LandmarkRow(landmark: landmark)
                }
              }
            }
            .navigationBarTitle(Text("Landmarks"), displayMode: .large)
          }
        }
    }
}

#if DEBUG
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone XS"].identified(by: \.self)) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
#endif
