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

struct Coleman: View{
    var body: some View{
        GeometryReader{ g in
            ZStack{
                backgroundGradient
                    .ignoresSafeArea()
                
                VStack{
                    Text("Coleman A. Young")
                        .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.07: g.size.height * 0.07))
                        .foregroundColor(darkestGreen)
                        .bold()
                    HStack{
                        VStack{
                            Text("He started his political base on the East Side of Detroit in the 1940s and 50s. He served as the Mayor of Detroit for 20 years, from 1974 to 1994.  Prior to becoming the Mayor, he was elected to the Michigan State Senate. Inequities in state funding were pointed out by him during his tenure in the Senate, for example, stating that $20 million was spent on rural bus service, while nothing is spent for the same service in Detroit.  During his senate career he constructed the Joe Louis Arena and upgraded the city’s mass transit systems.")
                                .font(.system(size: 12))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(darkestGreen)
                                .lineSpacing(2)
                                .padding()
                            
                            Text("The City of Detroit and Wayne County offices located in the city County Building have been renamed the Coleman A. Young Municipal Building, while the city airport has been renamed Coleman A. Young International Airport.")
                                .font(.system(size: 12))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(darkestGreen)
                                .lineSpacing(2)
                                .padding()
                        }
                        Image(uiImage: UIImage(imageLiteralResourceName: "Coleman2.jpg"))
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
    Coleman()
        .frame(width: 600.0, height: 600.0)
)
