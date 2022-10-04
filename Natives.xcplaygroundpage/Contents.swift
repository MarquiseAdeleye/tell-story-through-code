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

struct Native: View{
    var body: some View{
        GeometryReader{ g in
        ZStack{
            backgroundGradient
                .ignoresSafeArea()

                    
                    VStack{
                        Text("Native History")
                            .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.07: g.size.height * 0.07))
                            .foregroundColor(darkestGreen)
                            .bold()
                        
                        HStack{
                            
                            VStack{
                                Text("The banks of the Detroit River were occupied for years and years before the European settlers arrived. However, due to lack of written documentation little is known about this time period. What is known is the Native American history preceding the “founding” of Detroit. Detroit had water, rich soil, grasslands, and game, lots of game. This qualified the area as prime real estate for tribes, specifically the Anishinaabe or The People of Three Fires. The People of Three Fires , is a larger group, made up of three other tribes which included the Ojibwa (Chippewa), the Ottawa, and the Potawatomi. The group developed their own language, social systems, cultural practices, and traditions. Things would soon change due to the arrival of Antoine de la Mothe Cadillac.")
                                    .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.019: g.size.height * 0.019))
                                    .multilineTextAlignment(.center)
                                    .fixedSize(horizontal: false, vertical: true)
                                    .foregroundColor(darkestGreen)
                                    .lineSpacing(2)
                                    .frame(width: 300, height: 200)
                                    .padding()
                                
                                
                            }
                            Image(uiImage: UIImage(imageLiteralResourceName: "Native8.jpg"))
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
    Native()
        .frame(width: 600.0, height: 600.0)
)

