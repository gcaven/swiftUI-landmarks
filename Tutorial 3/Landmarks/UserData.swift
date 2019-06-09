//
//  UserData.swift
//  Landmarks
//
//  Created by Geoffrey Caven on 2019-06-09.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: BindableObject  {
  let didChange = PassthroughSubject<UserData, Never>()
  
  var showFavoritesOnly = false {
    didSet {
      didChange.send(self)
    }
  }
  
  var landmarks = landmarkData {
    didSet {
      didChange.send(self)
    }
  }
}
