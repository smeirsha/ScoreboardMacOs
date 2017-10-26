/*
 Copyright (C) 2016 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 The `ClickableStepper` returns the trackable area of the stepper in which the event occured, when the user interacts with the stepper to update the score.
 */

import Cocoa

class ClickableStepperCell : NSStepperCell {
    
    // MARK: NSCell

    override func hitTest(for event: NSEvent, in cellFrame: NSRect, of controlView: NSView) -> NSCellHitResult {
        return .trackableArea
    }
}
