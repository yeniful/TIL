//
//  SecondViewController.swift
//  UK201_PassingData
//
//  Created by Yeni Hwang on 2022/05/26.
//

import UIKit

class SecondViewController: UIViewController {
    
    let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Name: -"
        return label
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        view.addSubview(label)
        
        label.frame = CGRect(x: 0, y: 50, width: view.frame.size.width, height: 100)
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        view.addSubview(button)
        // 뷰의 중심 값을 버튼의 중심 값으로
        button.center = view.center
        button.setTitle("Set Name", for: .normal)
        button.backgroundColor = .black
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        // Do any additional setup after loading the view.
    }
    
    @objc private func didTapButton(){
        let textEntry = TextEntryViewController()
        // memory loop를 막기 위해 [weak self]
        textEntry.completion = { [weak self] text in
//            label.text = text
            DispatchQueue.main.async {
                self?.label.text = text
            }
        }
        // 텍스트엔트리 뷰 컨트롤러를 루트로 하는 뷰를 모달로
        let vc = UINavigationController(rootViewController: textEntry)
        present(vc, animated: true)
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
