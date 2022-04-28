VAR introfirst=true

=== intro ===
=start
{
  -introfirst==true:
        ->intro.main
   -else:
       ->intro.side_1
}
  
->DONE

=main
    "*Sigh*"
    I look around my room. Its messy as usual.
    Why me? Why did i end up in a hell hole like this.
    Waking up to thoughts like this is not very pleasant huh.

    *[next]

    -I should get ready for the today.
    Just...
    a little more bed time first.

    ~introfirst=false
    ->DONE
=side_1 
    Should probably get going now
    Cant be sitting around forever
    ->DONE

/* *{choice1}This is choice1[.], not using global->KNOT_2->stitch

=stitch
    -LAMAYO
    *{choice2}This is choice2->DONE
    *{choice3}This is choice3->DONE
->END */


=== KNOT_2 ===
 STFU
- ->->

