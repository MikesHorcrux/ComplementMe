//
//  ComplimentsListView.swift
//  ComplementMe
//
//  Created by Mike  Van Amburg on 11/23/21.
//

import SwiftUI

struct ComplimentsListView: View {
    @ObservedObject var complimentVM: ComplemantsViewModel
    @Binding var showSheet: Bool
    
    var body: some View {
        VStack{
            HStack{
                Button("Done") {
                    showSheet.toggle()
                }
                .buttonStyle(MainButtonStyle())
                Spacer()
            }
            .padding([.horizontal, .top])
            Text("Complements List")
                                .font(.title3)
                                .fontWeight(.heavy)
            List(complimentVM.complements.complementsList, id: \.self){ compliment in
                Text(compliment)
            }
        }
    }
}

struct ComplimentsListView_Previews: PreviewProvider {
    static var previews: some View {
        ComplimentsListView(complimentVM: ComplemantsViewModel(), showSheet: .constant(true))
    }
}
