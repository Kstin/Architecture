//
//  UIButton+Reactive.swift
//  Architecture
//
//  Created by Kstin on 22.04.2022.
//
import ReactiveSwift
import ReactiveCocoa

extension Reactive where Base: UIButton {
    func onTap(_ action: @escaping () -> ()) {
        self.makeBindingTarget { button, _ in
            action()
        } <~ controlEvents(.touchUpInside)
    }
}
