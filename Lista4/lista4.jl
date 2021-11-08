#=

### Exercício 1 ###

i)

    a) ∫₁² ℯˣ dx = ℯˣ|₁² = ℯ² - ℯ ≈ 4.67077

    b) ∫₁² √x dx = √x³ |2  = √8 - 1  ≈ 1.21895
                   --- |     ------
                   1.5 |1      1.5

ii)

    x₀ = 1; x₁ = 2; h = 2 - 1 = 1
    Utilizando a fórmula It = h*(f(x₀) + f(x₁))/2 e
    Et = -h³ * f''((x₀ + x₁)/2)/12, temos: 
         

    a) 
    It = 1*(f(1) + f(2))/2
    It = (ℯ + ℯ²)/2 
    It ≈ 5.05367

    Erro estimado:

    Et =  -1  * exp(1.5)/12
    Et ≈ -0.37347

    b) 
    It = 1*(f(1) + f(2))/2
    It = (√1 + √2)/2
    It ≈ 1.2071

    Erro estimado:

    Et = -1/12 * -1/(4*1.5^(3/2))
    Et ≈ 0.01134

iii)

    Dividindo o intervalo em três pontos:
    h = (2 - 1)/2 = 0.5
    Então: x₀ = 1, x₁ = 1.5 e x₂ = 2
    Usando Is = h*(f(x₀) + 4*f(x₁) + f(x₂))/3
    e Es = -h⁵*fⁱᵛ((x₀ + x₂)/2)/90

    a)
    Is = 0.5*(ℯ + 4*exp(1.5) + ℯ²)/3
    Is ≈ 4.67235

    Erro estimado:

    Es = -(0.5)⁵ * exp(1.5)/90
    Es ≈ -0.00155

    b)
    Is = 0.5*(√1 + 4*√1.5 + √2)/3
    Is ≈ 1.21886

    Erro estimado:

    Es = -(0.5)⁵ * (-15/(16*1.5^(7/2)))/90
    Es ≈ 0.00007

iv)
    m = 4 -> h = (2 - 1)/4 = 0.25
    x₀ = 1, x₁ = 1.25, x₂ = 1.5, x₃ = 1.75 e x₄ = 2

    Trapézio repetido:
    
    a)
    Itr = 0.25*(f(1) + 2*(f(1.25) + f(1.5) + f(1.75)) + f(2))/2
    Itr = 0.25*(2.71828 + 27.45327 + 7.38905)/2
    Itr ≈ 4.69507

    Erro estimado:

    Etr = -4*(0.25)³ * exp(1.5)/12
    Etr ≈ -0.02334

    b) 
    Itr = 0.25*(9.74552)/2
    Itr = 1.21819

    Erro estimado:

    Etr = -4*(0.25)³ * -1/(4*(1.5)^(3/2))/12
    Etr ≈ 0.0007

    Simpson repetido:

    a)
    Isr = 0.25*(f(1) + 4*f(1.25) + 2*f(1.5) + 4*f(1.75) + f(2))/3
    Isr = 0.25*(56.05050)/3
    Isr ≈ 4.67087

    Erro estimado:

    Esr = -4*(0.25)⁵ *(exp(1.5))/180
    Esr ≈ -0.00009

    b)
    Isr = 0.25*(√1 + 4*√1.25 + 2*√1.5 + 4*√1.75 + √2)/3
    Isr ≈ 1.21894

    Erro estimado:

    Esr = -4*(0.25)⁵ *(-15/(16*(1.5)^(7/2)))/180
    Esr ≈ 0.000004

