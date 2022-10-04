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

let backgroundGradient = LinearGradient(
    gradient: Gradient(colors: [lightGreen, gold]),
    startPoint: .top, endPoint: .bottomTrailing)


struct Aretha: View{
    var body: some View{
        GeometryReader{ g in
            ZStack{
                backgroundGradient
                    .ignoresSafeArea()
                
                VStack{
                    
                    Text("Aretha Franklin")
                        .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.07: g.size.height * 0.07))
                        .bold()
                        .foregroundColor(darkestGreen)
                    
                    HStack{
                        Text("Known as the “Queen of Soul”, Aretha Louise Franklin imprinted her mark in the Motor City.  She was the daughter of a prominent Baptist Minister and Civil Rights Activist, who pastored the New Bethel Baptist Church in Detroit.  Her reigning success includes 100 R&B entries with 17 top-ten singles, 20 number one singles and landing on the Billboard charts with 112 singles recorded.  Aretha was immersed in the struggle for women’s and civil rights.  At times she covered payrolls for civil rights groups and performed for demonstrations. She was once locked up for disturbing the peace in Detroit during a protest. In 1985, her voice was declared a Michigan “natural resource”  and in 1987 she became the first woman to be inducted into the Rock and Roll Hall of Fame.")
                            .font(.system(size: 12))
                            .multilineTextAlignment(.center)
                            .foregroundColor(darkestGreen)
                            .lineSpacing(2)
                            .frame(width: 300, height: 300)
                            .padding()
                        Image(uiImage: UIImage(imageLiteralResourceName: "Aretha3.jpg"))
                            .resizable()
                            .scaledToFit()
                            .padding()
                    }
                    
                }
                
            }
        }
    }
}

PlaygroundPage.current.setLiveView(
    Aretha()
        .frame(width: 600.0, height: 600.0)
)
