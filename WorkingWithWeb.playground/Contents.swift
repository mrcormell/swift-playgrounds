import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let url = URL(string: "https://api.nasa.gov/planetary/apod?api_key=Mdv4fUBifDwPg1sUwnnWI8B5WI8xGCVWaweyJTIy")!

let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
    if let data = data , let string = String(data: data, encoding: .utf8) {
        print(string)
    }
    PlaygroundPage.current.finishExecution()
}

task.resume()
