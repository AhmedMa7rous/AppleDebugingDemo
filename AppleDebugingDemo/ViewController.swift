//
//  ViewController.swift
//  AppleDebugingDemo
//
//  Created by DGTERA on 28/09/2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var ImagesTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SystemIcons.names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = ImagesTableView.dequeueReusableCell(withIdentifier: "DebuggingCell", for: indexPath) as? ImagesTableViewCell else { return UITableViewCell() }
        cell.configure(with: SystemIcons.names[indexPath.row])
        
        return cell
    }
}

