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

struct Joe: View{
    var body: some View{
        GeometryReader{ g in
            
            ZStack{
                backgroundGradient
                    .ignoresSafeArea()
                VStack{
                    Text("Joe Louis")
                        .font(.system(size: g.size.height > g.size.width ? g.size.width * 0.07: g.size.height * 0.07))
                        .foregroundColor(darkestGreen)
                        .bold()
                    HStack{
                        Text("Joe Louis was born May 13, 1914 in LaFayette, Alabama to Munroe and Lillie Barrow. When he was 2 years old his father was committed to a mental institution and his mother married a contractor. They moved to Detroit in 1926 to the Black Bottom neighborhood. During the Great Depression Louis got a job at a youth recreation center. At age 17 in 1932, he won the club championship at the recreation center he worked at. Two years later in 1934, he won the United States Amateur Champion National AAU Tournament in St. Louis, Missouri. Out of his 69 fights, he only had three losses, with 57 knockouts from 1937 to 1949. He returned from retirement in 1950 but didn’t win the championship and was knocked out by Rocky Marciano in 1951, ending his career. He is regarded as one of the greatest boxers of all time. The Joe Louis Arena was named after him, and he was listed on Molefi Kete Asante’s list of 100 Greatest African Americans. He was approved for a Congressional Gold Medal, had a memorial dedicated to him at Jefferson and Woodward, and was listed by Muhammad Ali as one of his biggest influences in boxing.")
                            .font(.system(size: 12))
                            .multilineTextAlignment(.center)
                            .foregroundColor(darkestGreen)
                            .lineSpacing(2)
                            .frame(width: 300, height: 200)
                            .padding()
                        
                        Image(uiImage: UIImage(imageLiteralResourceName: "Joe4.jpg"))
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
    Joe()
        .frame(width: 600.0, height: 600.0)
)
