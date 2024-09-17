#lang racket


(define (guessing-game)
  (define secret-number (+ 1 (random 100))) ; Generates a number between 1 and 100
  (define (prompt-guess)
    (display "Guess a number between 1 and 100: ")
    (flush-output)
    (string->number (read-line)))

  (define (play-loop)
    (let ([guess (prompt-guess)])
      (cond
        [(= guess secret-number)
         (displayln "Congratulations! you guessed it right!")]
        [(< guess secret-number)
         (displayln "Too low, try again!")
         (play-loop)]
        [(> guess secret-number)
         (displayln "Too high, try again!")
         (play-loop)])))

  (displayln "Welcome to the Guess the Number Game!")
  (play-loop))

(guessing-game)