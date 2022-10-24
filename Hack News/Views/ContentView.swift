//
//  ContentView.swift
//  Hack News
//
//  Created by 陶佳佳 on 2022/10/20.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var netManager = NetworkManager()

  var body: some View {
    NavigationView {
      List(netManager.posts) { post in
        NavigationLink(destination: DetailView(url: post.url)) {
          HStack {
            Text(String(post.points))
            Text(post.title)
          }
        }
      }
      .navigationTitle("Hack News branch 2 romote")
    }
    .onAppear {
      self.netManager.fetchData()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
