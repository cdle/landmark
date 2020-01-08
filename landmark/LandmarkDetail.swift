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
    @State var zoomed = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image(landmark.imageName)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 1)) {
                        self.zoomed.toggle()
                    }
                }
            if !zoomed {
                Text(landmark.location)
                    .font(.largeTitle)
                    .foregroundColor(.secondary)
                    .padding()
                    .transition(.move(edge: .trailing))
            }
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
