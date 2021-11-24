//
//  MainButtonStyle.swift
//  ComplementMe
//
//  Created by Mike  Van Amburg on 11/23/21.
//

import SwiftUI

struct MainButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical, 6)
            .padding(.horizontal, 14)
            .background(.purple)
            .foregroundColor(.white)
            .clipShape(Capsule())
            
    }
}

struct MainButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button {
        } label: {
            Text("Test")
        }
        .buttonStyle(MainButtonStyle())

    }
}
