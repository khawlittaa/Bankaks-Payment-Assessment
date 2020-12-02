//
//  Constants.swift
//  Bankaks-Bill-Payment-Assessment
//
//  Created by khaoula hafsia on 1/12/2020.
//

import Foundation

  enum ApiError: Error {
      case badRequest               //Status code 400
      case notFound                //Status code 404
      case unAuthorized           //Status code 401
      case internalServerError   //Status code 500
  }
struct Constants {

    //The API's base URL
    static let baseURL = "https://api-staging.bankaks.com/"
    
    //The parameters (Queries) that we're gonna use
    struct Parameters {
    }
    
    //The header fields
    enum HttpHeaderField: String {
        case authentication = "Authorization"
        case contentType = "Content-Type"
        case acceptType = "Accept"
        case acceptEncoding = "Accept-Encoding"
    }
    
    //The content type (JSON)
    enum ContentType: String {
        case json = "application/json"
        case multipart = "multipart/form-data"
        case text = "text/html; charset=utf-8"
    }
  
}


