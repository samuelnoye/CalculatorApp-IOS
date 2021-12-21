//
//  ContentView.swift
//  CalculatorApp-IOS
//
//  Created by Samuel Noye on 21/12/2021.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    let buttons = [
    ["AC","+","%","/"],
    ["7","8","9","X"],
    ["4","5","6","-"],
    ["1","2","3","+"],
    ["0","",".","="]
    ]
    
    //MARK: - BODY
    var body: some View {
        ZStack(alignment: .bottom){
            Color.black.ignoresSafeArea(.all)
            VStack{
                ForEach(buttons, id: \.self){ row in
                    HStack{
                        ForEach(row, id: \.self){ button in
                            Text(button)
                                .font(.system(size: 32))
                                .frame(width: 70, height: 70)
                                .foregroundColor(.white)
                        }
                    }
                }
            }
            
        }
    }
}


  //MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
