//
//  ResponseExtension.swift
//  SwiftLinkPreview
//
//  Created by Giuseppe Travasoni on 20/11/2018.
//  Copyright © 2018 leocardz.com. All rights reserved.
//

import Foundation

internal extension Response {
    
    internal var dictionary: [String: Any] {
        var responseData:[String: Any] = [:]
        responseData["url"] = url
        responseData["finalUrl"] = finalUrl
        responseData["canonicalUrl"] = canonicalUrl
        responseData["title"] = title
        responseData["description"] = description
        responseData["images"] = images
        responseData["image"] = image
        responseData["icon"] = icon
        return responseData
    }
    
    internal enum Key: String {
        case url
        case finalUrl
        case canonicalUrl
        case title
        case description
        case image
        case images
        case icon
    }
    
    internal mutating func set(_ value: Any, for key: Key) {
        switch key {
        case Key.url:
            if let value = value as? URL { self.url = value }
        case Key.finalUrl:
            if let value = value as? URL { self.finalUrl = value }
        case Key.canonicalUrl:
            if let value = value as? String { self.canonicalUrl = value }
        case Key.title:
            if let value = value as? String { self.title = value }
        case Key.description:
            if let value = value as? String { self.description = value }
        case Key.image:
            if let value = value as? String { self.image = value }
        case Key.images:
            if let value = value as? [String] { self.images = value }
        case Key.icon:
            if let value = value as? String { self.icon = value }
        }
    }
    
    internal func value(for key: Key) -> Any? {
        switch key {
        case Key.url:
            return self.url
        case Key.finalUrl:
            return self.finalUrl
        case Key.canonicalUrl:
            return self.canonicalUrl
        case Key.title:
            return self.title
        case Key.description:
            return self.description
        case Key.image:
            return self.image
        case Key.images:
            return self.images
        case Key.icon:
            return self.icon
        }
    }
}
