//
//  ContentView.swift
//  NavigationViewDemo
//
//  Created by David Razmadze on 10/30/21.
//

import SwiftUI

// MARK: - Game

class GameManager: ObservableObject {
  @Published var score = 0
  
  func increaseScore() {
    self.score += 1
  }
  
  func decreaseScore() {
    self.score -= 1
  }
}

// MARK: - ContentView

struct ContentView: View {
  
  @State private var isSelected: Bool = false
  @ObservedObject var gameManager = GameManager()
  
  var body: some View {
    NavigationView {
      
      VStack {
        
        NavigationLink(destination: SecondView(), isActive: $isSelected, label: { EmptyView () })
        
        Text("Score: \(gameManager.score)")
        
        Button {
          isSelected = true
        } label: {
          Text("Go to second view")
        }
        
        .navigationTitle("Navigation Demo")
        
      }
    }
    .environmentObject(gameManager)
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

struct SecondView: View {
  
  @EnvironmentObject var gameManager: GameManager
  
  var body: some View {
    VStack {
      
      Button {
        gameManager.increaseScore()
      } label: {
        Text("Increase score")
          .foregroundColor(.green)
      }

      Button {
        gameManager.decreaseScore()
      } label: {
        Text("Decrease score")
          .foregroundColor(.red)
      }
      
    }
  }
  
}
