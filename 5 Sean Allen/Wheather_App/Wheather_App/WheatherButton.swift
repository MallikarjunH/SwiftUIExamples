//
//  WheatherButton.swift
//  Wheather_App
//
//  Created by EOO61 on 27/10/23.
//

import SwiftUI

struct WheatherButtonView: View {
    
    var buttonTitle:String
    var bgColor: Color
    var fgColor: Color
    
    var body: some View {
        Text(buttonTitle)
            .frame(width: 280, height: 50)
            .font(.system(size: 20, weight: .semibold))
            .background(bgColor)
            .foregroundColor(fgColor)
            .cornerRadius(10)
    }
}
