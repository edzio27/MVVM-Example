import UIKit

class MoviesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!

    var dataViewModel = DataViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initViewModel()
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataViewModel.numberOfCells
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "customTableViewCell", for: indexPath) as? CustomTableViewCell else {
            fatalError("Cell not exists in storyboard")
        }
        let cellVM = dataViewModel.getCellViewModel( at: indexPath )
        cell.lblTitle.text = cellVM.titleText
        cell.lblSubTitle.text = cellVM.subTitleText
        return cell
    }
}

