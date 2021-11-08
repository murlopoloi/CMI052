#f(x) = 1 /(1 + 25*x^2)
#x = [-5, -3, -1, 1, 3, 5]
#x = [-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5]
#x = [-5, -4.5, -4, -3.5, -3, -2.5, -2, -1.5, -1, -0.5, 0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5]
#y = [f(x) for x in x]

#=
POLINÔMIO INTERPOLADOR:

Para k = 5:

A = [1  -5  25  -125  625  -3125
     1  -3   9   -27   81   -243
     1  -1   1    -1    1     -1
     1   1   1     1    1      1
     1   3   9    27   81    243
     1   5  25   125  625   3125]

b = [0.001597444089456869
     0.004424778761061947
     0.038461538461538464
     0.038461538461538464
     0.004424778761061947
     0.001597444089456869]

=> f(x) = 0.00016991193939934363*x^4 -
          0.005953714356553001*x^2 + 
          0.04424534087869215

Para k = 10:

A = [1  -5  25  -125  625  -3125  15625  -78125  390625  -1953125  9765625
     1  -4  16   -64  256  -1024   4096  -16384   65536   -262144  1048576
     1  -3   9   -27   81   -243    729   -2187    6561    -19683    59049
     1  -2   4    -8   16    -32     64    -128     256      -512     1024
     1  -1   1    -1    1     -1      1      -1       1        -1        1
     1   0   0     0    0      0      0       0       0         0        0
     1   1   1     1    1      1      1       1       1         1        1
     1   2   4     8   16     32     64     128     256       512     1024
     1   3   9    27   81    243    729    2187    6561     19683    59049
     1   4  16    64  256   1024   4096   16384   65536    262144  1048576
     1   5  25   125  625   3125  15625   78125  390625   1953125  9765625]

b = [0.001597444089456869
     0.0024937655860349127
     0.004424778761061947
     0.009900990099009901
     0.038461538461538464
     1.0
     0.038461538461538464
     0.009900990099009901
     0.004424778761061947
     0.0024937655860349127
     0.001597444089456869]

=> f(x) = -6.555082721697311e-5*x^10 +  
           0.003607917530022221*x^8 -
           0.06720281294416544*x^6 + 
           0.5038241865915426*x^4 -
           1.4017022018886656*x^2 + 
           0.9999999999999899


Para k = 20:

