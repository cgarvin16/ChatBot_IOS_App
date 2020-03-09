//
//  ViewController.swift
//  ChatBot_IOS
//
//  Created by Tiffany Garvin on 3/7/20.
//  Copyright © 2020 Carolyn Garvin. All rights reserved.
//

import UIKit
import ServiceChat

class ViewController: UIViewController {
    let POD = "d.la1-c2-ia5.salesforceliveagent.com"
    let ORG_ID = "00D6g000008O3dH"
    let DEPLOYMENT_ID = "5726g000000hNRe"
    let BUTTON_ID = "5736g000000hOwO"
    
    var chatConfig: SCSChatConfiguration?

    override func viewDidLoad() {
      super.viewDidLoad()
      chatConfig = SCSChatConfiguration(liveAgentPod: POD,
                                        orgId: ORG_ID,
                                        deploymentId: DEPLOYMENT_ID,
                                        buttonId: BUTTON_ID)
    }

    @IBAction func chatButtonTapped(_ sender: Any) {
            ServiceCloud.shared().chatUI.showChat(with: chatConfig!)
    }
    
}

