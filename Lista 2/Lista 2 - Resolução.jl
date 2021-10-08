using ForwardDiff

function bissecao(a, b)
    x, er, i, tol  = a, abs((b-a)/b), 0, 1e-4
    while er >= tol
    #while i < 10
        xold = x
        x = (a+b)/2
        er = abs((x-xold)/x)
        if f(a)*f(x) < 0
            b = x
        else
            a = x
        end
        i += 1
        println("iter: ",i,";  x: ", x, ";  valor: ", f(x),";  erro: " ,er)
    end
    return x, f(x), i, er
end 


function falsapos(a, b)
    x, er, i, tol  = a, abs((b-a)/b), 0, 1e-4  
    while er >= tol
    #while i < 10
        xold = x
        x = (a*f(b)- b*f(a))/(f(b) - f(a))
        er = abs((x-xold)/x)
        if f(a)*f(x) <= 0
            b = x
        else
            a = x
        end
        i += 1
        println("iter: ",i,";  x: ", x, ";  valor: ", f(x),";  erro: " ,er)
    end
    return x, f(x), i, er
end 

function newton(x)
    er, i, tol = 1, 0, 1e-4
    while er >= tol
    #while i < 10
        xold = x
        x = xold - (f(xold)/ForwardDiff.derivative(f,xold))
        er = abs((x-xold)/x)
        i += 1
        println("iter: ",i,";  x: ", x, ";  valor: ", f(x),";  erro: " ,er)
    end
    return x, f(x), i, er
end

function secante(x, xold)
    i, tol, er, imax = 0, 1e-4, abs((x-xold)/x), 10000
    while er >= tol && i <= imax
    #while i < 10 
        xtemp = xold
        xold = x
        x = xold - f(xold)*((xold-xtemp)/(f(xold)-f(xtemp)))
        er = abs((x-xold)/x)
        i += 1
        println("iter: ",i,";  x: ", x, ";  valor: ", f(x),";  erro: " ,er)
    end
    return x, f(x), i, er
end

#=

### Exercício 1 ###
O x₃ obtido foi x₃ = 0.625, para pontos iniciais
a = 0, b = 1.

Fazendo k > ln(b-a) - ln(ϵ) , temos:
            ---------------
                  ln(2)

k > ln(1 - 0) - ln(10⁻⁴)
    --------------------
            ln(2)

k > 0 - (-4)* ln(10)
    ----------------
          ln(2)

k > 4 * 3.322

k > 13.288

Ou seja, o número estimado de iterações para se ob-
ter a solução dada tolerância 10⁻⁴ é 14.

### Exercício 4 ###

a) Utilizando a fórmula de recursão para descobrir o
valor de a e b temos que:
Como x = a => x₀ = a = 0, e:

x1 = (a + b) / 2 => 0.48*2 = b
Ou seja, b = 0.96.

iter: 1;  x: 0.48;  valor: 9.894544843865265;  erro: 1.0
iter: 2;  x: 0.24;  valor: -5.060937494182507;  erro: 1.0
iter: 3;  x: 0.36;  valor: -3.874891826842797;  erro: 0.3333333333333333
iter: 4;  x: 0.42;  valor: -2.105257145070144;  erro: 0.14285714285714285
iter: 5;  x: 0.44999999999999996;  valor: 0.3137515146750314;  erro: 0.06666666666666661
iter: 6;  x: 0.43499999999999994;  valor: -1.171182647807246;  erro: 0.03448275862068969
iter: 7;  x: 0.44249999999999995;  valor: -0.5245211508218706;  erro: 0.0169491525423729
iter: 8;  x: 0.4462499999999999;  valor: -0.13434976287736955;  erro: 0.008403361344537761
iter: 9;  x: 0.44812499999999994;  valor: 0.08167438867622234;  erro: 0.004184100418410077
iter: 10;  x: 0.44718749999999996;  valor: -0.028237440581283302;  erro: 0.002096436058700165


b) Novamente, como x = a -> xₒ = a = 0, e:

x1 = a*f(b) - b*f(a) => 0.48 =  -b*(-6)
     ---------------           ---------
       f(b) - f(a)              f(b) + 6

=> 0.48(f(b) + 6) = 6b
=> f(b) = 12.5b - 6
=> tan(π*b) - 6 = 12.5b - 6
=> tan(π*b) = 12.5b
Resolvendo a equação temos 3 soluções:
b = 0 (Descartada)
b ≈ +/- 0.443
b ≈ +/- 1.483
Após observar o gráfico da função, foi escolhido usar 
o valor b = 1.483 

