v <- LETTERS[1:4]
for ( i in v) {
  print(i)
}

for (x in 1:10) {
  print(x)
}


fruits <- list("apple", "banana", "cherry")
for (x in fruits) {
  print(x)
}

for (x in fruits) {
  if (x == "cherry") {
    break
  }
  print(x)
}

for (x in fruits) {
  if (x == "banana") {
    next
  }
  print(x)
}

dice <- 1:6
for(x in dice) {
  if (x == 6) {
    print(paste("The dice number is", x, "Yahtzee!"))
  } else {
    print(paste("The dice number is", x, "Not Yahtzee"))
  }
}

adj <- list("red", "big", "tasty")
fruits <- list("apple", "banana", "cherry")
for (x in adj) {
  for (y in fruits) {
    print(paste(x, y))
  }
}