A = [1.0 -5.0 25.0 -125.0 625.0 -3125.0 15625.0 -78125.0 390625.0 -1.953125e6 9.765625e6 -4.8828125e7 2.44140625e8 -1.220703125e9 6.103515625e9 -3.0517578125e10 1.52587890625e11 -7.62939453125e11 3.814697265625e12 -1.9073486328125e13 9.5367431640625e13; 
     1.0 -4.5 20.25 -91.125 410.0625 -1845.28125 8303.765625 -37366.9453125 168151.25390625 -756680.642578125 3.4050628916015625e6 -1.5322783012207031e7 6.895252355493164e7 -3.102863559971924e8 1.3962886019873657e9 -6.283298708943146e9 2.8274844190244156e10 -1.272367988560987e11 5.725655948524442e11 -2.5765451768359985e12 1.1594453295761994e13; 
     1.0 -4.0 16.0 -64.0 256.0 -1024.0 4096.0 -16384.0 65536.0 -262144.0 1.048576e6 -4.194304e6 1.6777216e7 -6.7108864e7 2.68435456e8 -1.073741824e9 4.294967296e9 -1.7179869184e10 6.8719476736e10 -2.74877906944e11 1.099511627776e12; 
     1.0 -3.5 12.25 -42.875 150.0625 -525.21875 1838.265625 -6433.9296875 22518.75390625 -78815.638671875 275854.7353515625 -965491.5737304688 3.3792205080566406e6 -1.1827271778198242e7 4.139545122369385e7 -1.4488407928292847e8 5.0709427749024963e8 -1.7748299712158737e9 6.211904899255558e9 -2.1741667147394455e10 7.609583501588058e10; 
     1.0 -3.0 9.0 -27.0 81.0 -243.0 729.0 -2187.0 6561.0 -19683.0 59049.0 -177147.0 531441.0 -1.594323e6 4.782969e6 -1.4348907e7 4.3046721e7 -1.29140163e8 3.87420489e8 -1.162261467e9 3.486784401e9; 
     1.0 -2.5 6.25 -15.625 39.0625 -97.65625 244.140625 -610.3515625 1525.87890625 -3814.697265625 9536.7431640625 -23841.85791015625 59604.644775390625 -149011.61193847656 372529.0298461914 -931322.5746154785 2.3283064365386963e6 -5.820766091346741e6 1.4551915228366852e7 -3.637978807091713e7 9.094947017729282e7; 
     1.0 -2.0 4.0 -8.0 16.0 -32.0 64.0 -128.0 256.0 -512.0 1024.0 -2048.0 4096.0 -8192.0 16384.0 -32768.0 65536.0 -131072.0 262144.0 -524288.0 1.048576e6; 
     1.0 -1.5 2.25 -3.375 5.0625 -7.59375 11.390625 -17.0859375 25.62890625 -38.443359375 57.6650390625 -86.49755859375 129.746337890625 -194.6195068359375 291.92926025390625 -437.8938903808594 656.8408355712891 -985.2612533569336 1477.8918800354004 -2216.8378200531006 3325.256730079651; 
     1.0 -1.0 1.0 -1.0 1.0 -1.0 1.0 -1.0 1.0 -1.0 1.0 -1.0 1.0 -1.0 1.0 -1.0 1.0 -1.0 1.0 -1.0 1.0; 
     1.0 -0.5 0.25 -0.125 0.0625 -0.03125 0.015625 -0.0078125 0.00390625 -0.001953125 0.0009765625 -0.00048828125 0.000244140625 -0.0001220703125 6.103515625e-5 -3.0517578125e-5 1.52587890625e-5 -7.62939453125e-6 3.814697265625e-6 -1.9073486328125e-6 9.5367431640625e-7; 
     1.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0; 
     1.0 0.5 0.25 0.125 0.0625 0.03125 0.015625 0.0078125 0.00390625 0.001953125 0.0009765625 0.00048828125 0.000244140625 0.0001220703125 6.103515625e-5 3.0517578125e-5 1.52587890625e-5 7.62939453125e-6 3.814697265625e-6 1.9073486328125e-6 9.5367431640625e-7; 
     1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0 1.0; 
     1.0 1.5 2.25 3.375 5.0625 7.59375 11.390625 17.0859375 25.62890625 38.443359375 57.6650390625 86.49755859375 129.746337890625 194.6195068359375 291.92926025390625 437.8938903808594 656.8408355712891 985.2612533569336 1477.8918800354004 2216.8378200531006 3325.256730079651; 
     1.0 2.0 4.0 8.0 16.0 32.0 64.0 128.0 256.0 512.0 1024.0 2048.0 4096.0 8192.0 16384.0 32768.0 65536.0 131072.0 262144.0 524288.0 1.048576e6; 
     1.0 2.5 6.25 15.625 39.0625 97.65625 244.140625 610.3515625 1525.87890625 3814.697265625 9536.7431640625 23841.85791015625 59604.644775390625 149011.61193847656 372529.0298461914 931322.5746154785 2.3283064365386963e6 5.820766091346741e6 1.4551915228366852e7 3.637978807091713e7 9.094947017729282e7; 
     1.0 3.0 9.0 27.0 81.0 243.0 729.0 2187.0 6561.0 19683.0 59049.0 177147.0 531441.0 1.594323e6 4.782969e6 1.4348907e7 4.3046721e7 1.29140163e8 3.87420489e8 1.162261467e9 3.486784401e9; 
     1.0 3.5 12.25 42.875 150.0625 525.21875 1838.265625 6433.9296875 22518.75390625 78815.638671875 275854.7353515625 965491.5737304688 3.3792205080566406e6 1.1827271778198242e7 4.139545122369385e7 1.4488407928292847e8 5.0709427749024963e8 1.7748299712158737e9 6.211904899255558e9 2.1741667147394455e10 7.609583501588058e10; 
     1.0 4.0 16.0 64.0 256.0 1024.0 4096.0 16384.0 65536.0 262144.0 1.048576e6 4.194304e6 1.6777216e7 6.7108864e7 2.68435456e8 1.073741824e9 4.294967296e9 1.7179869184e10 6.8719476736e10 2.74877906944e11 1.099511627776e12; 
     1.0 4.5 20.25 91.125 410.0625 1845.28125 8303.765625 37366.9453125 168151.25390625 756680.642578125 3.4050628916015625e6 1.5322783012207031e7 6.895252355493164e7 3.102863559971924e8 1.3962886019873657e9 6.283298708943146e9 2.8274844190244156e10 1.272367988560987e11 5.725655948524442e11 2.5765451768359985e12 1.1594453295761994e13; 
     1.0 5.0 25.0 125.0 625.0 3125.0 15625.0 78125.0 390625.0 1.953125e6 9.765625e6 4.8828125e7 2.44140625e8 1.220703125e9 6.103515625e9 3.0517578125e10 1.52587890625e11 7.62939453125e11 3.814697265625e12 1.9073486328125e13 9.5367431640625e13]

