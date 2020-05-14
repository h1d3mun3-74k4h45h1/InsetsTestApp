import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    lazy var testView = TestView(frame: CGRect(x: 0, y: 44, width: view.frame.width, height: 50.0))

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        navigationController?.navigationBar.addSubview(testView)

        let insets = UIEdgeInsets(top: 50.0, left: 0, bottom: 0, right: 0)

        tableView.contentInset = insets

        tableView.scrollIndicatorInsets = insets
    }
}


extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return String("Start \(section)'s Section")
    }

    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return String("End \(section)'s Section")
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "pushSegue", sender: nil)
    }
}
