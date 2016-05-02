def add a, b
	a + b
end

def subtract a, b
	a - b
end

def sum array
	array.reduce(0, :+)
end

def multiply *arguments
	arguments.reduce(:*)
end

def power a, b
	a**b
end

def factorial a
	factorial_array = []

	if a == 0
		factorial_array.push 1
	end

	while a > 0
		factorial_array.push a
		a -= 1
	end

	factorial_array.reduce(:*)
end