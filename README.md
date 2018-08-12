[![Build Status](https://travis-ci.org/steady-daddy/sortech.svg?branch=v0.1.0)](https://travis-ci.org/steady-daddy/sortech)
[![Gem Version](https://badge.fury.io/rb/sortech.svg)](https://badge.fury.io/rb/sortech)
# Sortech

Sort arrays using different sorting techniques

## Installation
```
gem install sortech
```
or add it to your gemfile:
```
gem 'sortech'
```
and run `bundle install`

## Usage
```
require 'sortech'
arr = Array.new(20){rand(1..100000)}.shuffle
puts "Original Array: "
arr.each{|item| p item}
arr = Sortech::Sort.bubble(arr)
puts "Sorted Array: "
arr.each{|item| p item}
```

## Methods available for sorting techniques
* Bubble sort (Sortech::Sort.bubble)
* Selection sort (Sortech::Sort.selection)
* Insertion sort (Sortech::Sort.insertion)
* Quick Sort (Sortech::Sort.quicksort)
* Merge Sort (Sortech::Sort.mergesort)
