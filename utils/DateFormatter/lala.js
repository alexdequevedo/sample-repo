/**
 * Utility for formatting dates in various formats.
 * @module dateFormatter
 */

/**
 * Format a given date into a specified format.
 *
 * @param {Date | string | number} date - The date to format (can be a Date object, ISO string, or timestamp).
 * @param {string} format - The desired format (e.g., "YYYY-MM-DD", "DD/MM/YYYY", "MM-DD-YYYY", etc.).
 * @returns {string} - The formatted date string.
 */
function formatDate(date, format = "YYYY-MM-DD") {
  const dateObj = typeof date === "object" ? date : new Date(date);

  if (isNaN(dateObj.getTime())) {
    throw new Error("Invalid date provided");
  }

  const options = {
    YYYY: dateObj.getFullYear(),
    MM: String(dateObj.getMonth() + 1).padStart(2, "0"),
    DD: String(dateObj.getDate()).padStart(2, "0"),
  };

  return format.replace(
    /YYYY|MM|DD|HH|mm|ss/g,
    (match) => options[match] || match
  );
}

// Example usage:
const formattedDate = formatDate(new Date(), "DD/MM/YYYY");
console.log("Formatted Date:", formattedDate);

// Export the function for use in other files
module.exports = {
  formatDate,
};