v) 

    a) Sendo a = 1, b = 2, t0 = -0.57735,
       t1 = -t0, a0 = a1 = 1, temos que:

       Iqg = (2 - 1) * (1*f(x0) + 1*f(x1))/2
       Iqg = (f(x0) + f(x1))/2

       em que:
       xi = (b - a)*ti/2 + (a + b)/2
       xi = (2 - 1)*ti/2 + (2 + 1)/2
       xi = (ti + 3)/2

       i = 0 => x0 = (-0.57735 + 3)/2
                x0 = 1.21132
       i = 1 => x1 = (0.57735 + 3)/2
                x1 = 1.78867

       logo, Iqg ≈ 4.66972

    b) Analogamente à a), temos que:
    Iqg = (f(x0) + f(x1))/2, com os
    mesmos valores de a, b, t0, t1, 
    a0, a1, x0 e x1.

    Iqg = (√x0 + √x1)/2
    Iqg ≈ 1.219


### Exercício 2 ###

a) m = 8 -> h = (2 - 0)/8 = 0.25
   x₀ = 0, x₁ = 0.25, x₂ = 0.5, x₃ = 0.75, x₄ = 1,
   x₅ = 1.25, x₆ = 1.5, x₇ = 1.75, x₈ = 2.

   Trapézio repetido:
   Itr = 0.25*(f(0) + 2*(f(0.25) + f(0.5) + f(0.75) + f(1) + f(1.25) + f(1.5) + f(1.75)) + f(2))/2
   Itr = 0.25*3.37265/2
   Itr ≈ 0.42158

   Simpson repetido:
   Isr = 0.25*(f(0) + 4*f(0.25) + 2*f(0.5) + 4*f(0.75) + 2*f(1) + 4*f(1.25) + 2*f(1.5) + 4*f(1.75) + f(2))/3
   Isr = 0.25*5.07259/3
   Isr ≈ 0.42271 

b) m = 6 -> h = (3 - 0)/6 = 0.5
   x₀ = 0, x₁ = 0.5, x₂ = 1, x₃ = 1.5, 
   x₄ = 2, x₅ = 2.5, x₆ = 3.
   
   Trapézio repetido:
   Itr = 0.5*(f(0) + 2*(f(0.5) + f(1) + f(1.5) + f(2) + f(2.5)) + f(3))/2
   Itr = 0.5*60.13598/2
   Itr ≈ 15.034

   Simpson repetido:
   Isr = 0.5*(f(0) + 4*f(0.5) + 2*f(1) + 4*f(1.5) + 2*f(2) + 4*f(2.5) + f(3))/3 
   Isr = 0.5*85.19453/3
   Isr ≈ 14.19908

### Exercício 3 ###

p(x) = x³ + 3*x² + 2*x - 1

a)
    h = (2 - 0)/2 = 1
    x₀ = 0, x₁ = 1, x₂ = 2.

    Is = 1*(p(0) + 4*p(1) + p(2))/3
    Is = 42/3
    Is = 14

    Erro estimado:

    Es = -(1)⁵ * 0/90
    Es = 0

b) Sendo a = 0, b = 2, t0 = -0.57735,
   t1 = -t0, a0 = a1 = 1, temos que:
   Iqg = (2 - 0)/2 * (1*f(x0) + 1*f(x1))
   Iqg = f(x0) + f(x1)

   em que:
   xi = (b - a)*ti/2 + (a + b)/2
   xi = (2 - 0)*ti/2 + (2 + 0)/2
   xi = ti + 1

   i = 0 => x0 = -0.57735 + 1
            x0 = 0.42265
   i = 1 => x1 = 0.57735 + 1
            x1 = 1.57735

   => Iqg = f(0.42265) + f(1.57735)
      Iqg = 14

   Erro estimado: 
   Valor analítico - valor numérico =
   14 - 14 = 0
   
c) Para o caso do item a), temos que a quarta 
derivada da função em estudo é igual a zero.
Neste caso, a partir da fórmula do erro, para 
qualquer h, teremos:
Es = -h⁵*fⁱᵛ((a + b)/2)/90 
Es = -h⁵*0/90 = 0

No caso do item b), a quadratura gaussiana é
construída de modo que se obtenha os valores
exatos para funções polinomiais, ou seja, o 
erro ser nulo é esperado por teoria. 



