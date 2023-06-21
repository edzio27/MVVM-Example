import UIKit

class MovieViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var dataViewModel = DataViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
