
import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {
    
    

    @IBOutlet weak var colorPicker: UIPickerView!
    @IBOutlet weak var colorLabel: UILabel!
    
    struct colorChoose{
        var color = ""
        var userColor = UIColor.white
    }
    
    var colors = [colorChoose(color: "red", userColor: UIColor.red), colorChoose(color: "orange", userColor: UIColor.orange), colorChoose(color:"yellow", userColor: UIColor.yellow), colorChoose(color:"green", userColor: UIColor.green), colorChoose(color:"blue", userColor: UIColor.blue), colorChoose(color:"purple", userColor: UIColor.purple)]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colorLabel.text = colors[row].color
        self.view.backgroundColor = colors[row].userColor
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].color
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let index = 0
        colorLabel.text = colors[index].color
        self.view.backgroundColor = colors[index].userColor

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



    
    
    

