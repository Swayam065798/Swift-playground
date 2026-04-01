import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

var greeting = "Hello, playground"

func getData() {
    let session = URLSession.shared
    let serviceURL = URL(string: "https://demo3738117.mockable.io/GMEC/mobiquitypay/bank")
    
    guard let serviceURL = serviceURL else {return}
            
    let task = session.dataTask(with: serviceURL) {
        (serviceData, serviceResp, error) in
        
        if error == nil {
            let httpResp = serviceResp 
        }
    }
}
