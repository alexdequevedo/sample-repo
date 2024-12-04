// sum.js

// Function to calculate sum of an array
function calculateSum(numbers) {
  if (!Array.isArray(numbers)) {
    throw new Error("Input must be an array of numbers");
  }

  return numbers.reduce(
    (accumulator, currentValue) => accumulator + currentValue,
    0
  );
}

// Example usage
const numbers = [1, 2, 3, 4, 5]; // Array of numbers
const sum = calculateSum(numbers); // Calculate sum

console.log("Sum:", sum); // Output the sum
