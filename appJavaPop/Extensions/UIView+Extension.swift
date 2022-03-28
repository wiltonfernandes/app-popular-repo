import UIKit.UIView
// implementa novas subviews: ReposViewCell - buildHierarchy 
extension UIView {
    public func addSubviews(_ views: UIView...) {
        views.forEach { view in
            view.translatesAutoresizingMaskIntoConstraints = false
            addSubview(view)
        }
    }
}
