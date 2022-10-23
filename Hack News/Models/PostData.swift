//
//  PostData.swift
//  Hack News
//
//  Created by 陶佳佳 on 2022/10/20.
//

import Foundation

struct Results: Codable {
  let hits: [Post]
}

struct Post: Codable,Identifiable { //need Identifiable to use in the list
  var id: String {
    return objectID
  }
  let title: String
  let points: Int
  let url: String?
  let objectID: String
}

