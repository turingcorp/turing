import Cocoa

class CAppDelegate:NSObject, NSApplicationDelegate
{
    var window:NSWindow!
    var statusBarItem : NSStatusItem!
    var statusBar = NSStatusBar.systemStatusBar()

    func applicationDidFinishLaunching(aNotification:NSNotification)
    {
        statusBarItem = statusBar.statusItemWithLength(-1)
        statusBarItem.title = "Test"
        
        let rect:NSRect = NSRect(x:0, y:0, width:800, height:800)
        let window:NSWindow = NSWindow(contentRect:rect, styleMask:NSUnifiedTitleAndToolbarWindowMask, backing:NSBackingStoreType.Buffered, defer:false)
        window.title = ""
        window.opaque = false
        window.backgroundColor = NSColor.blackColor()
        window.makeKeyAndOrderFront(nil)
        self.window = window
    }

    func applicationWillTerminate(aNotification:NSNotification)
    {
    }
}