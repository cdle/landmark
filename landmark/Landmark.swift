//
//  Landmark.swift
//  landmark
//
//  Created by 邰胜广 on 2020/1/8.
//  Copyright © 2020 邰胜广. All rights reserved.
//

import SwiftUI

struct Landmark: Identifiable {
    var id = UUID()
    var name: String
    var EnglishName: String
    var location: String
    var imageName: String {  EnglishName }
    var thumbnailName: String { "\(EnglishName)(Thumb)" }
}

let landmarks = [
    Landmark(name: "荷兰风车", EnglishName: "Windmill", location: "阿姆斯特丹"),
    Landmark(name: "长城", EnglishName: "Windmill", location: "北京"),
    Landmark(name: "帕特农神庙", EnglishName: "Windmill", location: "雅典"),
    Landmark(name: "兵马俑", EnglishName: "Windmill", location: "西安"),
    Landmark(name: "靖江王城", EnglishName: "Windmill", location: "桂林"),
]
