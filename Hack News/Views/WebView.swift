//
//  WebView.swift
//  Hack News
//
//  Created by 陶佳佳 on 2022/10/23.
//

import SwiftUI
import WebKit


struct WebView: UIViewRepresentable {
  
  let urlString: String?
  
  func makeUIView(context: Context) -> WKWebView {
    return WKWebView()
  }
  
  func updateUIView(_ uiView: WKWebView, context: Context) {
    if let safeString = urlString {
      if let url = URL(string: safeString) {
        let request = URLRequest(url: url)
        uiView.load(request)
      }
    }
  }
}
