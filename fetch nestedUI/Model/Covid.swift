//
//  Covid.swift
//  fetch nestedUI
//
//  Created by Mufti Ramdhani on 16/06/21.
//

import Foundation
import SwiftUI

struct Total : Codable, Identifiable {
  var id = UUID()
  let jumlah_positif : Int
  let jumlah_meninggal : Int
  let jumlah_sembuh : Int
  let jumlah_dirawat : Int
}

struct Update : Codable {
  let total : Total
}

struct CovidResponse : Codable {
  var update : Update
}
