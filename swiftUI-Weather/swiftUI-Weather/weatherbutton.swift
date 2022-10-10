//
//  weatherbutton.swift
//  swiftUI-Weather
//
//  Created by Gopathi Mahesh on 10/10/22.
//

import Foundation
import SwiftUI

struct weatherbutton: View{
    
    var title: String
    var textcolor: Color
    var backgroundcolor: Color
    
    var body: some View{
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundcolor)
            .foregroundColor(textcolor)
            .font(.system(size: 20,weight: .bold,design: .default))
            .cornerRadius(15)
    }
}
