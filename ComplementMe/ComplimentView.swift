//
//  ComplimentView.swift
//  ComplementMe
//
//  Created by Mike  Van Amburg on 11/23/21.
//

import SwiftUI

struct ComplimentView: View {
    @ObservedObject var complimentVM = ComplemantsViewModel()
    @State var showSheet = false

    var body: some View {
        VStack {
            HStack {
                Button { showSheet.toggle() } label: {
                    Image(systemName: "list.dash")
                }
            .buttonStyle(MainButtonStyle())
                Spacer()
            }
            Spacer()

            Text(complimentVM.complements.complement)
                .fontWeight(.bold)
                .font(.title)
                .padding()
                .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(complimentVM.complements.complement != "" ? .purple : .clear, lineWidth: 4)
                    )
            Spacer()
            Button("Compliment Me!") {
                complimentVM.grabARandomCompliment()
            }
            .buttonStyle(MainButtonStyle())
        }
        .padding()
        .padding(.vertical, 20)
        .sheet(isPresented: $showSheet) {
            ComplimentsListView(complimentVM: complimentVM, showSheet: $showSheet)
        }
    }
}

struct ComplimentView_Previews: PreviewProvider {
    static var previews: some View {
        ComplimentView()
    }
}
