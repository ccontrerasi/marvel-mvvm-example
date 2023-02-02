//
//  ApiServices.swift
//  marvelExample
//
//  Created by Cristian Contreras on 2/2/23.
//

import Foundation
import Moya
import Alamofire

enum ApiServices {
    case getCharacters(name:String? = nil)
}

extension ApiServices : TargetType {
    
    var baseURL: URL {
        switch self {
        default:
            return URL(string: base_url + api_app)!
        }
    }
    
    var path: String {
        switch self {
        case .getCharacters(_):
            return "characters"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getCharacters(_):
            return .get
        }
    }
    
    var sampleData: Data {
        var result = ""
        switch self {
        case .getCharacters(_):
            result = "Called to get-characters."
        }
        return result.utf8Encoded
    }
    
    var task: Task {
        let ts = "\(Date().timeIntervalSince1970)"
        let hash = (ts + private_key + public_key).md5()
        var params : [String:Any] = ["apikey": public_key, "ts": ts, "hash": hash]
        switch self {
        case let .getCharacters(name):
            if let name = name {
                params["name"] = name
            }
        }
        return .requestParameters(
              parameters: params,
              encoding: URLEncoding.default)
    }
    
    var headers: [String: String]? {
        get {
            ["content-type" : "application/json"]
        }
    }
    
    public var validationType: ValidationType {
        return .successCodes
      }
    
}

struct VerbosePlugin: PluginType {
    let verbose: Bool
    
    func prepare(_ request: URLRequest, target: TargetType) -> URLRequest {
#if DEBUG
        let rq = "\(request.url?.absoluteString ?? "")"
        if let body = request.httpBody {
            if let str = String(data: body, encoding: .utf8) {
                print("request to url >>>>>> \(rq)?\(str)")
            } else {
                print("request to url >>>>>> \(rq)")
            }
        } else {
            print("request to url >>>>>> \(rq)")
        }
#endif
        return request
    }
}
