//
//  WebServiceError.swift
//
// Copyleft (c) 2016 Refuge Restrooms
//
// Refuge is licensed under the GNU AFFERO GENERAL PUBLIC LICENSE
// Version 3, 19 November 2007
//
// This notice shall be included in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

import Foundation

/// Web service error.
internal enum WebServiceError: ErrorType {
    
    /// URL for request is invalid.
    case InvalidURL(url: String)
    
}

// MARK: - Protocol conformance

// MARK: CustomErrorConvertible

extension WebServiceError: CustomErrorConvertible {
    
    var code: Int {
        switch self {
        case .InvalidURL(_):
            return 1
        }
    }
    
    var subDomain: String {
        return "webservice"
    }
    
    var failureReason: String {
        switch self {
        case .InvalidURL(let url):
            return "Invalid URL for web service request: \(url)"
        }
    }
    
}
