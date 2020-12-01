//
//  ViewController.swift
//  Bankaks-Bill-Payment-Assessment
//
//  Created by khaoula hafsia on 29/11/2020.
//

import UIKit

class ServicesViewController: UIViewController {
    
    @IBOutlet weak var servicesTableView: UITableView!
    
    let servicesVM = ServicesViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
    }
    
    func setUpTableView(){
        servicesTableView.dataSource = self
        servicesTableView.delegate = self
        servicesTableView.registerCell(nib: "ServiceCell", cellreuseIdentifier: "ServiceCell")
    }


}

extension ServicesViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return servicesVM.services.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ServiceCell") as! ServiceCell
        cell.SetUpUI(service: servicesVM.services[indexPath.row])
        return cell
    }
}
extension ServicesViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
