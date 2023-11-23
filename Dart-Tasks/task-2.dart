void main() {
  final numbers = [1, 8, 3, 3, 4, 45, 5, 69, 10, 39, 91, 10];
  final max = findMaximum(numbers);
  print(max);
  final min = findMinimum(numbers);
  print(min);
  final sum = calculateSum(numbers);
  print(sum);
  final average = calculateAverage(numbers);
  print(average);
}

int findMaximum(List<int> numbers) {
  var max = numbers[0];
  for (var i = 0; i < numbers.length; ++i) {
    if (numbers[i] > max) {
      max = numbers[i];
    }
  }
  return max;
}

int findMinimum(List<int> numbers) {
  var max = numbers[0];
  for (var i = 0; i < numbers.length; ++i) {
    if (numbers[i] < max) {
      max = numbers[i];
    }
  }
  return max;
}

int calculateSum(List<int> numbers) {
  var sum = 0;
  for (var i = 0; i < numbers.length; ++i) {
    sum += numbers[i];
  }
  return sum;
}

double calculateAverage(List<int> numbers) {
  var sum = 0;
  for (var i = 0; i < numbers.length; ++i) {
    sum += numbers[i];
  }
  return sum / numbers.length;
}
