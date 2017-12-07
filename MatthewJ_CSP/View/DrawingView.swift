//
//  DrawingView.swift
//  MatthewJ_CSP
//
//  Created by Johnsen, Matthew on 12/5/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class DrawingView: UIView
{
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override public func draw(_ rect: CGRect)
    {
        //Drawing code
        drawStickFigure().stroke()
        drawHappyTree()
        drawDesignPart1()
        drawDesignPart2()
        drawDesignPart3()
        drawDesignPart4()
    }

    private func drawStickFigure() -> UIBezierPath
    {
        let stickFigure = UIBezierPath()
    
        UIColor.green.setStroke()
        stickFigure.lineWidth = 3.0
    
        stickFigure.addArc(withCenter: CGPoint(x: 200,y:200),
                           radius: CGFloat(20),
                           startAngle: CGFloat(0),
                           endAngle: CGFloat(2) * CGFloat.pi,
                           clockwise: true)
        stickFigure.move(to: CGPoint(x: 200,y: 220))
        stickFigure.addLine(to: CGPoint(x: 200,y: 270))
        stickFigure.move(to: CGPoint(x: 180,y: 240))
        stickFigure.addLine(to: CGPoint(x: 220,y: 240))
        stickFigure.move(to: CGPoint(x: 200,y: 270))
        stickFigure.addLine(to: CGPoint(x: 180,y: 300))
        stickFigure.move(to: CGPoint(x: 200,y: 270))
        stickFigure.addLine(to: CGPoint(x: 220,y: 300))
    
        return stickFigure
    }
    
    public func drawHappyTree() -> Void
    {
        let bobRoss = UIBezierPath()
        
        bobRoss.move(to: CGPoint(x:80, y:50))
        bobRoss.addLine(to: CGPoint(x:120, y:150))
        bobRoss.addLine(to: CGPoint(x:40, y:150))
        bobRoss.close()
        UIColor(patternImage: UIImage(named: "cute")!).setFill()
        UIColor.brown.setStroke()
        bobRoss.lineWidth = 2.0
        bobRoss.fill()
        bobRoss.stroke()
        
        let happyTree = UIBezierPath()
        
        UIColor.green.setFill()
        happyTree.move(to: CGPoint(x: 110,y: 150))
        happyTree.addLine(to: CGPoint(x: 150,y: 200))
        happyTree.addLine(to: CGPoint(x: 10,y: 200))
        happyTree.addLine(to: CGPoint(x: 50,y: 150))
        happyTree.close()
        happyTree.stroke()
        happyTree.fill()
        happyTree.move(to: CGPoint(x: 80,y: 200))
        happyTree.addLine(to: CGPoint(x: 80,y: 250))
        happyTree.lineWidth = 6.0
        happyTree.stroke()
    }
    
    private func drawDesignPart1() -> Void
    {
        let logo = UIBezierPath()
        
        UIColor.white.setFill()
        logo.move(to: CGPoint(x: 10, y: 365))
        logo.addLine(to: CGPoint(x: 10, y: 390))
        logo.addLine(to: CGPoint(x: 59, y: 340))
        logo.move(to: CGPoint(x: 61, y: 340))
        logo.addLine(to: CGPoint(x: 110, y: 290))
        logo.addLine(to: CGPoint(x: 110, y: 315))
        logo.close()
        logo.fill()
    }
    
    private func drawDesignPart2() -> Void
    {
        let logo2 = UIBezierPath()

        UIColor.blue.setFill()
        logo2.move(to: CGPoint(x: 110, y: 390))
        logo2.addLine(to: CGPoint(x: 85, y: 390))
        logo2.addLine(to: CGPoint(x: 60, y: 341))
        logo2.move(to: CGPoint(x: 10, y: 290))
        logo2.addLine(to: CGPoint(x: 35, y: 290))
        logo2.addLine(to: CGPoint(x: 60, y: 339))
        logo2.close()
        logo2.fill()
    }
    
    private func drawDesignPart3() -> Void
    {
        let logo3 = UIBezierPath()
        
        UIColor.green.setFill()
        logo3.move(to: CGPoint(x: 10, y: 315))
        logo3.addLine(to: CGPoint(x: 10, y: 340))
        logo3.addLine(to: CGPoint(x: 59, y: 340))
        logo3.move(to: CGPoint(x: 61, y: 340))
        logo3.addLine(to: CGPoint(x: 110, y: 365))
        logo3.addLine(to: CGPoint(x: 110, y: 340))
        logo3.close()
        logo3.fill()
    }
    
    private func drawDesignPart4() -> Void
    {
        let logo4 = UIBezierPath()
        
        UIColor.red.setFill()
        logo4.move(to: CGPoint(x: 35, y: 390))
        logo4.addLine(to: CGPoint(x: 60, y: 390))
        logo4.addLine(to: CGPoint(x: 60, y: 341))
        logo4.move(to: CGPoint(x: 85, y: 290))
        logo4.addLine(to: CGPoint(x: 60, y: 290))
        logo4.addLine(to: CGPoint(x: 60, y: 339))
        logo4.close()
        logo4.fill()
    }
}
