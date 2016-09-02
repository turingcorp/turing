import Cocoa

class VEditor:NSView
{
    weak var controller:CEditor!
    weak var textView:NSTextView!
    
    convenience init(controller:CEditor)
    {
        self.init()
        self.controller = controller
        
        let container:NSTextContainer = NSTextContainer()

        let textView:NSTextView = NSTextView(frame:CGRectMake(0, 0, 100, 100))
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.backgroundColor = NSColor.redColor()
        textView.verticallyResizable = true
        textView.horizontallyResizable = true
        
        addSubview(textView)

        let views:[String:AnyObject] = [
            "textView":textView]
        
        let metrics:[String:NSNumber] = [:]
        
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "H:|-10-[textView]-10-|",
            options:[],
            metrics:metrics,
            views:views))
        addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "V:|-10-[textView]-30-|",
            options:[],
            metrics:metrics,
            views:views))
    }
    
    override func layout() {
        super.layout()
//        textView.invalidateIntrinsicContentSize()
    }
}