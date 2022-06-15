<h1 align="center">BMI Calculator</h1>

![bmi-calculator](https://socialify.git.ci/alexcamachogz/bmi-calculator/image?font=Inter&language=1&name=1&owner=1&pattern=Solid&theme=Dark)

This project is a Body Mass Index Calculator, based on the user's weight and height it will calculate their body mass and give a pice of health advice according with their results.

## Table of contents
- [Demo](#demo)
- [Features](#features)
- [Installation Step](#installation-steps)
- [The Process](#the-process)
  - [Built With](#built-with)
  - [Recently Learned](#recently-learned)
- [Useful resources](#useful-resources)
- [License](#license)
- [Author](#author)

## Demo

![BMI](https://media.giphy.com/media/Qv215rmmdyDREU8SeW/giphy.gif)

## Features

Here're some of the best features included on the project:

* Sliders to set the weight and height
* Result of your BMI according with your weight and height
* Advice according with your results to take care of your health

## Installation Steps

1. Clone the repository
2. Open the project with Xcode
3. Run the app and enjoy it

## The Process

### Built With
Technologies used in the project:

*   Swift 5.6
*   Xcode 13.3
*   iOS 15.5

### Recently Learned

Segues are visual connectors between view controllers in the storyboards, shown as lines between two controllers. They allow you to present one view controller from another.

```Swift
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
  if segue.identifier == "goToResult" {
      let destinationVC = segue.destination as! ResultViewController
      destinationVC.bmiValue = calculatorBrain.getBMIValue()
      destinationVC.bmiAdvice = calculatorBrain.getAdvice()
      destinationVC.bmiColor = calculatorBrain.getColor()
  }
}
```

## Useful resources

* [Canva](https://www.canva.com) - Used to create graphics.
* [Using Segues](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/UsingSegues.html) - A guide to implement segues in Swift

## License:

> This project is licensed under the MIT License


## Author

Made with 💜  by [alexcamachogz](https://twitter.com/alexcamachogz)

>This is a companion project to The App Brewery's Complete App Development Bootcamp, check out the full course at [www.appbrewery.co](https://www.appbrewery.co/)