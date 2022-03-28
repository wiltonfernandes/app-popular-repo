import Foundation

protocol DescribeProtocol: AnyObject {}

extension NSObject: DescribeProtocol {}

extension DescribeProtocol where Self: NSObject {
    static var identifier: String {
        String(describing: self)
    }
}
