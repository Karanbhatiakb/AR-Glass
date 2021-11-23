//
//  ColorSelect.swift
//  AR Glass
//
//  Created by Karan Bhatia on 22/11/21.
//

import SwiftUI
import ARKit
import RealityKit

enum Colors:CaseIterable,Equatable{
    case black
    case blue
    case red
}

struct ColorSelect: View {
    
    @Binding var currentColor : Colors
    
    //Creating 3 button
    var body: some View {
        HStack{
            Button(action: {currentColor = Colors.black}){
                Text("Black")
                    .frame(width: 70, height: 30, alignment: .center)
                    .foregroundColor(.black)
                    .font(.title)
                    .padding()
                    .border(Color.black,width: 5)
            }
            
            Spacer()
            
            Button(action: {currentColor = Colors.blue}){
                Text("Blue")
                    .frame(width: 70, height: 30, alignment: .center)
                    .foregroundColor(.blue)
                    .font(.title)
                    .padding()
                    .border(Color.blue,width: 5)
            }
            Spacer()
            
            Button(action: {currentColor = Colors.red}){
                Text("Red")
                    .frame(width: 70, height: 30, alignment: .center)
                    .foregroundColor(.red)
                    .font(.title)
                    .padding()
                    .border(Color.red,width: 5)
            }
        }
        .padding()
    }
}


