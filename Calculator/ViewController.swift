
import UIKit
import Expression

class ViewController: UIViewController {
    
    // MARK: - Variables
    
    @IBOutlet private weak var resultLabel: UILabel!
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: - Actions
    
    @IBAction private func didTapClear(_ sender: UIButton) {
        resultLabel.text = ""
    }
    
    @IBAction private func didTapResult(_ sender: UIButton) {
        guard let mathExpression = resultLabel.text else {
            return
        }
        let expression = Expression(mathExpression)
        do {
            resultLabel.text = try String(expression.evaluate())
        } catch {
            showAlert(title: "Error", message: "Calculating error!")
        }
    }
    
    @IBAction private func didTapDivision(_ sender: UIButton) {
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "/"
        
    }
    
    @IBAction private func didTapMultiplication(_ sender: UIButton) {
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "*"
        
    }
    
    @IBAction private func didTapDifference(_ sender: UIButton) {
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "-"
        
    }
    
    @IBAction private func didTapAmount(_ sender: UIButton) {
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "+"
        
    }
    
    @IBAction private func didTap0(_ sender: UIButton) {
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "0"
    }
    
    @IBAction private func didTap1(_ sender: UIButton) {
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "1"
    }
    
    @IBAction private func didTap2(_ sender: UIButton) {
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "2"
    }
    
    @IBAction private func didTap3(_ sender: UIButton) {
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "3"
    }
    
    @IBAction private func didTap4(_ sender: UIButton) {
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "4"
    }
    
    @IBAction private func didTap5(_ sender: UIButton) {
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "5"
    }
    
    @IBAction private func didTap6(_ sender: UIButton) {
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "6"
    }
    
    @IBAction private func didTap7(_ sender: UIButton) {
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "7"
    }
    
    @IBAction private func didTap8(_ sender: UIButton) {
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "8"
    }
    
    @IBAction private func didTap9(_ sender: UIButton) {
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "9"
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}

