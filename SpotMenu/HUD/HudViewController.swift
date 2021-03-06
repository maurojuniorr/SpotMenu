//
//  ViewController.swift
//  Toast
//
//  Created by toshi0383 on 2016/10/23.
//
//

import AppKit
import Foundation

final class HudViewController: NSViewController {

    var text = ""
    var closeAfter: Double = 3.0

    override func viewDidAppear() {
        super.viewDidAppear()
        view.makeToast(text, closeAfter)
    }
}

final class HudWindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
        super.window?.backgroundColor = NSColor(calibratedRed: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
    }
    func setCloseDelay(closeAfter: Double) {
        let c = super.window?.contentViewController as! HudViewController
        c.closeAfter = closeAfter
    }
    func setText(text: String) {
        let c = super.window?.contentViewController as! HudViewController
        c.text = text
    }
    func changeText(text: String) {
        let c = super.window?.contentViewController as! HudViewController
        c.view.changeToastText(text)
    }

}
