//
//  ViewController.swift
//  UK201_PassingData
//
//  Created by Yeni Hwang on 2022/05/26.
//

import UIKit

class ViewController: UIViewController {

    let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()

    let header:UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 150))
        view.backgroundColor = .black

        let title = UILabel()
        view.addSubview(title)
        title.text = "Custom Init"
        title.textColor = .white
        title.center = view.center
        
        return view
    }()
    let headerLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
   
    
    private let data = [
        ["apple", "sony", "google", "microsoft"],
        ["one", "two", "three", "four"],
        ["UK", "Italy", "Canada", "USA"]
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = view.bounds
        tableView.tableHeaderView = header
    }


}

extension ViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.section][indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let items = data[indexPath.section]
        let vc = SecondCustomViewController(selectedItem: items[indexPath.row], relatedItems: items)
//        present(vc, animated: true)
        present(UINavigationController(rootViewController: vc), animated: true)
    }
    

    
}

extension ViewController: UITableViewDelegate{
    
}

