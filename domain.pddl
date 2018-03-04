(define (domain travel)
(:requirements :strips :typing :action-costs)
(:types place vehicle passenger - object
        airport city - place
)
(:predicates
            (In ?pas - passenger ?pl - (either place vehicle))
            (flight ?from - city ?to - city)
            (visited ?pas - passenger ?city - city)
        )
(:functions
    (total-cost)
    (flight-cost ?from ?to)
)

(:action FLY
     :parameters (?pass - passenger ?from - city ?to - city)
     :precondition (and (flight ?from ?to) (In ?pass ?from))
     :effect (and (In ?pass ?to) (visited ?pass ?to) (not (In ?pass ?from))
            (increase (total-cost) (flight-cost ?from ?to))
     )
    )
)
