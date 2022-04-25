;; Problem 

(define 
	(problem Warehouse_P)
	(:domain Warehouse_D)

	;; Objects

	(:objects 
                m_1 m_2 - mover
				l_1 l_2 - loader 
				c_1 c_2 c_3 c_4 - crate
				A B - group

	)

	;;;;;;;;;;

	;; Init 

	(:init 

		(=(distance_mover m_1)0)
		(=(distance_mover m_2)0)

		(= (velocity m_1) 10)
		(= (velocity m_2) 10)

		(= (distance_crate c_1) 10)
		(= (weight c_1) 70)
		

		(= (distance_crate c_2) 20)
		(= (weight c_2) 80)
        (fragile c_2)
	
		(= (distance_crate c_3)20)
		(= (weight c_3) 20)

        (= (distance_crate c_4)10)
		(= (weight c_4) 30)
        
		(different m_1 m_2)

		(freetopoint m_1)
		(freetopoint m_2)
		
		(free_crate c_1)
		(free_crate c_2)
		(free_crate c_3)
        (free_crate c_4)





;;GROUP SETTINGS

		(freetogroup)
		(no_active_groups) 
		 

		(available A) (=(n_el A) 2) (=(n_el_processed A) 0)
        (available B) (=(n_el B) 2) (=(n_el_processed B) 0)
	


;; crate in groups OR not in groups

		(group c_1 A)   (=(crate_taken c_1) 0)
		(group c_2 A)   (=(crate_taken c_2) 0)
		(group c_3 B)   (=(crate_taken c_3) 0)
        (group c_4 B)   (=(crate_taken c_4) 0) 



;; LOADER SETTINGS

	(different_loaders l_1 l_2)
	(cheap l_2)
	(free_loader l_1)
	(free_loader l_2)
	(=(time_loader l_1) 0 )
	(=(time_loader l_2) 0 )

	(event_1)
	(free_bay)

	)

	;;;;;;;

	;; Goal

	(:goal	(and 
			(crate_delivered c_1)
			(crate_delivered c_2)
			(crate_delivered c_3)
            (crate_delivered c_4)
			)
		)

	;;;;;;;

)