b = [0.001597444089456869
     0.001971414489896501
     0.0024937655860349127
     0.0032546786004882017
     0.004424778761061947
     0.006359300476947536
     0.009900990099009901
     0.017467248908296942
     0.038461538461538464
     0.13793103448275862
     1.0
     0.13793103448275862
     0.038461538461538464
     0.017467248908296942
     0.009900990099009901
     0.006359300476947536
     0.004424778761061947
     0.0032546786004882017
     0.0024937655860349127
     0.001971414489896501
     0.001597444089456869]

=> f(x) = 6.29303462215807e-8*x^20 -
          2.7811674171541193e-16*x^19 -
          6.0595630376911095e-6*x^18 +
          2.6123368255516376e-14*x^17 +
          0.00024191851089388697*x^16 -
          1.0072972655185325e-12*x^15 -
          0.005215166818428724*x^14 +
          2.0656992996041536e-11*x^13 +
          0.06630522959847931*x^12 -
          2.43929397180434e-10*x^11 -
          0.5103926425832566*x^10 +
          1.6769105057890369e-9*x^9 +
          2.3533842563966894*x^8 -
          6.455692281280344e-9*x^7 -
          6.215554791614401*x^6 +
          1.257453226975886e-8*x^5 +
          8.59245842689197*x^4 -
          9.78647089292887e-9*x^3 - 
          5.24275969496648*x^2 +
          5.584699832407732e-10*x +
          1.0000000005965455
          

=#


#= 
SPLINES:

Primeiramente note que n = k + 1.
Então, k = 5 -> n = 6; k = 10 -> n = 11 e k = 20 -> n = 21

Para k = 5:

xᵢ = [-5
      -3
      -1
       1
       3
       5]

f(xᵢ) = [0.001597444089456869
         0.004424778761061947
         0.038461538461538464
         0.038461538461538464
         0.004424778761061947
         0.001597444089456869]

Spline linear:

s1(x) = 0.001413667335802539*x + 0.008665780768469564

s2(x) = 0.01701837985023826*x + 0.05547991831177672

s3(x) = 0.038461538461538464

s4(x) = -0.01701837985023826*x + 0.05547991831177672

s5(x) = -0.001413667335802539*x + 0.008665780768469564

Spline cúbica:

h = 2

g = [0.0
     0.015006622487750029
    -0.013212352407692963
    -0.013212352407692958
     0.015006622487750029
     0.0]

s1(x) = 0.0012505518739791691*(x + 3)^3 + 
        0.007503311243875014*(x + 3)^2 +
        0.011418082327635892*(x + 3) + 
        0.004424778761061947 

s2(x) = -0.002351581241286916*(x + 1)^3 -
         0.006606176203846481*(x + 1)^2 +
         0.01321235240769296*(x + 1) + 
         0.038461538461538464

s3(x) = -0.006606176203846479*(x - 1)^2 -
         0.01321235240769296*(x - 1) + 
         0.038461538461538464

s4(x) = 0.0023515812412869155*(x - 3)^3 + 
        0.007503311243875014*(x - 3)^2 -
        0.011418082327635894*(x - 3) + 
        0.004424778761061947

s5(x) = -0.0012505518739791691*(x - 5)^3 + 
         0.0035885401601141375*(x - 5) + 
         0.001597444089456869

Para k = 10:

xᵢ = [ -5
       -4
       -3
       -2
       -1 
        0
        1
        2
        3
        4
        5 ]

f(xᵢ) = [0.001597444089456869
         0.0024937655860349127
         0.004424778761061947
         0.009900990099009901
         0.038461538461538464
         1.0
         0.038461538461538464
         0.009900990099009901
         0.004424778761061947
         0.0024937655860349127
         0.001597444089456869]


Spline linear:

s1(x) = 0.0008963214965780437*x + 0.006079051572347088

s2(x) = 0.0019310131750270342*x + 0.01021781828614305

s3(x) = 0.005476211337947954*x + 0.020853412774905808

s4(x) = 0.02856054836252856*x + 0.06702208682406703

s5(x) = 0.9615384615384616*x + 1

s6(x) = -0.9615384615384616*x + 1

s7(x) = -0.02856054836252856*x + 0.06702208682406703

s8(x) = -0.005476211337947954*x + 0.020853412774905808

s9(x) = -0.0019310131750270342*x + 0.01021781828614305

