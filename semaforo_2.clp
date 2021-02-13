(defrule tipo-robot-regla
(initial-fact)
=>
(printout t "Que tipo de robot/configuraciones tienes (peaton/carro)?" crlf)
(assert (tipo-robot (read)))
)

(defrule semaforo-color-regla
(or (tipo-robot peaton) (tipo-robot carro))
=>
(printout t "Ingrese el color del semaforo (verde/amarillo/rojo)?" crlf)
(assert (semaforo (read)))
)

(defrule pasar-regla
(tipo-robot ?tipo)
(or (and (tipo-robot carro) (semaforo verde)) (and (tipo-robot peaton) (semaforo verde)))
=>
(printout t "El Robot: "?tipo " puede pasar " crlf)
)

(defrule precaucion-reglac
(tipo-robot carro)
(semaforo amarillo)
=>
(printout t "El Robot: "tipo-robot " pasar rapido " crlf)
)

(defrule precaucion-reglap
(tipo-robot peaton)
(semaforo amarillo)
=>
(printout t "El Robot: "tipo-robot " pasar detenerse " crlf)
)


(defrule detener-regla
(tipo-robot ?tipo)
(or (and (tipo-robot carro) (semaforo rojo)) (and (tipo-robot peaton) (semaforo rojo)))
=>
(printout t "El Robot: "?tipo " no puede pasar " crlf)
)

