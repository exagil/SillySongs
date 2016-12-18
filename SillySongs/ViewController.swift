   import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var labelLyrics: UILabel!
    
    @IBAction func reset(_ sender: Any) {
        nameField.text?.removeAll()
        labelLyrics.text?.removeAll() 
    }

    @IBAction func displayLyrics(_ sender: Any) {
        let  name : Name = Name(nameField.text!)
        let lyrics : String = Song.forName(name).lyricize()
        labelLyrics.text = lyrics
    }
}