s10(x) = -0.0008963214965780437*x + 0.006079051572347088

Spline cúbica:

h = 1

g = [0.0
    -0.007341751348465899
     0.030401697072312585
    -0.11071983877786351
     0.43556199506372206
    -0.6985502283010917
     0.43556199506372206
    -0.11071983877786351
     0.03040169707231258
    -0.007341751348465896
     0.0]

s1(x) = -0.0012236252247443166*(x + 4)^3 -
         0.0036708756742329495*(x + 4)^2 -
         0.0015509289529105894*(x + 4) +
         0.0024937655860349127

s2(x) = 0.006290574736796413*(x + 3)^3 +
        0.015200848536156292*(x + 3)^2 +
        0.010841286974386913*(x + 3) +
        0.004424778761061947

s3(x) = -0.02352025597502935*(x + 2)^3 -
         0.055359919388931755*(x + 2)^2 -
         0.026363452075954454*(x + 2) +
         0.009900990099009901

s4(x) = 0.09104697230693093*(x + 1)^3 +
        0.21778099753186103*(x + 1)^2 +
        0.15529457358745866*(x + 1) +
        0.038461538461538464

s5(x) = -0.18901870389413564*x^3 -
         0.34927511415054585*x^2 +
         0.8012820512820513*x +
         1

s6(x) = 0.18901870389413564*(x - 1)^3 +
        0.21778099753186103*(x - 1)^2 -
        0.9327761679007361*(x - 1) +
        0.038461538461538464

s7(x) = -0.09104697230693093*(x - 2)^3 -
         0.055359919388931755*(x - 2)^2 +
         0.007126504555470613*(x - 2) +
         0.009900990099009901

s8(x) = 0.02352025597502935*(x - 3)^3 +
        0.01520084853615629*(x - 3)^2 -
        0.013795618776821013*(x - 3) + 
        0.004424778761061947

s9(x) = -0.006290574736796413*(x - 4)^3 -
         0.003670875674232948*(x - 4)^2 +
         0.0006886858875364303*(x - 4) + 
         0.0024937655860349127

s10(x) = 0.0012236252247443161*(x - 5)^3 -
         0.0021199467213223596*(x - 5) + 
         0.001597444089456869


Para k = 20:

xᵢ = [-5.0
      -4.5
      -4.0
      -3.5
      -3.0
      -2.5
      -2.0
      -1.5
      -1.0
      -0.5
       0.0
       0.5
       1.0
       1.5
       2.0
       2.5
       3.0
       3.5
       4.0
       4.5
       5.0 ]
       
f(xᵢ) = [0.001597444089456869
         0.001971414489896501
         0.0024937655860349127
         0.0032546786004882017
         0.004424778761061947
         0.006359300476947536
         0.009900990099009901
         0.017467248908296942
         0.038461538461538464
         0.13793103448275862
         1.0
         0.13793103448275862
         0.038461538461538464
         0.017467248908296942
         0.009900990099009901
         0.006359300476947536
         0.004424778761061947
         0.0032546786004882017
         0.0024937655860349127
         0.001971414489896501
         0.001597444089456869]

s17*

Spline linear:

s1(x) = 0.0007479408008792638*x + 0.005337148093853189

s2(x) = 0.0010447021922768236*x + 0.006672574355142208

s3(x) = 0.001521826028906578*x + 0.008581069701661226

s4(x) = 0.0023402003211474903*x + 0.011445379724504417

s5(x) = 0.0038690434317711787*x + 0.016031909056375485

s6(x) = 0.00708337924412473*x + 0.024067748587259363

s7(x) = 0.015132517618574082*x + 0.04016602533615807

s8(x) = 0.04198857910648304*x + 0.0804501175680215

s9(x) = 0.1989389920424403*x + 0.23740053050397877

s10(x) = 1.7241379310344827*x + 1 

s11(x) = -1.7241379310344827*x + 1

s12(x) = -0.1989389920424403*x + 0.23740053050397877

s13(x) = -0.04198857910648304*x + 0.0804501175680215

s14(x) = -0.015132517618574082*x + 0.04016602533615807

s15(x) = -0.00708337924412473*x + 0.024067748587259363

s16(x) = -0.0038690434317711787*x + 0.016031909056375485

s17(x) = -0.0023402003211474903*x + 0.011445379724504417

s18(x) = -0.001521826028906578*x + 0.008581069701661226

s19(x) = -0.0010447021922768236*x + 0.006672574355142208

s20(x) = -0.0007479408008792638*x + 0.005337148093853189

Spline cúbica:

h = 0.5

