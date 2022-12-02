
mostCalories = 0 
currentCalories = 0

for (cal in readLines('./input.txt')) {
  ## if blank; check if currentCalories are more than mostCalories; if yes, overwrite,
  ## if no, just skip
  cal = strtoi(cal) # Cast to integer
  if(is.na(cal) ){ # Newline
    if(currentCalories > mostCalories) { # Check if current beats total
      mostCalories =  currentCalories
    }
    currentCalories = 0
  } else { # Normal run
    currentCalories = currentCalories + cal
  }
  print('Current calories total: ')
  print(currentCalories)

}

print('Most calories carried by an elf: ')
print(mostCalories)


