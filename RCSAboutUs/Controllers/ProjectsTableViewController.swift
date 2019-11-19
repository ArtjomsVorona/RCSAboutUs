//
//  ProjectsTableViewController.swift
//  RCSAboutUs
//
//  Created by Artjoms Vorona on 14/11/2019.
//  Copyright © 2019 Artjoms Vorona. All rights reserved.
//

import UIKit

class ProjectsTableViewController: UITableViewController {
    
    var kateGitHubLinks = DataManager.shared.kateGitHubLinks
    var kateGitRepoNames =  DataManager.shared.kateGitRepoNames
    var kateGitRepoDescription = DataManager.shared.kateGitRepoDescription
    
    var artjomsGitHubLinks = DataManager.shared.artjomsGitHubLinks
    var artjomsGitRepoNames = DataManager.shared.artjomsGitRepoNames
    var artjomsGitRepoDescription = DataManager.shared.artjomsGitRepoDescription

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var number = 0
        if section == 0 {
            number = kateGitHubLinks.count
        } else {
            number = artjomsGitHubLinks.count
        }
        return number
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var text = "Project list"
        if section == 0 {
            text = "Kate projects in GitHub"
        } else {
            text = "Artjoms projects in GitHub"
        }
        return text
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProjectCell", for: indexPath)
        
        let index = indexPath.row
        cell.textLabel?.numberOfLines = 0
        cell.detailTextLabel?.numberOfLines = 0
        
        if indexPath.section == 0 {
            cell.textLabel?.text = kateGitRepoNames[index]
            cell.detailTextLabel?.text = kateGitRepoDescription[index]
        } else {
            cell.textLabel?.text = artjomsGitRepoNames[index]
            cell.detailTextLabel?.text = artjomsGitRepoDescription[index]
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = indexPath.row
        
        guard let webVC = storyboard?.instantiateViewController(withIdentifier: "WebSBID") as? WebViewController else { return }
        if indexPath.section == 0 {
            webVC.passedLink = kateGitHubLinks[index]
        } else {
            webVC.passedLink = artjomsGitHubLinks[index]
        }
        self.present(webVC, animated: true, completion: nil)
    }

}
