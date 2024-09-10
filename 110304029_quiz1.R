#1

math1.score = sample(0:100, 500, replace=T)
math2.score = 10 + 0.9*math1.score + rnorm(500, 0 ,3)
math3.score = sample(10:100, 500, replace=T)

#a

temp = math1.score>=60 & math2.score>=60 & math3.score>=60
sum(temp)

#b

mu = mean(math1.score)
s = sd(math1.score)
t_score = (math1.score-mu) / s
temp2 = t_score>1.5
id = 1:500
(1:500)*temp2

#c

min(math1.score, math2.score, math3.score)

#d

temp3 = math1.score<=math2.score & math2.score<=math3.score
id = 1:500
(1:500)*temp3

#e

math1_score = sort(math1.score)
math2_score = sort(math2.score)
math3_score = sort(math3.score)
a = math1_score[375]
b = math2_score[375]
c = math3_score[375]
id = 1:500
temp4 = math1.score<a & math2.score<b & math3.score<c
temp5 = temp4==F
(1:500)*temp5



#2

#a

x=1*2*3*...*10^3 

#b

p = c(runif(49, 0, 1), 0)
q = c()
q[1] = (1-p[1])
for(i in 2:50){
  q[i] = (1-p[i])*p[i]
}
q

#3

#a

n = 50
p = c()
for(k in 1:n){
  p[k] = 2*k / (n*(n+1))
}

#b

sum(p[1]:p[25])

#c

sum(p[11]:p[29])

#d

e = c()
for(k in 1:50){
  e[k] = k*p[k]
}
sum(e)














