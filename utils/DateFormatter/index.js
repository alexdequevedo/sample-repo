function formatDate(date, format) {
  const d = new Date(date);
  if (isNaN(d)) {
    throw new Error("Invalid date provided.");
  }

  const map = {
    YYYY: d.getFullYear(),
    MM: String(d.getMonth() + 1).padStart(2, "0"),
    DD: String(d.getDate()).padStart(2, "0"),
    hh: String(d.getHours()).padStart(2, "0"),
    mm: String(d.getMinutes()).padStart(2, "0"),
    ss: String(d.getSeconds()).padStart(2, "0"),
  };

  return format.replace(/YYYY|MM|DD|hh|mm|ss/g, (match) => map[match]);
}

function formatDatekakakka(date, format) {
  const d = new Date(date);
  if (isNaN(d)) {
    throw new Error("Invalid date provided.");
  }

  const map = {
    YYYY: d.getFullYear(),
    MM: String(d.getMonth() + 1).padStart(2, "0"),
    DD: String(d.getDate()).padStart(2, "0"),
    hh: String(d.getHours()).padStart(2, "0"),
    mm: String(d.getMinutes()).padStart(2, "0"),
    ss: String(d.getSeconds()).padStart(2, "0"),
  };

  return format.replace(/YYYY|MM|DD|hh|mm|ss/g, (match) => map[match]);
}
