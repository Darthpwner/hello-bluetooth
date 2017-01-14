import Foundation

extension Data {

    static func dataWithValue<T>(_ value: T) -> Data {
        var variableValue = value
        return Data(buffer: UnsafeBufferPointer(start: &variableValue, count: MemoryLayout<T>.size))
    }

    func int8Value() -> Int8 {
        var value: Int8 = 0
        copyBytes(to: &UInt8(value), count: MemoryLayout<Int8>.size)    //BUG
        
        return value
    }
    
//    func receivedData(pChData: UInt8, andLength len: CInt) {
//        var receivedData: Byte = Byte()
//        var receivedDataLength: CInt = 0
//        
//        memcpy(&receivedData, &pChData, Int(len));  // Getting the error here
//        receivedDataLength = len
//        AudioHandler.sharedInstance.receiverAudio(&receivedData, WithLen: receivedDataLength)
//    }
}
