//
//  LandmarkDetail.swift
//  landmark
//
//  Created by 邰胜广 on 2020/1/8.
//  Copyright © 2020 邰胜广. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    let landmark: Landmark
    var zoomed = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image(landmark.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            Text(landmark.location)
                .font(.largeTitle)
                .foregroundColor(.secondary)
                .padding()
        }.navigationBarTitle(Text(landmark.name),displayMode: .inline)
    }
}

#if DEBUG
struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        LandmarkDetail(landmark: landmarks[0])
            }
    }
}
#endif
