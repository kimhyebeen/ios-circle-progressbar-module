//
//  ChloeCircleProgress.swift
//  ChloeCircleProgressBar
//
//  Created by 김혜빈 on 2021/02/25.
//

import UIKit

open class ChloeCircleProgress: UIView {
    private var progressLayer = CAShapeLayer()
    private var trackLayer = CAShapeLayer()
    
    open var progressColor = UIColor.systemPink {
        didSet { progressLayer.strokeColor = progressColor.cgColor }
    }
    open var trackColor = UIColor.systemGray4 {
        didSet { trackLayer.strokeColor = trackColor.cgColor }
    }
    open var fillColor = UIColor.clear {
        willSet { progressLayer.fillColor = newValue.cgColor }
    }
    open var progressLineWidth: CGFloat = 5.0 {
        willSet { progressLayer.lineWidth = newValue }
    }
    open var trackLineWidth: CGFloat = 5.0 {
        willSet { trackLayer.lineWidth = newValue }
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setupView()
    }
    
    private func setupView() {
        let frameWidth = frame.size.width
        layer.cornerRadius = frameWidth / 2
        
        let circlePath = UIBezierPath(
            arcCenter: CGPoint(x: frameWidth/2, y: frameWidth/2),
            radius: (frameWidth - 1.5)/2,
            startAngle: CGFloat(-0.5 * .pi),
            endAngle: CGFloat(1.5 * .pi),
            clockwise: true
        )
        
        makeTrackLayer(circlePath)
        makeProgressLayer(circlePath)
    }
    
    open func setupLabel(_ label: UILabel) {
        self.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
    open func setProgress(value: Float, duration: Double = 1.0) {
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.duration = duration
        animation.fromValue = 0
        animation.toValue = value
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        progressLayer.strokeEnd = CGFloat(value)
        progressLayer.add(animation, forKey: "animateprogress")
    }

}

extension ChloeCircleProgress {
    private func makeTrackLayer(_ circlePath: UIBezierPath) {
        trackLayer.path = circlePath.cgPath
        trackLayer.fillColor = UIColor.clear.cgColor
        trackLayer.strokeColor = self.trackColor.cgColor
        trackLayer.lineWidth = self.trackLineWidth
        trackLayer.strokeEnd = 1.0
        layer.addSublayer(trackLayer)
    }
    
    private func makeProgressLayer(_ circlePath: UIBezierPath) {
        progressLayer.path = circlePath.cgPath
        progressLayer.fillColor = self.fillColor.cgColor
        progressLayer.strokeColor = self.progressColor.cgColor
        progressLayer.lineCap = .round
        progressLayer.lineWidth = self.progressLineWidth
        progressLayer.strokeEnd = 0.0
        layer.addSublayer(progressLayer)
    }
}
