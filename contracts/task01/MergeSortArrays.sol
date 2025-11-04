// SPDX-License-Identifier: MIT
pragma solidity ^0.8;
//用 solidity 实现整数转罗马数字
contract MergeSortArrays {

    function mergeSortArrays(uint[] memory arr1, uint[] memory arr2) public pure returns (uint[] memory) {
        // Create a new array to store the merged and sorted result
        uint[] memory result = new uint[](arr1.length + arr2.length);
        
        // Initialize pointers for arr1, arr2, and result
        uint i = 0; // Pointer for arr1
        uint j = 0; // Pointer for arr2
        uint k = 0; // Pointer for result

        // Merge the two arrays while maintaining sorted order
        while (i < arr1.length && j < arr2.length) {
            if (arr1[i] < arr2[j]) {
                result[k] = arr1[i];
                i++;
            } else {
                result[k] = arr2[j];
                j++;
            }
            k++;
        }

        // If there are remaining elements in arr1, add them to the result
        while (i < arr1.length) {
            result[k] = arr1[i];
            i++;
            k++;
        }
        
        // If there are remaining elements in arr2, add them to the result
        while (j < arr2.length) {
            result[k] = arr2[j];
            j++;
            k++;
        }
        
        return result;
    }
    
}