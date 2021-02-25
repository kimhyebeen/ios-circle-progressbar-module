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

}
