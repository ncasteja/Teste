//
//  Principal.swift
//  Eventos
//
//  Created by Nicolas Junqueira de Souza Alvar de Biaudos de Casteja on 2/22/16.
//  Copyright © 2016 Nicolas de Casteja. All rights reserved.
//

import UIKit

class Principal: UIViewController, UITableViewDataSource {

    
    var categories = ["Action", "Drama", "Science Fiction", "Kids", "Horror"]
  
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      //  self.view = NSBundle.mainBundle().loadNibNamed("Principal", owner: self, options: [:])[0] as! UIView //ISSO EH MUITTO IMPORTANTE PRA PASSAR DE TELA
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return categories.count
    }
    
    

    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return categories[section]
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
    
    let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! CategoryRow
    return cell
}
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
