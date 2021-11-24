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
            Button {
                showSheet.toggle()
            } label: {
                Text("test")
            }

            Text(complimentVM.complements.complement)
            Button("Compliment Me!") {
                complimentVM.grabARandomCompliment()
            }
        }
        .sheet(isPresented: $showSheet) {
            List(complimentVM.complements.complementsList, id: \.self){ compliment in
                Text(compliment)
            }
        }
    }
}

struct ComplimentView_Previews: PreviewProvider {
    static var previews: some View {
        ComplimentView()
    }
}
