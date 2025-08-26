### 1. Considerando a equação:

$$
S = \big( A^2 - (C + B) \big) \cdot (D - B) 
$$
---
$$
A \; 2^C
$$
> Down sameas $$S = (A² -C -B)) * (D - B) $$
### a) Defina um conjunto de instruções (ISA) com armazenamento interno tipo pilha para implementar a equação
| Operação | Argumento |
| -------------- | --------------- |
| DIV |  |
| ADD |  |
| SUB |  |
| LOAD | $ |
|LOADI | K |
| RAISE |  |
 > X = Não é considerado, só pega o valor da pilha. Para carregar usa-se load

- Meu raise pega o numero ao contrario. Por favor respeitar essa regra.

  
### b) Apresente o programa assembly utilizando o ISA definido acima para a equação
| Operação | Argumento |
| -------------- | --------------- |
| LOAD | A |
| LOAD | 2 |
| LOADI | C  |
| RAISE |   |
| MUL |  |
| LOAD | A |
| LOAD | 2 | 
| RAISE | |
| LOAD | C | 
| LOAD | B | 
| ADD | | 
| SUB | | 
| LOAD | D |
| LOAD | B |
| SUB | |
| MUL | |
| DIV | |

$$
S = \big( A^2 - (C + B) \big) \cdot (D - B) 
$$
---
$$
A \; 2^C
$$

### a) Defina um conjunto de instruções (ISA) com armazenamento interno tipo acumulador para implementar a equação
| Operação | Argumento |
| -------------- | --------------- |
| DIV | A |
| ADD | A |
| SUB | A |
| LOAD | $ |
|LOADI | K |
| RAISE | A |
| STORE | A |
 > X = Não é considerado, só pega o valor da pilha. Para carregar usa-se load

### b) Apresente o programa assembly utilizando o ISA definido acima para a equação
| Operação | Argumento |
| -------------- | --------------- |
| LOAD | A |
| LOAD | 2 |
| LOADI | C  |
| RAISE |   |
| MUL |  |
| LOAD | A |
| LOAD | 2 | 
| RAISE | |
| LOAD | C | 
| LOAD | B | 
| ADD | | 
| SUB | | 
| LOAD | D |
| LOAD | B |
| SUB | |
| MUL | |
| DIV | |

$$
S = \big( A^2 - (C + B) \big) \cdot (D - B) 
$$
---

$$
A \; 2^C
$$

### a) Defina um conjunto de instruções (ISA) com armazenamento interno tipo acumulador para implementar a equação
| Operação | Argumento |
| -------------- | --------------- |
| DIV | A |
| ADD | A |
| SUB | A |
| LOAD | $ |
|LOADI | K |
| RAISE | A |
| RAISEI | B | -- deltarune
| STORE | $ |
 > X = Não é considerado, só pega o valor da pilha. Para carregar usa-se load

### b)
| Operação | Argumento |
| -------------- | --------------- |
| LOAD | A |
| RAISEI | 2 |
| STORE | O |
| LOAD | C |
| ADD | B |
| STORE | P |
| LOAD | D | 
| SUB | B |
| STORE | I |
| LOAD | O | 
| SUB | P | 
| STORE | M |
| LOAD | I | 
| MUL | M |
| STORE | N |
| LOADI | 2 | 
| RAISE | C |
| MUL | A | 
| STORE | B |
| LOAD N | 
| DIV | B | 
