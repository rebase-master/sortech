require 'spec_helper'
require_relative '../lib/sortech'

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

  context "Using Bubble sort technique" do
    context "Sort an array of " do
      n = 5000
      let(:arr) {Array.new(n){rand(1..100000)}.shuffle}
      it "#{n} elements in ascending order " do
        st = Time.now
        sorted_array = sort.bubble(arr)
        et = Time.now
        delta = (et-st).to_f
        $stdout.puts "BUBBLE SORT: Time taken to sort #{n} elements  between (1, 100,000): #{delta}"
        expect(sort.send(:is_sorted?, sorted_array)).to be(true)
      end
    end
    context "Sort an array of " do
      n = 100
      let(:arr) {Array.new(n){rand(1..100000)}.shuffle}
      it "#{n} elements in ascending order " do
        st = Time.now
        sorted_array = sort.bubble(arr)
        et = Time.now
        delta = (et-st).to_f
        $stdout.puts "BUBBLE SORT: Time taken to sort #{n} between (1,100,000) elements: #{delta}"
        expect(sort.send(:is_sorted?, sorted_array)).to be(true)
      end
    end
  end

  context "Using Insertion sort technique" do
    n = 5000
    let(:arr) {Array.new(n){rand(1..100000)}.shuffle}
    it "sort an array in ascending order " do
      st = Time.now
      sorted_array = sort.insertion(arr)
      et = Time.now
      delta = (et-st).to_f
      $stdout.puts "INSERTION SORT: Time taken to sort #{n} elements  between (1, 100,000): #{delta}"
      expect(sort.send(:is_sorted?, sorted_array)).to be(true)
    end
  end

  context "Using Selection sort technique" do
    n = 5000
    let(:arr) {Array.new(n){rand(1..100000)}.shuffle}
    it "sort an array in ascending order " do
      st = Time.now
      sorted_array = sort.selection(arr)
      et = Time.now
      delta = (et-st).to_f
      $stdout.puts "SELECTION SORT: Time taken to sort #{n} elements  between (1, 100,000): #{delta}"
      expect(sort.send(:is_sorted?, sorted_array)).to be(true)
    end
  end

  context "Using Quick sort technique" do
    n = 500000
    let(:arr) {Array.new(n){rand(1..10000000)}.shuffle}
    it "sort an array in ascending order " do
      st = Time.now
      sorted_array = sort.quicksort(arr)
      et = Time.now
      delta = (et-st).to_f
      $stdout.puts "QUICK SORT: Time taken to sort #{n} elements  between (1, 10,000,000): #{delta}"
      expect(sort.send(:is_sorted?, sorted_array)).to be(true)
    end
  end

  context "Using Merge sort technique" do
    n = 500000
    let(:arr) {Array.new(n){rand(1..10000000)}.shuffle}
    it "sort an array in ascending order " do
      st = Time.now
      sorted_array = sort.mergesort(arr)
      et = Time.now
      delta = (et-st).to_f
      $stdout.puts "MERGE SORT: Time taken to sort #{n} elements  between (1, 10,000,000): #{delta}"
      expect(sort.send(:is_sorted?, sorted_array)).to be(true)
    end
  end

  context "Using Merge sort technique" do
    n = 1500
    let(:arr) {[('a'..'z'), ('A'..'Z')].map(&:to_a).flatten.shuffle[0,n]}
    it "sort an array of characters in ascending order " do
      st = Time.now
      sorted_array = sort.mergesort(arr)
      et = Time.now
      delta = (et-st).to_f
      $stdout.puts "MERGE SORT: Time taken to sort #{n} elements  between (1, 10,000,000): #{delta}"
      expect(sort.send(:is_sorted?, sorted_array)).to be(true)
    end
  end

end
