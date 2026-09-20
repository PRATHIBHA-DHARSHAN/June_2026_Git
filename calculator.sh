#!/bin/bash

echo "Simple Calculator"

read -p "Enter first number: " num1
read -p "Enter operator (+, -, *, /): " operator
read -p "Enter second number: " num2

case $operator in
    +)
        result=$((num1 + num2))
        ;;
    -)
        result=$((num1 - num2))
        ;;
    \*)
        result=$((num1 * num2))
        ;;
    /)
        if [ "$num2" -eq 0 ]; then
            echo "Error: Cannot divide by zero"
            exit 1
        fi
        result=$((num1 / num2))
        ;;
    *)
        echo "Invalid operator"
        exit 1
        ;;
esac

echo "Result = $result"
