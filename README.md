# eight queens solved by Spin/Promela

Find all(= 92) eight queens answers with Spin/Promela.  
For example, one of the answers is the following.

```
  +---+---+---+---+---+---+---+---+
0 | Q |   |   |   |   |   |   |   |
  +---+---+---+---+---+---+---+---+
1 |   |   |   |   |   |   | Q |   |
  +---+---+---+---+---+---+---+---+
2 |   |   |   |   | Q |   |   |   |
  +---+---+---+---+---+---+---+---+
3 |   |   |   |   |   |   |   | Q |
  +---+---+---+---+---+---+---+---+
4 |   | Q |   |   |   |   |   |   |
  +---+---+---+---+---+---+---+---+
5 |   |   |   | Q |   |   |   |   |
  +---+---+---+---+---+---+---+---+
6 |   |   |   |   |   | Q |   |   |
  +---+---+---+---+---+---+---+---+
7 |   |   | Q |   |   |   |   |   |
  +---+---+---+---+---+---+---+---+
    0   1   2   3   4   5   6   7
```


## Usage

```
$ brew install spin
$ spin -a eight_queens.pml
$ gcc -o pan pan.c
$ ./pan -E -c0 -e
$ ls *.trail | wc -l # confirm that there are 92 answers
      92
$ spin -k eight_queens.pml1.trail -t eight_queens.pml # show one of the answers.
spin: eight_queen.pml:44, Error: assertion violated
spin: text of failed assertion: assert(0)
spin: trail ends after 81 steps
#processes: 1
        result[0] = 0  # results[col_num] = row_num.
        result[1] = 4
        result[2] = 7
        result[3] = 5
        result[4] = 2
        result[5] = 6
        result[6] = 1
        result[7] = 3
        ...
```

## Author

[Hodaka Suzuki](https://github.com/altitude3190)


## Lisense

[Unlisence](https://github.com/altitude3190/eight_queens_pml/blob/master/LICENSE)
