//
//  ContentView.swift
//  SwiftUIImageLoader
//
//  Created by Smin Rana on 12/25/19.
//  Copyright © 2019 Smin Rana. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let item1 = ImageItem(title: "Item 1", url: "https://free-images.com/lg/9e46/white_bengal_tiger_tiger_0.jpg")
    let item2 = ImageItem(title: "Item 2", url: "https://free-images.com/lg/ee7b/cow_animal_cow_head.jpg")
    
    var body: some View {
        let imageList: [ImageItem] = [item1, item2]
        
        return List(imageList, id:\.id) { image in
            HStack {
                RemoteImage(url: image.url)
                Text("\(image.title)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
