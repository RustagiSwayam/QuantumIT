//
//  RectangularButtons.swift
//  QuantumIT
//
//  Created by Swayam Rustagi on 21/05/24.
//

import SwiftUI

struct RectangularButtons: View {
    
    let feature: String
    
    var body: some View {
        Text(feature)
            .foregroundStyle(.green)
            .font(.title2)
            .padding()
            .frame(width: 200)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            .overlay{
                RoundedRectangle(cornerRadius: 25)
                    .stroke(.green, lineWidth: 2)
            }
    }
}

#Preview {
    RectangularButtons(feature: "Body Stats")
}