iter: 1;  x: 0.4756684925910371;  valor: 7.056720036224558;  erro: 1.0
iter: 2;  x: 0.21858559788584392;  valor: -5.1801851868674715;  erro: 1.1761200060374264
iter: 3;  x: 0.3274151572123112;  valor: -4.340007001527916;  erro: 0.33239010757188964
iter: 4;  x: 0.3838717619385769;  valor: -3.3816815986814923;  erro: 0.14707152315959965
iter: 5;  x: 0.4136107321108374;  valor: -2.4063141270627892;  erro: 0.07190086683797933
iter: 6;  x: 0.4293911322616393;  valor: -1.5661127568304343;  erro: 0.03675064286419983
iter: 7;  x: 0.4377962081924496;  valor: -0.9480957704033912;  erro: 0.019198603764780754
iter: 8;  x: 0.44228182704005436;  valor: -0.5456763743846036;  erro: 0.010141992217099523
iter: 9;  x: 0.444678218076074;  valor: -0.3042603641706094;  erro: 0.005389045243519581
iter: 10;  x: 0.44595917682026026;  valor: -0.166525821119901;  erro: 0.0028723677205605425


c) Para o método de Newton, utilizaremos como valor 
inicial x₁ = 0.48, já que utilizando a forma de re-
cursão para verificar o valor x₁ dado x₀ obtém-se 
que x₁ = π/6 ≈ 1.91 e não 0.48.

iter: 1;  x: 0.4675825019258912;  valor: 3.785105252252814;  erro: 0.026556806601964963
iter: 2;  x: 0.4551291915177739;  valor: 1.046868151861597;  erro: 0.027362143848843685
iter: 3;  x: 0.4485512339384831;  valor: 0.1329583649899968;  erro: 0.014664896853662304
iter: 4;  x: 0.4474551842507058;  valor: 0.002749225198632743;  erro: 0.0024495183570455953
iter: 5;  x: 0.4474315538237576;  valor: 1.2245786331632758e-6;  erro: 5.2813501297013365e-5
iter: 6;  x: 0.4474315432887487;  valor: 2.4158453015843406e-13;  erro: 2.3545521273157085e-8
iter: 7;  x: 0.4474315432887466;  valor: 3.552713678800501e-15;  erro: 4.590451045225174e-15
iter: 8;  x: 0.44743154328874657;  valor: -5.329070518200751e-15;  erro: 1.2406624446554526e-16
iter: 9;  x: 0.4474315432887466;  valor: 3.552713678800501e-15;  erro: 1.2406624446554523e-16
iter: 10;  x: 0.44743154328874657;  valor: -5.329070518200751e-15;  erro: 1.2406624446554526e-16


d) Não há necessidade de análise prévia dos valo-
res iniciais.

iter: 1;  x: 0.18119424169051174;  valor: -5.360105281561882;  erro: 1.6490908073108774
iter: 2;  x: 0.2861871658222898;  valor: -4.7422109536614165;  erro: 0.36686803836959714
iter: 3;  x: 1.0919861065027499;  valor: -5.702694576330455;  erro: 0.7379205063891816
iter: 4;  x: -3.6922966654011082;  valor: -4.551142530386828;  erro: 1.2957471204129594
iter: 5;  x: -22.600649854740645;  valor: -2.9435626868126588;  erro: 0.8366287390348369
iter: 6;  x: -57.22283247272461;  valor: -6.842371906404885;  erro: 0.6050413990689242
iter: 7;  x: 3.538758141470666;  valor: -14.172095557964756;  erro: 17.170314608995426
iter: 8;  x: -113.9443980284146;  valor: -5.823522661438628;  erro: 1.0310568856626738
iter: 9;  x: -195.89443077920293;  valor: -5.6556243654588165;  erro: 0.4183377364268006
iter: 10;  x: -2956.366770720262;  valor: -8.248014195909802;  erro: 0.9337381164206913

O método mais sucedido, considerando apenas proximidade da solução real e que cada método
iterou exatamente dez vezes foi o de Newton.

O método da bisseção obteve uma solução com três algarismos de precisão na sua décima ite-
ração, porém não convergiu para uma solução que fornecesse um erro de pelo menos 10⁻³.

