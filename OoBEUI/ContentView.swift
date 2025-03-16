//
//  ContentView.swift
//  OoBEUI
//
//  Created by Shota Sakoda on 2025/03/17.
//

import SwiftUI
import SplineRuntime

struct ContentView: View {
    var body: some View {
        VStack {
            Onboard3DView()
                .frame(height: 500)
                .ignoresSafeArea()
            
            VStack(spacing: 12){
                Text("ひらめきを逃さない")
                    .font(.title.bold())
                
                Text("新しいアイデアを形にする、あなたのためのアプリケーション。最速でカタチに。")
                    .foregroundStyle(.secondary)
            }
            .padding(.horizontal,36)
            
            Spacer()
            
            Button(action: {
                //action
            }){
                Text("はじめる")
                    .font(.system(size: 24, weight: .bold))
                    .frame(width: 300, height: 50)
            }
            .buttonStyle(.borderedProminent)
            .tint(.pink)
            
            Spacer()
        }
    }
}

struct Onboard3DView: View{
    var body: some View{
        let url = URL(string: "https://build.spline.design/tVhuAt4S451SJuHYGEzm/scene.splineswift")!
        
        // fetching from local
        // let url = Bundle.main.url(forResource: "scene", withExtension: "splineswift")!
        
        SplineView(sceneFileURL: url)
            .aspectRatio(contentMode: .fill) // 画面いっぱいに拡大
    }
}

#Preview {
    ContentView()
}
