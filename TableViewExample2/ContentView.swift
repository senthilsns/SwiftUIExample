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
                    List(rowItemsArray, id: \.self) { player in
                        NavigationLink {
                            DetailContentView(name: player)
                        } label: {
                            Text(player)
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
