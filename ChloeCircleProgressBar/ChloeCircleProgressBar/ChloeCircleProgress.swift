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
    
    var progressColor = UIColor.systemGreen {
        didSet { progressLayer.strokeColor = progressColor.cgColor }
    }
    var trackColor = UIColor.systemGray2 {
        didSet { trackLayer.strokeColor = trackColor.cgColor }
    }
    var fillColor = UIColor.clear {
        didSet { trackLayer.fillColor = oldValue.cgColor }
    }
    var progressLineWidth: CGFloat = 5.0 {
        didSet { progressLayer.lineWidth = oldValue }
    }
    var trackLineWidth: CGFloat = 5.0 {
        didSet { trackLayer.lineWidth = oldValue }
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
        
    }
    
    open func setupLabel(_ label: UILabel) {
        
    }
    
    open func setProgress(value: Float, duration: Double = 1.0) {
        
    }

}

extension ChloeCircleProgress {
    func makeTrackLayer(_ circlePath: UIBezierPath) {
        trackLayer.path = circlePath.cgPath
        trackLayer.fillColor = self.fillColor.cgColor
        trackLayer.strokeColor = self.trackColor.cgColor
        trackLayer.lineWidth = self.trackLineWidth
        trackLayer.strokeEnd = 1.0
        layer.addSublayer(trackLayer)
    }
}
