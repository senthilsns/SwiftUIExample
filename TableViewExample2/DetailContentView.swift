//
//  DetailContentView.swift
//  TableViewExample2
//
//  Created by senthil on 03/04/25.
//

import SwiftUI

struct DetailContentView: View {
    let name: String
    @State private var showingAlert: Bool = false
    
    var body: some View {
        Text("Selected Name: \(name)")
            .font(.headline)
            .foregroundColor(.red)
        
        Button(action: {
                    self.showingAlert = true
                }) {
                    Text("Show Alert")
                }
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Selected Name: \(name)"), message: Text("Hey there!"), dismissButton: .default(Text("Okay")))
                }
                .padding(20)
    
    }
}

#Preview {
    DetailContentView(name: "")
}
