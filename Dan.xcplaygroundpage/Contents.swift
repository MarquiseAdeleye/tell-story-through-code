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

struct Dan: View{
    var body: some View{
        GeometryReader{ g in
            
            ZStack{
                backgroundGradient
                    .ignoresSafeArea()
                
                VStack{
                    Text("Dan Gilbert")
                        .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.07: g.size.height * 0.07))
                        .foregroundColor(darkestGreen)
                        .bold()
                    HStack{
                        Text("In 1985, Gilbert founded Rock Financial with Ron Berman, Lindsay Gross, and Gary Gilbert, his younger brother. The company was an early online direct mortgage lender on the Internet in the 90s. The company was purchased in 2000 by Intuit Inc. and renamed Quicken Loans, then was purchased back in 2002 by Gilbert and other private investors. It was renamed to Rocket Companies in August 2020. In March 2005 he became the majority owner of the Cleveland Cavaliers. In August 2010, Quicken Loans’ headquarters and nearly 2,000 employees were moved to downtown Detroit. He and his wife joined the Giving Pledge in 2012, pledging to donate half their wealth to philanthropy during their lifetime. His eldest son was born with neurofibromatosis, and Gilbert established two neurofibromatosis research clinics at the Children’s National Medical Center in Washington, D.C. and the Sourasky Medical Center in Tel Aviv, Israel. In 2020 he made a $1.2 million donation towards COVID-19 relief efforts in Detroit.")
                            .font(.system(size: 12))
                            .multilineTextAlignment(.center)
                            .foregroundColor(darkestGreen)
                            .lineSpacing(2)
                            .frame(width: 300, height: 200)
                            .padding()
                        Image(uiImage: UIImage(imageLiteralResourceName: "Dan3.jpg"))
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
    Dan()
        .frame(width: 600.0, height: 600.0)
)