g = [0.0
     7.127429455238877e-5
     1.1664213188004695e-5
     0.00035919268932534695
    -0.0006300606782484804
     0.0036898931342922627
    -0.01091517604656702
     0.04801994942642517
    -0.1543085601712247
     0.7261647041944309
    -1.2251513176144566
     0.726164704194431
    -0.1543085601712247
     0.04801994942642518
    -0.010915176046567023
     0.0036898931342922645
    -0.0006300606782484809
     0.00035919268932534717
     1.1664213188004646e-5
     7.127429455238878e-5
     0.0]

s1(x) = 2.375809818412959e-5*(x + 4.5)^3 + 
        3.5637147276194384e-5*(x + 4.5)^2 +
        0.0007598198499713287*(x + 4.5) +
        0.001971414489896501


        
s2(x) = -1.987002712146136e-5*(x + 4)^3 +
         5.8321065940023476e-6*(x + 4)^2 +
         0.00105258575235419*(x + 4) +
         0.0024937655860349127



s3(x) = 0.00011584282537911409*(x + 3.5)^3 +
        0.00017959634466267348*(x + 3.5)^2 +
        0.0015826634948931362*(x + 3.5) +
        0.0032546786004882017



s4(x) = -0.0003297511225246091*(x + 3)^3 +
        -0.0003150303391242402*(x + 3)^2 +
         0.0022651229322165223*(x + 3) +
         0.004424778761061947



s5(x) = 0.0014399846041802476*(x + 2.5)^3 +
        0.0018449465671461314*(x + 2.5)^2 +
        0.0044315205642991825*(x + 2.5) +
        0.006359300476947536



s6(x) = -0.004868356393619761*(x + 2)^3 +
        -0.00545758802328351*(x + 2)^2 +
         0.005571674330887916*(x + 2) +
         0.009900990099009901



s7(x) = 0.01964504182433073*(x + 1.5)^3 + 
        0.024009974713212586*(x + 1.5)^2 + 
        0.022226244519097695*(x + 1.5) +
        0.017467248908296942



s8(x) = -0.06744283653254997*(x + 1)^3 +
        -0.07715428008561236*(x + 1)^2 + 
         0.020272148196814357*(x + 1) + 
         0.038461538461538464


s9(x) = 0.29349108812188524*(x + 0.5)^3 +
        0.36308235209721546*(x + 0.5)^2 +
        0.30710739606057674*(x + 0.5) + 
        0.13793103448275862



s10(x) = -0.6504386739362958*x^3 +
         -0.6125756588072283*x^2 +
          1.5804597701149425*x + 
          1


s11(x) = 0.6504386739362958*(x - 0.5)^3 +
         0.3630823520972155*(x - 0.5)^2 -
         1.7052064234699489*(x - 0.5) +
         0.13793103448275862



s12(x) = -0.29349108812188524*(x - 1)^3 +
         -0.07715428008561236*(x - 1)^2 -
          0.16414336005477517*(x - 1) + 
          0.038461538461538464



s13(x) = 0.06744283653254997*(x - 1.5)^3 +
         0.02400997471321259*(x - 1.5)^2 -
         0.04684430088301424*(x - 1.5) + 
         0.017467248908296942


 
s14(x) = -0.019645041824330734*(x - 2)^3 +
         -0.005457588023283512*(x - 2)^2 -
          0.012950051174133155*(x - 2) + 
          0.009900990099009901



s15(x) = 0.0048683563936197626*(x - 2.5)^3 +
         0.0018449465671461322*(x - 2.5)^2 -
         0.007377995058956604*(x - 2.5) + 
         0.006359300476947536



s16(x) = -0.0014399846041802484*(x - 3)^3 +
         -0.00031503033912424046*(x - 3)^2 -
          0.0036665624502882368*(x - 3) +
          0.004424778761061947



s17(x) = 0.0003297511225246093*(x - 3.5)^3 +
         0.00017959634466267358*(x - 3.5)^2 -
         0.0023328399294473058*(x - 3.5) +
         0.0032546786004882017



s18(x) = -0.00011584282537911417*(x - 4)^3 +
          5.832106594002323e-6*(x - 4)^2 -
          0.0014899492692647984*(x - 4) +
          0.0024937655860349127


s19(x) = 1.987002712146138e-5*(x - 4.5)^3 +
         3.563714727619439e-5*(x - 4.5)^2 -
         0.0010318511254190916*(x - 4.5) + 
         0.001971414489896501



s20(x) = -2.3758098184129594e-5*(x - 5)^3 -
          0.0007420012763332314*(x - 5) +
          0.001597444089456869





=#