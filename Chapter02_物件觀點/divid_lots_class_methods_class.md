# 概念
* 有時候某一個特定的 class 就是會有很多 methods，先不管如何消除這個壞味道，我們先專注怎麼讓程式碼比較好讀。
* 針對一個很多 class methods 的 class，應該如何處理？

## 作法
把相關的幾個 methods 寫在一個 module 裡面，在讓原來的 class 引用該 module，達到不改變原來有 class 功能/介面，而能夠減少該 class 檔案的行數。

## 實作方式
假設我們的 class 如下

    module Service
      class ServiceApi
        def self.backend_method end            
        def self.admin_method end
        def self.extension_method end
      end
    end

抽出 backend_method 成為一個 module

    module Service::Backend
      def backend_method end
    end
    
用 extend 的方式，讓原來的 class 把抽出的模組當成現有類別的一部分。

    requrire 'backend'
    module Service
      class ServiceApi
        extend Backend
        
        def self.admin_method end
        def self.extension_method end
      end
    end