### Exercício 4 ###

a) Como temos três pontos, construímos:
   
    x| 1 | 2 | 5 |
    -|---|---|---|
    y| 1 | 3 | 2 |


   p₂(x) = y₀L₀(x) + y₁L₁(x) + y₂L₂(x), em que:

   L₀(x) = (x - 2)(x - 5)  =  x² - 7x + 10
           --------------     ------------
           (1 - 2)(1 - 5)           4  
        
   L₁(x) = (x - 1)(x - 5)  =  x² - 6x + 5
           --------------     ----------- 
           (2 - 1)(2 - 5)         -3

   L₂(x) = (x - 1)(x - 2)  =  x² - 3x + 2
           --------------     -----------
           (5 - 1)(5 - 2)         12 

   Então:
   p₂(x) = (x² - 7x + 10)/4 - (x² - 6x + 5) + (x² - 3x + 2)/6
   p₂(x) = - 7*x^2/12 + 15*x/4 - 13/6
   
b)  Usando m = 4 para ambos casos:
    h = (5 - 1)/4 = 1
    x₀ = 1, x₁ = 2, x₂ = 3, x₃ = 4, x₄ = 5.

    Trapézio composto/repetido:
    
    Itr = 4*(f(x₀) + 2*(f(x₁) + f(x₂) + f(x₃)) + f(x₄))/2
    Itr = 2*23.66666
    Itr ≈ 47.33332

    Simpson composto/repetido:

    Isr = 4*(f(x₀) + 4*f(x₁) + 2*f(x₂) + 4*f(x₃) + f*(x₄))/3
    Isr = 4*36.66666/3
    Isr ≈ 48.88888

    Representação gráfica:
    using Plots
    p2(x) = - 7*x^2/12 + 15*x/4 - 13/6
    plot(x-> p2(x), c=:green, legend = false, xlims = (-3,10))
    vline!([1,5], c=:red)

### Exercício 5 ###

    f(x) = x²*exp(x²)   

    function itr(f, a, b, n)
    h = (b - a)/n
    if n >= 1 
        if n%2 == 0
            val = f(a) + f(b)
            for i = 1:n-1
                val += 2*f(a + i*h)
            end
        else
            val = (f(b - h) + f(b))
            for i = 1:n-2
                val += 2*f(a + i*h)
            end
        end
    end
    print("Valor aproximado: ", round(h*val/2, digits = 5))
end

function isr(f, a, b, n)
    h = (b - a)/n
    if n > 1
        val = f(a) + f(b)
        for i = 1:2:n-1
            val += 4*(f(a + h*i))
        end
        for i = 2:2:n-2
            val += 2*(f(a + h*i))
        end
    end
    print("Valor aproximado: ", round(h*val/3, digits = 5))
end

    Trapézio repetido:

    n = 1:
    Itr ≈ 218.3926

    n = 2:  
    Itr ≈ 111.91458

    n = 3:
    Itr ≈ 76.76583

    n = 6:
    Itr ≈ 55.97538

    n = 12:
    Itr ≈ 48.86568

    n = 24:
    Itr ≈ 47.00161

    n = 48:
    Itr ≈ 46.52968

    n = 96:
    Itr ≈ 46.41132

    Simpson 1/3 repetido:

    n = 1:
    Note que a integral de Simpson simples requer 
    três pontos para construir a aproximação.
    Se n = 1, temos apenas dois pontos e portanto 
    não é possível utilizar Simpson nesse caso.

    n = 2:
    Isr ≈ 76.42191

    n = 3:
    Isr ≈ 49.14784

    n = 6:
    Isr ≈ 47.8765

    n = 12:
    Isr ≈ 46.49578

    n = 24:
    Isr ≈ 46.38025

    n = 48:
    Isr ≈ 46.37237

    n = 96:
    Isr ≈ 46.37187

=#

