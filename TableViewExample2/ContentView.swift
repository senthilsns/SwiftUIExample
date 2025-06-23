//
//  ContentView.swift
//  TableViewExample2
//
//  Created by senthil on 03/04/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
                NavigationStack {
                    List(viewModel.items, id: \.self) { player in
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
