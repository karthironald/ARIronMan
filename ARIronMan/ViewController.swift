//
//  ViewController.swift
//  ARIronMan
//
//  Created by Karthick Selvaraj on 16/09/17.
//  Copyright © 2017 Mallow Technologies Private Limited. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!

    
    // MARK: - View life cycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set the view's delegate
        sceneView.delegate = self
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()
        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // Pause the view's session
        sceneView.session.pause()
    }


    // MARK: - Touc events method
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // To add ironman at when user taps on screen
        let scene = SCNScene(named: "art.scnassets/ironMan.scn")!
        // Set the scene to the view
        sceneView.scene = scene
    }

}
