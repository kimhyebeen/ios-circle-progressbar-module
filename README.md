# ChloeCircleProgressBar
This is a iOS submodule for _Circle Progress Bar_. The circle progress bar can display the percentage of some missions using the circle bar.

 <br />

## Requirements
* iOS 13.0

 <br />

## Installation
* move to your xcode project file.
* Add this submodule file in your project.
````
$ cd (your project)
$ git submodule add https://github.com/kimhyebeen/ios-submodule-circle-progress-bar.git
````

* Add this module in your xcode **(target > General > Frameworks, Libraries, and Embedded Content)**
<img src="./image/installation01.png" width="600" />
<img src="./image/installation02.png" width="400" />
<img src="./image/installation03.png" width="600" />
<img src="./image/installation04.png" width="400" />

 <br />

## Usage
* import this module.
````swift
import ChloeCircleProgressBar
````

* create a property for CircleProgressBar
````swift
let circleProgress = ChloeCircleProgress(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
````

* setting the progress value in your `ChloeCircleProgress`.

<img src="./image/usage01.png" width="250" />

````swift
circleProgress.setProgress(value: 7/10) // 0.0 ~ 1.0
self.view.addSubview(circleProgress)

circleProgress.translatesAutoresizingMaskIntoConstraints = false
circleProgress.widthAnchor.constraint(equalToConstant: 60).isActive = true
circleProgress.heightAnchor.constraint(equalToConstant: 60).isActive = true
circleProgress.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -40).isActive = true
circleProgress.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
````

* you can add a label in your `ChloeCircleProgress`.

<img src="./image/usage02.png" width="250" />

````swift
let label = UILabel()
label.text = "7 / 10"
label.font = .systemFont(ofSize: 14)
label.textColor = .systemPink
circleProgress.setupLabel(label)
````

 <br />

## References
* [Git submodule 써보기 + 삭제하는 법](https://zeddios.tistory.com/704)
* [Git submodule 사용하기](https://pinedance.github.io/blog/2019/05/28/Git-Submodule)
* [Create Circular Progress Bar in iOS](https://www.tutorialspoint.com/create-circular-progress-bar-in-ios)
