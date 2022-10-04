//: [Previous](@previous)

import UIKit
import SwiftUI
import PlaygroundSupport



struct Test: View{
    var body: some View{
        VStack{
            Text("Le Renaissance Detroit")
            Rectangle()
                .frame(width: 375.0, height: 2.0)
            HStack{
                Image(uiImage: UIImage(imageLiteralResourceName: "test.png"))
                    .resizable()
                    .scaledToFit()
            }
        }
        
    }
}


PlaygroundPage.current.setLiveView(
    Test()
        .frame(width: 400.0, height: 600.0)
)

//: [Next](@next)
