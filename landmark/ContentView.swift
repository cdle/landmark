//
//  ContentView.swift
//  landmark
//
//  Created by 邰胜广 on 2020/1/8.
//  Copyright © 2020 邰胜广. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(landmarks) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                    Image(landmark.thumbnailName).cornerRadius(8)
                    VStack(alignment: .leading) {
                        Text(landmark.name)
                        Text(landmark.location)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }.navigationBarTitle(Text("世界地标"), displayMode: .large)
            
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
