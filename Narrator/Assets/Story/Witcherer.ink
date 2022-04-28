INCLUDE Global.ink

VAR currentspeaker="NONE"

===MAIN===
=arbiter
    {
        -currentspeaker=="Witcherer":
        {->Witcherer.con_1|->Witcherer.side_1}
    }      
    {
        -Witcher hasnt talked:->Hater.point
        
        -currentspeaker=="Hater":            
        {->Hater.con_1|->Hater.side_1}
                   
    }
    

===Witcherer===
=con_1
    ~Witcher+=talked
    Witcher3 is pretty cool huh
        +[No] Not really kinda suks.
        Wow u are a bad person
            ~Witcher+=sucks
        +[Yeh] Its pretty good huh.
        Yeh u know whats up
            ~Witcher+=good
    -
    +[end] 
    ->DONE

=side_1 
    -Should probably get going now
     Cant be sitting around forever
    +[end]
    ->DONE

===Hater===
=point
    talk to Witcherer
    +[end]
    ->DONE

=con_1

    heard you guys talking about Witcher3
    {
        -Witcher has sucks:
            HEH, you got good taste
        -Witcher has good:
            hmmm, gotta say i am kinda disappointed
    }
    -
    +[end]
    ->DONE

=side_1 
    -Should probably get going now
     Cant be sitting around forever
    +[end]
    ->DONE


    

