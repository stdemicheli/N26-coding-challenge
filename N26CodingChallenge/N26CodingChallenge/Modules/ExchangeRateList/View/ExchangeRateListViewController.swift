//
//  ExchangeRateListViewController.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 04.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//

import UIKit

class ExchangeRateListViewController: UIViewController {
    
    var output: ExchangeRateListViewOutput!
    @IBOutlet weak var tableView: UITableView!
    static let cellIdentifier = "ExchangeRate"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.didTriggerViewReadyEvent()
    }
    
}

extension ExchangeRateListViewController: ExchangeRateListViewInput {
    
    func setupInitialState() {
        title = "Bitcoin Prices"
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func showExchangeRateList() {
        tableView.reloadData()
    }
    
    func showError(with message: String) {
        let errorView = ErrorView(message: message)
        errorView.show(in: self)
    }
    
}

extension ExchangeRateListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return output.getNumberOfExchangeRates()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ExchangeRateListViewController.cellIdentifier, for: indexPath)
        output.didDequeueCell(at: indexPath) { (rate) in
            cell.textLabel?.text = rate.rate
            cell.detailTextLabel?.text = rate.symbol
            cell.textLabel?.textColor = UIColor.cream
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        output.didSelectExchangeRate(at: indexPath)
    }
    
}
