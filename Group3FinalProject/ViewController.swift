//
//  ViewController.swift
//  Group3FinalProject
//
//  Created by Kunkle, Samuel I. on 11/13/25.
//
//Randy
import UIKit
struct currency{
    let code: String
    let name: String
    let rate: Double
}
class ViewController: UIViewController {
    
    let currencies = [currency(code: "USD", name: "United States dollar", rate: 1.0),
                      currency(code: "CAD", name: "Canadian Dollar", rate: 1.4),
                      currency(code: "JPY", name: "Japanease Yen", rate: 155.34),
                      currency(code: "ARS", name: "Argentine Peso", rate: 1400.5),
                      currency(code: "CNY", name: "Chinese Yuan", rate: 7.11),
                      currency(code: "EUR", name: "Euro", rate: 0.86),
                      currency(code: "GBP", name: "Pound Sterling", rate: 0.76),]
    var chosenCurrency: Int = 0
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var usdText: UITextField!
    
    @IBAction func convert(_ sender: Any) {
        if let amount = Double(usdText.text ?? "") {
            let result = amount * currencies[chosenCurrency].rate
            resultLabel.text = "USD to \(currencies[chosenCurrency].code) = \(String(format: "%.2f", result))"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // edit
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currencies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "currencyCell", for: indexPath) as! TableViewCell
        cell.nameLabel?.text = currencies[indexPath.row].name
        cell.currencyLabel?.text = String(currencies[indexPath.row].rate)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
                case 0 : chosenCurrency = 0
                case 1 : chosenCurrency = 1
                case 2: chosenCurrency = 2
                case 3: chosenCurrency = 3
                case 4: chosenCurrency = 4
                case 5: chosenCurrency = 5
                case 6: chosenCurrency = 6
                default : chosenCurrency = 0
        
        }
    }
    
}

