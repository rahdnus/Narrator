
VAR lmayofirst=true


=== lmayo===
=start
{
  -lmayofirst==true:
        ->main
    -else:
       ->side_1
}
->DONE
  

=main
    "*Sigh*"
    -in lmayo
    *[next]
    -success
    ~lmayofirst=false
    ->DONE
=side_1 
    -enough lmayo
    ->DONE
->END
