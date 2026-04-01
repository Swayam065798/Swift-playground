import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

class MyViewController: UIViewController {

    var completionHandler: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("viewDidLoad called")

        completionHandler = { [weak self] in
            self?.doSomething()
        }

        completionHandler?()
    }

    func doSomething() {
        print("Doing something")
    }

    deinit {
        print("Deinitialized")
    }
}

let vc = MyViewController()
PlaygroundPage.current.liveView = vc
