module Sortech
  class Sort
    class << self
      def bubble(arr)
        arr if arr.length == 0 || is_sorted?(arr)
        n = arr.length
        loop do
          flag = false
          for i in 0..n - 2
            if arr[i] > arr[i+1]
              arr[i] += arr[i+1]
              arr[i+1] = arr[i] - arr[i+1]
              arr[i] = arr[i] - arr[i+1]
              flag = true
            end
          end
          n -= 1
          break unless flag
        end
        arr
      end

      private
        def is_sorted? arr
          for i in 0..arr.length - 2
            if arr[i] > arr[i+1]
              return false
            end
          end
          true
        end
    end
  end
end