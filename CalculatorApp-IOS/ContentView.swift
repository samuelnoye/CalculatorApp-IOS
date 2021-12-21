//
//  ContentView.swift
//  CalculatorApp-IOS
//
//  Created by Samuel Noye on 21/12/2021.
//

import SwiftUI

enum CalculatorButton: String{
    case zero, one, two, three, four, five, six, seven, eight, nine, dot
    case equals, plus, minus, multiply, divide
    case ac, plusMinus, percent
    
    var backgroundColor: Color{
        switch self{
        case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .dot:
            return Color(.darkGray)
        case .ac, .plusMinus, .percent:
            return Color(.lightGray)
        default:
            return .orange
        }
    }
}

 
struct ContentView: View {
    //MARK: - PROPERTIES
    let buttons: [[CalculatorButton]] = [
        [.ac,.plusMinus,.percent,.divide],
    [.seven,.eight,.nine,.multiply],
    [.four,.five,.six,.minus],
    [.one,.two,.three,.plus],
    [.zero,.zero,.dot,.equals]
    ]
    
    //MARK: - BODY
    var body: some View {
        ZStack(alignment: .bottom){
            Color.black.ignoresSafeArea(.all)
            VStack{
                HStack{
                    Spacer()
                    Text("13")
                        .foregroundColor(.white)
                        .font(.system(size: 64))
                        .padding()
                }
                ForEach(buttons, id: \.self){ row in
                    HStack(spacing: 12){
                        ForEach(row, id: \.self){ button in
                            Text(button.rawValue)
                                .font(.system(size: 32))
                                .frame(width: self.buttonWidth(), height: self.buttonWidth())
                                .foregroundColor(.white)
                                .background(button.backgroundColor)
                                .cornerRadius(self.buttonWidth())
                        }
                    }
                }
            }.padding(.bottom)
            
        }
    }
    func buttonWidth()->CGFloat{
        return (UIScreen.main.bounds.width - 5 * 12) / 4
    }
}


  //MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
