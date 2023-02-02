//
//  String+Extensions.swift
//  marvelExample
//
//  Created by Cristian Contreras on 2/2/23.
//

import Foundation
import var CommonCrypto.CC_MD5_DIGEST_LENGTH
import func CommonCrypto.CC_MD5
import typealias CommonCrypto.CC_LONG

extension String {
    var utf8Encoded: Data {
        return data(using: .utf8)!
    }
    func md5() -> String {
        var md5String = ""
        let digestLength = Int(CC_MD5_DIGEST_LENGTH)
        let md5Buffer = UnsafeMutablePointer<UInt8>.allocate(capacity: digestLength)
        
        if let data = self.data(using: .utf8) {
            data.withUnsafeBytes({ (bytes: UnsafePointer<CChar>) -> Void in
                CC_MD5(bytes, CC_LONG(data.count), md5Buffer)
                md5String = (0..<digestLength).reduce("") { $0 + String(format:"%02x", md5Buffer[$1]) }
            })
        }
        
        return md5String
    }
}
