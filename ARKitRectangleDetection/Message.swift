//
//  Message.swift
//  ARKitRectangleDetection
//
//  Created by Melissa Ludowise on 8/6/17.
//  Copyright © 2017 Mel Ludowise. All rights reserved.
//

import Foundation

enum Message {
    
    // Help message to instruct the user to move their phone to identify a surface
    case helpFindSurface
    
    // Help message to instruct the user to tap & hold on a rectangle to identify it
    case helpTapHoldRect
    
    // Help message to instruct the user to release their finger to select the rectangle
    case helpTapReleaseRect
    
    // Error message displays when the user taps but no rectangle is detected
    case errNoRect
    
    // Error message displays when a surface cannot be found for the identified rectangle
    case errNoPlaneForRect
    
    case helpImage
}

extension Message {
    var localizedString: String {
        get {
            switch(self) {
            case .helpFindSurface:
                return NSLocalizedString("Move your phone until you see a blue grid covering the surface of your stock.", comment: "")
            case .helpTapHoldRect:
                return NSLocalizedString("Tap and hold to select stock.", comment: "")
            case .helpTapReleaseRect:
          //      return NSLocalizedString("Release your finger to finalize your selection.", comment: "")
                  return NSLocalizedString("Loading...", comment: "")
            case .errNoRect:
                return NSLocalizedString("The stock couldn't be identified. Try moving your phone to another angle.", comment: "")
            case .helpImage:
                return NSLocalizedString("New Sufrace found", comment: "")
            case .errNoPlaneForRect:
                return String(format: NSLocalizedString("The stocks's surface wasn't found. %@", comment: ""), Message.helpFindSurface.localizedString)
            }
        }
    }
}
