//
//  ViewController.swift
//  AzApi
//
//  Created by Sefa Aycicek on 27.02.2024.
//

import UIKit

class ViewController: UIViewController {

    let viewModel = FlightViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
        
       /* var str = "Merhaba dünya"
        let data = str.data(using: .utf8)
        print(data)
        
        let imageUri = "https://i0.wp.com/www.sanatbul.org/wp-content/uploads/2022/10/gorsel.jpg"
        if let url = URL(string: imageUri) {
            DispatchQueue.global().async {
                if let imageData = try? Data(contentsOf: url) {
                    let image = UIImage(data: imageData)
                    print("")
                }
                
            }
        }*/
    }
    
    func fetchData() {
        viewModel.getList { result in
            switch result {
            case .success:
                self.handleSuccess()
            case .failure(let error):
                self.handleFailure(error: error)
            }
        }
    }
    
    func handleSuccess() {
        
    }
    
    func handleFailure(error : NetworkError) {
        print("network error: \(error)")
    }
}
