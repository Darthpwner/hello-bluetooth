import Foundation

extension Data {

    static func dataWithValue<T>(_ value: T) -> Data {
        var variableValue = value
        return Data(buffer: UnsafeBufferPointer(start: &variableValue, count: MemoryLayout<T>.size))
    }

    func int8Value() -> Int8 {
        var value: UInt8 = 0
        copyBytes(to: &value, count: MemoryLayout<UInt8>.size)
        
        return Int8(value)
    }

    //Possible replacement to int8Value function
//    func int8ValueOfFirstByte() -> Int8 {
//        return withUnsafeBytes{ return $0.pointee }
//    }
}
