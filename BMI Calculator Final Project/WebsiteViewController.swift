//
//  WebsiteViewController.swift
//  BMI Calculator Final Project
//
//  Created by Evan Hartnett on 4/8/22.
//

//import Foundation


//importing WKWebViewSegue framework - allowing access to the web through the app

        import UIKit
        import WebKit
      

        //class for the framework
        class WXViewController: UIViewController, WKNavigationDelegate {
            //this button, when pressed, sends you to a website that gives you more information about BMI
            @IBOutlet weak var webView: WKWebView! //conected to button "Press here for more on BMI"
            //link for the website you are sent to when you click the button
            let sampleURL = "https://www.nhlbi.nih.gov/health/educational/lose_wt/BMI/bmicalc.htm"
            
            
            

            
            override func viewDidLoad() { //called after view is loaded into memory
                super.viewDidLoad()
            
               
                self.sendRequest(urlString: sampleURL)
            }  //requests website access so that the button directs you to the website
            
            //gives permission to access website
            func sendRequest(urlString: String) { //URL link put into String form so user can be directed to website on click of button
                let myURL = URL(string: urlString) //computed string of URL and the request to access it
                let myRequest = URLRequest(url: myURL!)
                webView.load(myRequest) //loads website upon request
                
            }
            
            
            
            
        }

    

