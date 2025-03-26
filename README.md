# Game Theory Analysis with MaxMin and MinMax Strategies

This repository contains MATLAB code for analyzing game theory payoff matrices using MaxMin and MinMax strategies.

## Files

-   `play.m`: MATLAB function that analyzes a given payoff matrix `A` using either the MaxMin or MinMax strategy.
-   `demo.m`: MATLAB script that demonstrates the `play` function with a sample payoff matrix.

## Function `play(A, strategy)`

### Description

This function analyzes a payoff matrix `A` using either the MaxMin or MinMax strategy and displays the safety levels and safe strategies for both players.

### Input Arguments

-   `A`: The payoff matrix.
-   `strategy`: A string indicating the strategy to use. It can be either `'maxmin'` or `'minmax'`.

### Output

The function displays the following information:

-   The modified matrix `A_mod` based on the chosen strategy.
-   The row maxima and column minima.
-   The safety levels for the first and second players.
-   The safe strategies for the first and second players.
-   Whether a saddle point exists, and if so, the safety level.

### Usage

1.  Ensure you have MATLAB installed.
2.  Save the `play.m` and `demo.m` files in the same directory.
3.  Open MATLAB and navigate to the directory where you saved the files.
4.  Run the `demo()` function in the MATLAB command window.

## Function `demo()`

### Description

This script demonstrates the `play` function by defining a sample payoff matrix `A` and calling `play` with both `'maxmin'` and `'minmax'` strategies.

### Usage

Run the `demo.m` script in MATLAB to see the output.