//
//  DetailView.swift
//  Hack News
//
//  Created by 陶佳佳 on 2022/10/23.
//

import SwiftUI
import WebKit

struct DetailView: View {
  let url: String?

  var body: some View {
    WebView(urlString: url)
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView(url: "www.baidu.com")
  }
}


