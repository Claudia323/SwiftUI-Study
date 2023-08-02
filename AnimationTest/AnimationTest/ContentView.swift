//
//  ContentView.swift
//  AnimationTest
//
//  Created by 박진영 on 2023/08/02.
//

import SwiftUI

struct ContentView: View {
    
    @State var isAnimated1: Bool = false
    @State var isAnimated2: Bool = false
    
    
    var body: some View {
        
        VStack {
            Button("Button") {
//                isAnimated1.toggle()
//                isAnimated2.toggle()
                withAnimation(.default) {     //defeult는 fade 효과
                    isAnimated1.toggle()
                    isAnimated2.toggle()
                }

            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated1 ? 50 : 25)
                .fill(isAnimated1 ? Color.yellow : Color.green)
                .frame(
                    width: isAnimated1 ? 100 : 300,
                    height: isAnimated1 ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated1 ? 360 : 0))
//                .animation(
//                    Animation
//                    .default
//                    , value: isAnimated1
//                )
            
            
            Rectangle() //구분선
                .frame(height: 10)
            
            RoundedRectangle(cornerRadius: isAnimated2 ? 50 : 25)
                .fill(isAnimated2 ? Color.red : Color.gray)
                .frame(
                    width: isAnimated2 ? 100 : 300,
                    height: isAnimated2 ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated2 ? 360 : 0))
//                .animation(
//                    Animation
//                    .default
//                    , value: isAnimated2
//                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
