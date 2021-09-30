#= Resolução lista 1 A. Num. II
#  Murilo S. de O. Poloi; GRR20185705 

using LinearAlgebra

#=== Exercício 1 ===#
 pontosx =  [0   1   2   4]
 pontosy =  [1 0.5 3.2 5.6]

# a) f(x) = b + a*x

b + a*0 = 1
b + a*1 = 0.5
b + a*2 = 3.2
b + a*4 = 5.6

==> 

M = [1 0;
     1 1;
     1 2;
     1 4]

n = [  1;
     0.5;
     3.2;
     5.6]

Resolvendo M*x = n <=> M'*M*x = M'*n

sol = (M'*M)\(M'*n)
b, a  = sol[1], sol[2]

Resposta: g(x) = 0.320 + 1.288*x

********# b) f(x) = a*xᵇ

b + a*0 = log(1)
b + a*1 = log(0.5)
b + a*2 = log(3.2)
b + a*4 = log(5.6)

M = [1 0;
     1 1;
     1 2;
     1 4]

n = [  log(1);
     log(0.5);
     log(3.2);
     log(5.6)]

Resolvendo M*x = n <=> M'*M*x = M'*n

sol = (M'*M)\(M'*n)
a, b  = exp(sol[1]), sol[2]

Resposta: g(x) = 0.677*x^(0.535)

# c) f(x) = 1/(b + a*x)

1/(b + a*0) = 1
1/(b + a*1) = 0.5
1/(b + a*2) = 3.2
1/(b + a*4) = 5.6

=>

b + a*0 =  1
b + a*1 =  2
b + a*2 =  0.3125
b + a*4 =  0.17857


M = [1 0;
     1 1;
     1 2;
     1 4]

n = [      1;
           2;
      0.3125;
     0.17857;]

Resolvendo M*x = n <=> M'*M*x = M'*n

sol = (M'*M)\(M'*n)
b, a  = sol[1], sol[2]

Resposta: g(x) = 1/(1.426 - 0.316*x)

#d) f(x) = √(b + a*x)

√(b + a*0) = 1
√(b + a*1) = 0.5
√(b + a*2) = 3.2
√(b + a*4) = 5.6

=> 

b + a*0 = 1
b + a*1 = 0.25
b + a*2 = 10.24
b + a*4 = 31.36

M = [1 0;
     1 1;
     1 2;
     1 4]

n = [    1;
      0.25;
     10.24;
     31.36]

#Resolvendo M*x = n <=> M'*M*x = M'*n

sol = (M'*M)\(M'*n)
b, a  = sol[1], sol[2]

Resposta: g(x) = √(-3.524 + 8.135*x)

# e) f(x) = aₒ + a₁x + a₂x²

c + b*0 + a*0² = 1
c + b*1 + a*1² = 0.5
c + b*2 + a*2² = 3.2
c + b*4 + a*4² = 5.6

=>

M = [ 1 0 0;
      1 1 1;
      1 2 4;
     1 4 16;]

n = [  1;
     0.5;
     3.2;
     5.6]

#Resolvendo M*x = n <=> M'*M*x = M'*n

sol = (M'*M)\(M'*n)
a₀, a₁, a₂  = sol[1], sol[2], sol[3]

Resposta: g(x) = 0.656 + 0.591*x + 0.168*x²

#=== Exercício 2 ===#

Plot com os pares ordenados fornecidos
scatter(pontosx[:],pontosy[:], c=:black, leg=false, xlims=(0,4.2), ylims=(0,6))

a) 

I: plot!(x-> 0.320 + 1.288*x, c=:red, linewidth=1)

II: plot!(x-> 0.677*x^(0.535), c=:red, linewidth=1)

III: plot!(x-> 1/(1.426 - 0.316*x), c=:red,
linewidth=1)

IV: plot!(x-> √(-3.524 + 8.135*x), c=:red,
linewidth=1)

V: plot!(x-> 0.656 + 0.591*x + 0.168*x^2,
c=:red, linewidth=1)

b) 

I: 

   Erros:

   e1 = |g(0) - f(0)| = |0.32 - 1| = 0.68
   e2 = |g(1) - f(1)| = |1.608 - 0.5| = 1.108
   e3 = |g(2) - f(2)| = |2.896 - 3.2| = 0.304
   e4 = |g(4) - f(4)| = |5.472 - 5.6| = 0.128

   EQ = e1² + e2² + e3² + e4² = 1.8


II:
  
   Erros:

   e1 = |g(0) - f(0)| = |0 - 1| = 1
   e2 = |g(1) - f(1)| = |0.677 - 0.5| = 0.177
   e3 = |g(2) - f(2)| = |0.981 - 3.2| = 2.22
   e4 = |g(4) - f(4)| = |1.42 - 5.6| = 4.18

   EQ = e1² + e2² + e3² + e4² = 23.43
     

III:

   Erros:

   e1 = |g(0) - f(0)| = |0.701 - 1| = 0.299
   e2 = |g(1) - f(1)| = |0.901 - 0.5| = 0.401
   e3 = |g(2) - f(2)| = |1.26 - 3.2| = 1.94
   e4 = |g(4) - f(4)| = |6.173 - 5.6| = 0.573

   EQ = e1² + e2² + e3² + e4² = 4.342

  
IV: 

   Erros:

   e1 = |g(0) - f(0)| = |0 - 1| = 1 
   e2 = |g(1) - f(1)| = |2.147 - 0.5| = 1.647
   e3 = |g(2) - f(2)| = |3.57 - 3.2| = 0.37 
   e4 = |g(4) - f(4)| = |5.386 - 5.6| = 0.214

   EQ = e1² + e2² + e3² + e4² =  3.872

V: 
  
   Erros:
  
   e1 = |g(0) - f(0)| = |0.656 - 1| = 0.344
   e2 = |g(1) - f(1)| = |1.415 - 0.5| = 0.915
   e3 = |g(2) - f(2)| = |2.51 - 3.2| =  0.7
   e4 = |g(4) - f(4)| = |5.708 - 5.6| = 0.108

   EQ = e1² + e2² + e3² + e4² =  1.457

#=== Exercício 3 ===#

Resposta: A função que melhor ajustou os pontos foi a quadrática.
Note que seu erro absoluto/quadrático, que serve como medida de 
distância entre o ponto original e sua previsão na curva obtida,
é o menor de todos:

a₀ + a₁*x + a₂*x²: 1.457 

b + a*x: 1.8

√(b + ax): 3.872

1/(b + a*x): 4.342

a*bˣ: 23.43

#=== Exercício 4 ===#

a) Feito à mão.

b) Das funções apresentadas na primeira questão a função qua-
drática.

c) Ajustando os pontos atráves de uma curva quadrática:

f(x) = aₒ + a₁x + a₂x²

c + b*(-2) + a*(-2)² = 2
c + b*0 + a*0² = 0
c + b*1 + a*1² = -1
c + b*2 + a*2² = 1
c + b*3 + a*3² = 4

=>

M = [ 1 -2  4;
      1  0  0;
      1  1  1;
      1  2  4;
      1  3  9]

n = [ 2;
      0;
     -1;
      1;
      4]

#Resolvendo M*x = n <=> M'*M*x = M'*n

sol = (M'*M)\(M'*n)
a₀, a₁, a₂  = sol[1], sol[2], sol[3]

Resposta: f(x) = -0.708 - 0.255*x + 0.587*x²


=#

