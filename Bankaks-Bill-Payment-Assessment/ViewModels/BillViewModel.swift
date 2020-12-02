//
//  BillViewModel.swift
//  Bankaks-Bill-Payment-Assessment
//
//  Created by khaoula hafsia on 1/12/2020.
//

import Foundation
import Combine

enum ListViewModelState {
    case loading
    case finishedLoading
    case error(Error)
}

class BillViewModel{
    
    var billId: Int = 0
    var  task :  AnyCancellable?  =  nil
    
    private var bindings = Set<AnyCancellable>()
    
    @Published var errorCode: String = ""
    @Published var showAlert: Bool = false
    @Published private(set) var state: ListViewModelState = .loading
    
    @Published var bill: Bill?{
        didSet{
            print("Bill did set")
        }
    }
    
    func getBillInfo() {
        self.task = ApiBillClient.getBillInformation(billID: billId)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    self.state = .finishedLoading
                    print("bill info ")
                case let .failure(error):
                    print(error)
                    self.state = .error(error)
                    self.errorCode = error.localizedDescription
                    self.showAlert = true
                }
            },
                  receiveValue: { data in
                    self.bill = data.result
                    self.errorCode = ""
                    self.showAlert = false
            })
    }
}
