require 'spec_helper'
require_relative '../sortech/lib/sortech'

describe "Sortech Sorting Techniques" do
  let(:sort) {Sortech::Sort}
  context "Checks if array already sorted" do
    let(:sorted_array) {[1,2,3,4,5]}
    let(:unsorted_array) {[23,2,6,1,5]}
    it 'returns true if array is already sorted' do
      expect(sort.send(:is_sorted?, sorted_array)).to be(true)
    end
    it 'returns false if array is not already sorted' do
      expect(sort.send(:is_sorted?, unsorted_array)).to be(false)
    end
  end

  context "Sorts array in ascending order " do
    let(:arr) {[231,3,91,172,13,4,84]}
    it "using bubble sort technique" do
      sorted_array = sort.bubble(arr)
      expect(sort.send(:is_sorted?, sorted_array)).to be(true)
    end
  end
end
