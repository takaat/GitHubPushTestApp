//
//  ContentView.swift
//  GitHubPushTestApp
//
//  Created by mana on 2022/06/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Square")
//                .padding()
            Square()
//                .frame(width: 200, height: 200)
//                .frame(minWidth: 50, idealWidth: 200, maxWidth: 400, minHeight: 50, idealHeight: 200, maxHeight: 400)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Square: Shape {
    func path(in rect: CGRect) -> Path {
            var path = Path()

        let square: Array<CGPoint> = [
            .init(x: rect.midX, y: rect.midY/2),
            .init(x: rect.midX/2, y: rect.midY/2),
            .init(x: rect.midX/2, y: rect.maxY/4*3),
            .init(x: rect.maxX/4*3, y: rect.maxY/4*3),
            .init(x: rect.maxX/4*3, y: rect.midY/2)
        ]
        path.move(to: CGPoint(x: rect.midX, y: rect.midY))
        path.addLines(square)
//        path.addLine(to: CGPoint(x: rect.midX/2, y: rect.midY/4))
//        path.addLine(to: CGPoint(x: rect.midX, y: rect.midY))
//            path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.maxY),
//                              control: CGPoint(x: rect.midX, y: rect.midY))
//            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
//            path.addQuadCurve(to: CGPoint(x: rect.minX, y: rect.minY),
//                              control: CGPoint(x: rect.maxX, y: rect.midY))


            return path
        }
}
