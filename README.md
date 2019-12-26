# SwiftUI  Image Loader
A very simple image loader loads remote images. This example uses List.


# Usages

`pod 'SwiftUIRemoteImage'`

Then update the pod

`pod update` or `pod install`

Import in your swift file

`import SwiftUIRemoteImage`

Use with your View

```ruby

struct ImageItem: Identifiable {
    var id = UUID()
    var title: String
    var url: String
}

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
```

# Dependency
Using SwiftUIRemoteImage library from cocoapods  https://cocoapods.org/pods/SwiftUIRemoteImage


Github https://github.com/sminrana/SwiftUIRemoteImage