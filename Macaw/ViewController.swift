//
//  ViewController.swift
//  Macaw
//
//  Created by Mac Mini on 1/18/17.
//  Copyright © 2017 Armonia. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSTextViewDelegate, NSTextStorageDelegate {
    
    var macaw: Macaw?
    
    @IBOutlet var textEditor: NSTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    func initialize() {
        macaw = Macaw(textEditor)
        var text = "func test() {\n\tlet name = \"Taylor Swift\" // Tested\n}"
        if let url = Bundle.main.url(forResource: "Sample", withExtension: "txt") {
            text = try! String(contentsOf: url)
        }
        textEditor.string = text
        textEditor.font = NSFont(name: "Menlo", size: 14)
        textEditor.isAutomaticQuoteSubstitutionEnabled  = false
        textEditor.isAutomaticDashSubstitutionEnabled   = false
        textEditor.isAutomaticSpellingCorrectionEnabled = false
        textEditor.isAutomaticLinkDetectionEnabled      = false
        textEditor.textStorage?.font = NSFont(name: "Menlo", size: 14)
        textEditor.textStorage?.delegate = self
        macaw?.colorize() // All
    }
    
    func textStorage(_ textStorage: NSTextStorage, didProcessEditing editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int) {
        macaw?.colorize(editedRange)
    }
    
}


