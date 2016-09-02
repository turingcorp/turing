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
        let controller:CEditor = CEditor()
        let window:NSWindow = NSWindow(contentRect:CGRectZero, styleMask:windowMask, backing:NSBackingStoreType.Buffered, defer:false)
        window.makeKeyAndOrderFront(nil)
        window.contentViewController = controller
        window.setFrame(rect, display:false)
        window.backgroundColor = NSColor.whiteColor()
        self.window = window
    }

    func applicationWillTerminate(aNotification:NSNotification)
    {
    }
}