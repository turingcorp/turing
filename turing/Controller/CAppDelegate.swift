import Cocoa

class CAppDelegate:NSObject, NSApplicationDelegate
{
    var window:NSWindow!
    private let kInitialWidth:CGFloat = 600
    private let kInitialHeight:CGFloat = 400

    func applicationDidFinishLaunching(aNotification:NSNotification)
    {
        let screenFrame:NSRect = NSScreen.mainScreen()!.frame
        let remainBottom:CGFloat = screenFrame.maxY - kInitialHeight
        let remainLeft:CGFloat = screenFrame.maxX - kInitialWidth
        let marginBottom:CGFloat = remainBottom / 2.0
        let marginLeft:CGFloat = remainLeft / 2.0
        let rect:NSRect = NSRect(x:marginLeft, y:marginBottom, width:kInitialWidth, height:kInitialHeight)
        let windowMask:Int = NSResizableWindowMask|NSMiniaturizableWindowMask|NSClosableWindowMask|NSTitledWindowMask|NSTexturedBackgroundWindowMask
        let window:NSWindow = NSWindow(contentRect:rect, styleMask:windowMask, backing:NSBackingStoreType.Buffered, defer:false)
        window.opaque = false
        window.backgroundColor = NSColor.whiteColor()
        window.makeKeyAndOrderFront(nil)
        
        let controller:CEditor = CEditor()

        window.contentViewController = controller
        self.window = window
    }

    func applicationWillTerminate(aNotification:NSNotification)
    {
    }
}