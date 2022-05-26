//
//  SecondCustomViewController.swift
//  UK201_PassingData
//
//  Created by Yeni Hwang on 2022/05/26.
//

import UIKit

class SecondCustomViewController: UIViewController {

    
    
    private let selectedItem: String
    private let relatedItems: [String]
    
    
    init(selectedItem: String, relatedItems: [String]){
        self.selectedItem = selectedItem
        self.relatedItems = relatedItems
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        title = selectedItem.uppercased()
        
        let label = UILabel(frame: view.bounds)
        view.addSubview(label)
        label.textAlignment = .center
        label.numberOfLines = -1
        
        for item in relatedItems {
            label.text = (label.text ?? "음슴") + " " + item
        }
        

        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
