/*
 Copyright (C) 2016 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 The `PlayerInfo` class manages the players information: name, score, image and stores the data to be displayed.
 */

import Foundation
import Cocoa

class PlayerInfo: NSObject, NSCoding {
    // MARK: Properties

    dynamic var name: String
    
    dynamic var score: Int
    
    dynamic var image: NSImage
    
    // MARK: Initialization
    
    init(name: String, score: Int, image: NSImage? = nil) {
        self.name = name
        self.score = score
        
        if let image = image {
            self.image = image
        }
        else {
            self.image = NSImage(named: "NSUserGuest")!
        }
    }
    
    // MARK: NSCoding
    
    required convenience init?(coder aDecoder: NSCoder) {
        guard let name = aDecoder.decodeObject(forKey: "playerName") as? String, let image = aDecoder.decodeObject(forKey: "image") as? NSImage else { return nil }
        let score = aDecoder.decodeInteger(forKey: "playerScore")
        
        self.init(name: name, score: score, image: image)
    }
    
    @objc(encodeWithCoder:) internal func encode(with encoder: NSCoder) {
        encoder.encode(name, forKey: "playerName")
        encoder.encode(score, forKey: "playerScore")
        encoder.encode(image, forKey: "image")
    }

}
