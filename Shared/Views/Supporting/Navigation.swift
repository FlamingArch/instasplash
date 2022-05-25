//
//  BottomBar.swift
//  Instasplash
//
//  Created by Harsh Chaturvedi on 23/05/22.
//

import SwiftUI

struct TabNav: View  {
    @State private var selectedPage: Int = 0
    
    let pages: [AnyView]
    let tabs: [String]
    
    var body: some View {
        
        GeometryReader { geo in
            ZStack {
                pages[selectedPage]
            }.frame(width: geo.size.width, height: geo.size.height, alignment: .center)
            
            VStack {
                Spacer()
                
                HStack(alignment: .center) {
                    ForEach(0..<tabs.count) { NavIcon(icon:tabs[$0], selected: $selectedPage, index: $0, geometry: geo, count: tabs.count) }
                }
                .frame(width: geo.size.width)
                .background(Color.background.opacity(0.8))
                .background(Material.ultraThin)
            }
        }
        
    }
    
    init<Views>(@ViewBuilder pages: () -> TupleView<Views>, tabs: ()->[String]) {
        self.pages = pages().getViews
        self.tabs = tabs()
        
        assert(self.tabs.count == self.pages.count)
    }
}

private struct NavIcon: View {
    var icon: String
    @Binding var selected: Int
    var index: Int
    var geometry: GeometryProxy
    var count: Int
    
    var body: some View {
        Image(icon + (selected == index ? ".filled" : ""))
            .frame(width: geometry.size.width / CGFloat(count + 1), height: 64, alignment: .center)
            .onTapGesture {
                selected = index
            }
            .font(.system(size: 20))
    }
}

extension TupleView {
    var getViews: [AnyView] {
        makeArray(from: value)
    }
    
    private struct GenericView {
        let body: Any
        
        var anyView: AnyView? {
            AnyView(_fromValue: body)
        }
    }
    
    private func makeArray<Tuple>(from tuple: Tuple) -> [AnyView] {
        func convert(child: Mirror.Child) -> AnyView? {
            withUnsafeBytes(of: child.value) { ptr -> AnyView? in
                let binded = ptr.bindMemory(to: GenericView.self)
                return binded.first?.anyView
            }
        }
        
        let tupleMirror = Mirror(reflecting: tuple)
        return tupleMirror.children.compactMap(convert)
    }
}