Em dez iterações, a falsa posição resultou em uma solução com apenas dois algarismos de 
precisão, considerando apenas dez iterações.

O método de Newton convergiu a partir da quinta solução, como teve a oportunidade de rodar 
mais cinco iterações sua solução ficou a mais exata das quatro.

O método da secante divergiu. 

### Exercício 5 ###

Temos então que:
A = R$ 750.000,00;
P = R$ 1.500,00;
n = 20 anos ou 240 mesês;
i = incógnita.

750000 =  1500*((1+i)²⁴⁰ - 1)
         ------
            i

750000  = (1+i)²⁴⁰ - 1
------    ------------
 1500          i

500i = (1+i)²⁴⁰ - 1

(1+i)²⁴⁰ - 500i - 1 = 0

Utilizando algum método para encontrar alguma raíz
da equação acima e observando o gráfico da função
para dar um palpite inicial, obtemos:

Via bisseção, falsa posição e secante, com a = 0.004
e b = 0.006 (x₀ = b e x₁ = a no caso da secante), 
obteve-se:
i ≈ 0.555% ou i = 0.00555

Observação: o método de Newton não convergiu para 
essa função.


### Exercício 6 ###

a) Utilizando f(x) = xᵖ - a na fórmula da iteração do método
de Newton:

xk+1 = xk - f(xk)/f'(xk)
=>
xk+1 = xk -  xkᵖ - a
            ---------
             p*xkᵖ⁻¹
=>
xk+1 = xk -   xkᵖ     +    a
           ---------    ---------
            p*xkᵖ⁻¹      p*xkᵖ⁻¹
=>
xk+1 = p*xkᵖ - xkᵖ   +      a
       ----------      ---------- 
        p*xkᵖ⁻¹         p*xkᵖ⁻¹               
=>
xk+1 = xkᵖ*(p-1)   +     a
      ----------      ---------
        p*xkᵖ⁻¹        p*xkᵖ⁻¹
=>
xk+1 = (p-1)*xk  +     a
       --------     --------
          p          p*xkᵖ⁻¹
=>
xk+1 = 1 * ((p-1)*xk +    a    )
       -               -------
       p                xkᵖ⁻¹
Conforme queriamos mostrar.

b)

Como x₀ = 1, p = 2 e a = 3 temos:

x1 =   1 *((2-1)*1  +    3     )
       -               -----
       2                 1¹ 
       
=>
x1 = 4/2 = 2

x2 = 1/2 * (2 + 3/2) = 7/4

x3 = 1/2 * (7/4 + 3/(7/4)) = 1/2 * 97/28 = 97/56 ≈ 1,73214


Comparando com o item (b) do exercício 3 vemos que o método 
de Newton convergiu mais rápido para a solução, como esperado.
No item (b) do exercício 3, obteve-se em três iterações do
método da bisseção x = 1,6875.


### Exercício 7 ###

a)

s(t) = 0 => 2ℯ⁻ᵗ - 2.5ℯ⁻²ᵗ = 0
=> 2ℯ⁻ᵗ = 2.5ℯ⁻²ᵗ
=>  ℯ⁻ᵗ = 1.25
   ----
   ℯ⁻²ᵗ

=> ℯᵗ = 1.25
=> ln(ℯᵗ) = ln(1.25)
=> t = ln(1.25) é a solução obtida algebricamente da e-
quação s(t).

b) 

Sabemos que ln(1) = 0 e ln(ℯ) = 1.
Como 1 < 1.25 < ℯ  => ln(1) < ln(1.25) < ln(ℯ)
Portanto, um intervalo que contém o zero de s(t) é [ln(1); ln(ℯ)],
ou ainda, [0; 1].

c)

Bisseção, em 16 iterações: x ≈ 0.22313

Falsa Posição, em 10 iterações: x ≈ 0.22315

Newton, em 5 iterações: x ≈ 0.22314

Secante, em 11 iterações: x ≈ 0.22314

O método de Newton foi o que chegou mais próximo da solução consideran-
do casas decimais adicionais.

d)

Por ser um método que depende de um palpite decente de ponto incial 
para convergir, vemos que para t₀ ≥ 2 isso não acontece, ou seja,
o palpite inicial deve ser menor do que isso.


e) 

Calculando o valor de s'(0.9163) obtemos um valor muito próximo de zero,
-7.4*10⁻⁶.
Como estudado, o método de Newton falha se sua derivada está muito próxima 
de zero.

=#
