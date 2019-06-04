//
//  MapView.swift
//  Landmarks SwiftUI
//
//  Created by Geoffrey Caven on 2019-06-04.
//  Copyright © 2019 Geoffrey Caven. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView : UIViewRepresentable {
  func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
    MKMapView(frame: .zero)
  }
  
  func updateUIView(_ view: MKMapView, context: Context) {
    let coordinate = CLLocationCoordinate2D(
      latitude: 34.011286, longitude: -116.166868)
    let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
    let region = MKCoordinateRegion(center: coordinate, span: span)
    view.setRegion(region, animated: true)
  }
}

#if DEBUG
struct MapView_Previews : PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
#endif
