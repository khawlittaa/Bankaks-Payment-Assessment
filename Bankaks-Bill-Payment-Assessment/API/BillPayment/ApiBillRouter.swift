//
//  ApiBillRouter.swift
//  Bankaks-Bill-Payment-Assessment
//
//  Created by khaoula hafsia on 1/12/2020.
//

import Foundation
import Alamofire

enum ApiBillRouter: URLRequestConvertible,BaseRequestProtocol {
    
    typealias ResponseType = DataRespond
    
    //The endpoint name we'll call later
    case getBillInformation(billID: Int)
    
    //MARK: - URLRequestConvertible
    func asURLRequest() throws -> URLRequest
    {
        let url = try Constants.baseURL.asURL()
        
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        
        //Http method
        urlRequest.httpMethod = method.rawValue
        
        // Common Headers
//        urlRequest.setValue(Constants.ContentType.json.rawValue, forHTTPHeaderField: Constants.HttpHeaderField.acceptType.rawValue)
//        urlRequest.setValue(Constants.ContentType.json.rawValue, forHTTPHeaderField: Constants.HttpHeaderField.contentType.rawValue)
        
        //Encoding
        let encoding: ParameterEncoding = {
            switch method {
            case .get:
                return JSONEncoding.default
            default:
                return JSONEncoding.default
            }
        }()
        
        return try encoding.encode(urlRequest, with: parameters)
    }
    
    //MARK: - HttpMethod
    //This returns the HttpMethod type. It's used to determine the type if several endpoints are peresent
    internal var method: HTTPMethod {
        switch self {
        case .getBillInformation:
            return .get
        }
    }
    
    //MARK: - Path
    //The path is the part following the base url
    internal var path: String {
        switch self {
        case .getBillInformation(let billID):
            return "task/\(billID)"
        }
    }
    
    //MARK: - Parameters
    //This is the queries part, it's optional because an endpoint can be without parameters
    internal var parameters: Parameters? {
        switch self {
        case .getBillInformation:
        return nil        }
    }
    
}
