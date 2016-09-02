import Cocoa

class CEditor:NSViewController
{
    weak var viewEditor:VEditor!

    override func loadView()
    {
        let viewEditor:VEditor = VEditor(controller:self)
        self.viewEditor = viewEditor
        view = viewEditor
    }
}