//
//  TextEntryViewController.swift
//  UK201_PassingData
//
//  Created by user on 2022/05/27.
//

import UIKit

class TextEntryViewController: UIViewController {
    
    private let field: UITextField = {
        let field = UITextField()
        field.placeholder = "Enter Name..."
        field.backgroundColor = .white
        return field
    }()
    
    // closures
    public var completion: ((String?) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        title = "Enter Name"
        
        // 네비게이션 아이템 done을 누르면 didTapDoneButton 함수 실행
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "done", style: .done, target: self, action: #selector(didTapDoneButton))
        
        view.addSubview(field)
        field.frame = CGRect(x: 20, y: 100, width: view.frame.size.width, height: 60)
        field.becomeFirstResponder()
    }
 
    @objc private func didTapDoneButton(){
        completion?(field.text)
        dismiss(animated: true, completion: nil)
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
