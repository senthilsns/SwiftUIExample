//
//  ContentView.swift
//  TableViewExample2
//
//  Created by senthil on 03/04/25.
//

import SwiftUI

struct ContentView: View {
    
    let rowItemsArray = ["Senthil","Kumar","Sample","Example"]
    var body: some View {
        VStack {
            NavigationStack {
                                
                List {
                    ForEach(0..<rowItemsArray.count, id: \.self) { index in
                        Text(rowItemsArray[index])
                    }
                }
                
                .navigationTitle("TableViewExample")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(false)
                .navigationViewStyle(.automatic)
            }
                
            }
        }
}

#Preview {
    ContentView()
}
