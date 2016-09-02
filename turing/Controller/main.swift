import Cocoa

autoreleasepool { () -> () in
    let app = NSApplication.sharedApplication()
    let delegate = CAppDelegate()
    app.delegate = delegate
    app.run()
}