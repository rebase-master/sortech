module Sortech
  class Sort
    class << self
      # Sort an array using Bubble sort technique
      # Advantages:
      #     1. Straightforward, simple and slow.
      #     2. Stable.
      #     3. Inefficient on large tables.
      #
      # @param [Array<Integer>]
      #
      # @return Array
      #
      def bubble(arr)
        arr if arr.length == 0 || is_sorted?(arr)
        n = arr.length
        loop do
          flag = false
          for i in 0..n - 2
            if arr[i] > arr[i+1]
              arr[i], arr[i+1] = arr[i+1], arr[i]
              flag = true
            end
          end
          n -= 1
          break unless flag
        end
        arr
      end

      # Sort an array using Selection sort technique
      # Advantages:
      #     1. Improves the performance of bubble sort and also slow.
      #     2. Unstable but can be implemented as a stable sort.
      #     3. Quite slow for large amount of data.
      #
      # @param [Array<Integer>]
      #
      # @return Array
      #
      def selection(arr)
        arr if arr.length == 0 || is_sorted?(arr)
        n = arr.length
        for i in 0..n - 1
          s = arr[i]
          p = i
          for j in i+1..n - 1
            if s > arr[j]
              s = arr[j]
              p = j
            end
          end
          arr[i], arr[p] = arr[p], arr[i]
        end
        arr
      end

      # Sort an array using Insertion sort technique
      #
      # Advantages:
      #     1. Efficient for small list and mostly sorted list.
      #     2. Sort big array slowly.
      #     3. Save memory
      #
      # @param [Array<Integer>]
      #
      # @return Array
      #
      def insertion(arr)
        for i in 1..arr.length - 1
          t = arr[i]
          j = i - 1
          while j >= 0 && arr[j] > t
            arr[j+1] = arr[j]
            j -= 1
          end
          arr[j+1] = t
        end
        arr
      end

      # Sort an array using Quick sort technique
      # Advantages:
      #   1. Fastest sorting algorithm in practice.
      #   2. Available in many standard libraries.
      #   3. O (log n) space usage.
      #   4. Unstable sort and complex for choosing a good pivot element.      # @param [Array<Integer>]
      #
      # @param [Array<Integer>]
      #
      # @return Array
      #
      def quicksort(arr, low=0, high=arr.length-1)

        if low < high
          pi = partition(arr, low, high)
          quicksort(arr, low, pi-1) # called before pi
          quicksort(arr, pi+1, high) # called after pi
        end
        arr
      end

      # Sort an array using Merge sort technique
      # Advantages:
      #   1.  Well for very large list, stable sort.
      #   2. A fast recursive sorting.
      #   3. Both useful for internal and external sorting.
      #   4. It requires an auxiliary array that is as large as the original array to be sorted.
      #
      # @param [Array<Integer>]
      #
      # @return Array
      #
      def mergesort(arr, left=0,right=arr.length-1)

        if left < right
          middle = (left + (right - 1))/2

          mergesort(arr,left,middle) # sort first half
          mergesort(arr, middle+1,right) # sort second half
          merge(arr, left, middle, right) # merge the two arrays
        end
        arr
      end

      # Sort an array using Radix sort technique
      # Advantages:
      #     1. Stable, fast.
      #     2. Used in special cases when the key can be
      #
      # @param [Array<Integer>]
      #
      # @return Array
      # TODO: Implement
      def radix(arr)
      end

      private
      # Returns true or false depending on whether array is sorted or not
      #
      # @param [Array<Integer>]
      #
      # @return Boolean
      #
      def is_sorted? arr
        return false if arr.nil?
        for i in 0..(arr.length - 2)
          if arr[i] > arr[i+1]
            return false
          end
        end
        true
      end

      def partition arr, low, high
        pivot = arr[high]
        i = low - 1
        for j in low..high-1
          if arr[j] <= pivot
            i += 1
            arr[i], arr[j] = arr[j], arr[i]
          end
        end
        arr[i+1], arr[high] = arr[high], arr[i+1]
        i+1
      end # partition

      # Splits the array into two halves and merge them in sorted order
      # back to the original array
      #
      # @param [Array<Integer>, Integer, Integer, Integer]
      #
      # @return Boolean
      #

      def merge arr, left, middle, right
        n1 = middle - left + 1
        n2 = right - middle

        # Create empty arrays of size n1 and n2
        left_array = Array.new(n1){0}
        right_array = Array.new(n1){0}

        # copy data to empty arrays
        for i in 0..n1
          left_array[i] = arr[left+i]
        end
        for i in 0..n2
          right_array[i] = arr[middle + i + 1]
        end

        # Merge two arrays back into arr
        i = 0
        j = 0
        k = left

        while i < n1 && j < n2
          if left_array[i] <= right_array[j]
            arr[k] = left_array[i]
            i += 1
          else
            arr[k] = right_array[j]
            j += 1
          end
          k += 1
        end

        # copy the remaining elements of left_array, if any
        while i < n1
          arr[k] = left_array[i]
          i += 1
          k += 1
        end

        # copy the remaining elements of right_array, if any
        while j < n2
          arr[k] = right_array[j]
          j += 1
          k += 1
        end
      end # merge

    end # Class self
  end # Sort
end # Sortech