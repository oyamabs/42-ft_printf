# ft_printf

Because ft_putnbr() and ft_putstr() aren’t enough

# Goal

Make a basic reproduction of `printf` function from libc.
`ft_printf` should be able to print
- numbers with the `i` `d` and `u` flags
- hex numbers with the `x` and `X` flags
- pointers with the `p` flag
- strings with the `s` flag and
- characters with the `c` flag.

`ft_printf` should also be able to print `%` with the `%` flag.

# Grade

![Grade](https://img.shields.io/badge/Grade-100-green)

# Bonus part

I didn't made bonuses (yet). I plan to do them after minishell.

# My thoughts on the project

It was pretty easy, the only "difficulty" was for hex numbers. My math was pretty bad at first. Another little difficulty I had was for the `unsigned int` flag where I had to do a little 'hack' to make it work nicely (I had to tweak a little my `ft_putnbr`)
