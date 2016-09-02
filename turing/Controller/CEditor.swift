import Cocoa

class CEditor:NSViewController
{
    weak var viewEditor:VEditor!
    
    override func loadView()
    {
        let viewEditor:VEditor = VEditor()
        self.viewEditor = viewEditor
        view = viewEditor
    }
}