//
//  CardView.swift
//  MiHike
//
//  Created by Min Thu Khine on 2/5/24.
//

import SwiftUI

struct TipsCardView: View {
    var person: String
    @State private var offset = CGSize.zero
    @State private var color: Color = .black
    
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .frame(width: 320, height: 420)
                .border(.white, width: 6.0)
                .cornerRadius(4)
                .foregroundStyle(color.opacity(0.9))
                .shadow(radius: 4)
            HStack {
                Text(person)
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.white)
            }
            .frame(width: 280, height: 380)
        }
        .offset(x: offset.width, y: offset.height * 0.4)
        .rotationEffect(.degrees(Double(offset.width / 40)))
        .gesture(DragGesture()
            .onChanged{ gesture in
                offset = gesture.translation
            }
            .onEnded{ _ in
                withAnimation {
                    swipeCard(width: offset.width)
                }
            }
        )
    }
    
    func swipeCard(width: CGFloat) {
        switch width {
        case -500...(-150):
            offset = CGSize(width: -500, height: 0)
        case 150...500:
            offset = CGSize(width: 500, height: 0)
        default:
            offset = .zero
        }
    }
}

#Preview {
    TipsCardView(person: "Mario")
}
