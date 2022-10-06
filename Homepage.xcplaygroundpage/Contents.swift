import UIKit
import SwiftUI
import PlaygroundSupport

/*This is where I am setting the constants that will hold the color
 scheme for the story
 */
let darkestGreen = Color(#colorLiteral(red: 0.12208087, green: 0.1928047538, blue: 0.2179225683, alpha: 1))
let darkGreem = Color(#colorLiteral(red: 0, green: 0.3334578872, blue: 0.341104269, alpha: 1))
let lightGreen = Color(#colorLiteral(red: 0.1709093451, green: 0.6570991278, blue: 0.607393682, alpha: 1))
let lightestGreen = Color(#colorLiteral(red: 0.6796731353, green: 0.8603450656, blue: 0.7540082335, alpha: 1))
let gold = Color(#colorLiteral(red: 1, green: 0.7618391514, blue: 0.0282842014, alpha: 1))


/*This will be the initial view for the hompage*/
struct Homepage: View{
    var body: some View{
        VStack{
            Text("Le Renaissance Detroit")
                .font(Font.custom("Montserrat-BoldItalic", size: 32))
                .foregroundColor(darkestGreen)
                .bold()
            Rectangle()
                .fill(gold)
                .frame(width: 375.0, height: 2.0)
                HStack{
                    Image(uiImage: UIImage(imageLiteralResourceName: "Native4.jpg"))
                        .resizable()
                        .scaledToFill()
                        .frame(width: 70.0, height: 70.0)
                        .clipShape(Circle())
                    Image(uiImage: UIImage(imageLiteralResourceName: "Joe1.jpg"))
                        .resizable()
                        .scaledToFill()
                        .frame(width: 70.0, height: 70.0)
                        .clipShape(Circle())
                    Image(uiImage: UIImage(imageLiteralResourceName: "Aretha1.jpg"))
                        .resizable()
                        .scaledToFill()
                        .frame(width: 70.0, height: 70.0)
                        .clipShape(Circle())
                    Image(uiImage: UIImage(imageLiteralResourceName: "Coleman1.jpg"))
                        .resizable()
                        .scaledToFill()
                        .frame(width: 70.0, height: 70.0)
                        .clipShape(Circle())
                    Image(uiImage: UIImage(imageLiteralResourceName: "Dan2.png"))
                        .resizable()
                        .scaledToFill()
                        .frame(width: 70.0, height: 70.0)
                        .clipShape(Circle())
                }
            }
        
        .padding()
        .background(Image(uiImage: UIImage(imageLiteralResourceName: "MapOfDetroit.png")).resizable().scaledToFill()
            .overlay(darkGreem)
            .opacity(0.5)
        )
    }
}


PlaygroundPage.current.setLiveView(
    Homepage()
        .frame(width: 400.0, height: 600.0)
)
