import WebKit
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.webView.scrollView.contentInsetAdjustmentBehavior = .never
    }
    
    override func viewSafeAreaInsetsDidChange() {
        super.viewSafeAreaInsetsDidChange()
        self.webView.scrollView.contentInset = self.view.safeAreaInsets
        self.webView.scrollView.scrollIndicatorInsets = self.view.safeAreaInsets
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.webView.load(URLRequest(url: URL(string: "https://www.duckduckgo.com")!))
    }

}

