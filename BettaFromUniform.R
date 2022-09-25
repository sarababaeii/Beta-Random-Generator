# Genarting random variables with beta distribution
# using acceptance-rejection method and uniform distribution

# Finding optimal c
x = seq(0, 1, .01)
f = dbeta(x, 5, 3)
g = dunif(x)
y = f / g
max(y)

# Generating numbers
c = 2.4
n = 10000
i = 0	#iterations
j = 0	#counter for accepted
x = numeric(n)	#normal random generations

while (j < n) {
	u = runif(1)
	y = runif(1)
	if (dbeta(y, 5, 3) / (c * ddunif(y)) > u) {
		j = j + 1
		x[j] = y
	}
	i = i + 1
}
i

N = rnorm(n)
qqplot(x, N)