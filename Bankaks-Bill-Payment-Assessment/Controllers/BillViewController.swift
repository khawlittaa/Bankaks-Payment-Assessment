//
//  BillViewController.swift
//  Bankaks-Bill-Payment-Assessment
//
//  Created by khaoula hafsia on 1/12/2020.
//

import UIKit
import Combine

class BillViewController: UIViewController {
    
    let billVM = BillViewModel()
    
    @IBOutlet weak var proceedButton: UIButton!
    @IBOutlet weak var billTableView: UITableView!
    
    private var bindings = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpButtonApperance()
        getBillDate()
        setUpTableView()
        setUpBindings()
    }
    
    func setUpTableView(){
        billTableView.dataSource = self
        billTableView.registerCell(nib: "InputTextCell", cellreuseIdentifier: "InputTextCell")
    }
    func getBillDate(){
        billVM.getBillInfo()
    }
    
    func setUpButtonApperance(){
        proceedButton.roundEdges()
        proceedButton.isValid = false
    }
    
    
    
    
    func bindViewModelToView() {
        
        //        billVM.validatedData
        //            .receive(on: RunLoop.main)
        //            .assign(to: \.isValid, on: proceedButton)
        //            .store(in: &bindings)
        let viewModelsValueHandler: (Bill) -> Void = { [weak self] _ in
            self?.billTableView.reloadData()
        }
        
        //            billVM.$bill
        //                .receive(on: RunLoop.main)
        //                .sink(receiveValue: viewModelsValueHandler)
        //                .store(in: &bindings)
        
        let stateValueHandler: (ListViewModelState) -> Void = { [weak self] state in
            switch state {
            case .loading:
                print("starting loading indicator")
                showActivityIndicatory()
            case .finishedLoading:
                print("stopping loading indicator")
                hideActivityIndicatory()
            case .error(let error):
                print("stopping loading indicator && show error ")
                hideActivityIndicatory()
                self?.showError(error)
            }
        }
        
        billVM.$state
            .receive(on: RunLoop.main)
            .sink(receiveValue: stateValueHandler)
            .store(in: &bindings)
    }
    
    
    
    private func setUpBindings() {
        bindViewModelToView()
    }
}

extension BillViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2 // only for testing
        //            return billVM.bill?.number_of_fields
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InputTextCell") as! InputTextCell
        if let field = billVM.bill?.fields![indexPath.row]{
            cell.setInputField(field: field)
        }
        return cell
    }
}

