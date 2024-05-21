//
//  CircularButtons.swift
//  QuantumIT
//
//  Created by Swayam Rustagi on 21/05/24.
//

import SwiftUI

struct CircularButtons: View {
    
    let buttonImage: String
    let featureName: String
    
    var body: some View {
        VStack(spacing: 15){
            Image(systemName: buttonImage)
                .font(.largeTitle)
                .padding()
                .frame(width: 80, height: 80)
                .background(.white)
                .clipShape(Circle())
                .overlay{
                    Circle()
                        .stroke(.green, lineWidth: 1)
                        .shadow(radius: 5)
                }
            
            Text(featureName)
        }
    }
}

#Preview {
    CircularButtons(buttonImage: "fork.knife", featureName: "Meal Plan")
}
