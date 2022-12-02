
numberOne = 0 
numberTwo = 0
numberThree = 0
currentCalories = 0

for (cal in readLines('./input.txt')) {
  ## if blank; check if currentCalories are more than mostCalories; if yes, overwrite,
  ## if no, just skip
  cal = strtoi(cal) # Cast to integer
  if(is.na(cal) ){ # Newline
    if(currentCalories > numberOne) { # Check if current beats total
      numberOne = currentCalories
    } else if(currentCalories > numberTwo){
      numberTwo = currentCalories
    } else if(currentCalories > numberThree) {
      numberThree = currentCalories
    }
    currentCalories = 0
  } else { # Normal run
    currentCalories = currentCalories + cal
  }
  print('Current calories total: ')
  print(currentCalories)

}

print('Most calories carried by an elf: ')
print(numberOne)
print('Second most calories carried by an elf: ')
print(numberTwo)
print('Third most calories carried by an elf: ')
print(numberThree)

print('Total of top three: ')
print(numberOne + numberTwo + numberThree)

