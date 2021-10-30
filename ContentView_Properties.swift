//
//  ContentView.swift
//  NavigationViewDemo
//
//  Created by David Razmadze on 10/30/21.
//

import SwiftUI

struct ContentView: View {
  
  init() {
    
    // background color
    
    UINavigationBar.appearance().backgroundColor = .red
    
    // Change text
    UINavigationBar.appearance().largeTitleTextAttributes = [
      .foregroundColor: UIColor.darkGray,
      .font : UIFont(name:"Times New Roman", size: 40)!
    ]
    
  }
  
  var body: some View {
    NavigationView {
      
      Text("Home View")
        .navigationTitle("Navigation Demo")
      
    }
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
