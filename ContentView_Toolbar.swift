//
//  ContentView.swift
//  NavigationViewDemo
//
//  Created by David Razmadze on 10/30/21.
//

import SwiftUI

struct ContentView: View {
  
  var body: some View {
    NavigationView {
      
      Text("Home View")
        .navigationTitle("Navigation Demo")
      
        .toolbar {
          
          ToolbarItemGroup(placement: .navigationBarLeading) {
            
            Button {
              print("Button Tapped")
            } label: {
              Text("Tap me")
            }
          }
          
          ToolbarItemGroup(placement: .navigationBarTrailing) {
            
            Button {
              print("Button Tapped")
            } label: {
              Text("Tap me")
            }
          }

          
        }
    }
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
