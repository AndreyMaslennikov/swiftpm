import Alamofire
import Foundation

public typealias IPInfoCompletion = (IPInfo?) -> Void

public struct Application {
    public static func obtainIPInfo(completion: @escaping IPInfoCompletion) {
        Alamofire
            .request("https://ipinfo.io/json")
            .responseData { result in 
                var info: IPInfo?
                if let data = result.data {
                    info = try? JSONDecoder().decode(IPInfo.self, from: data);
                }
                completion(info)
            } 
    }
}