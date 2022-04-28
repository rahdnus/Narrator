INCLUDE Intro.ink
INCLUDE Lmayo.ink

VAR currentspeaker="NONE"

->ARBITER

=== ARBITER ===
    {
    -currentspeaker=="lmayo":
            ->lmayo.start
    -currentspeaker=="intro":
            ->intro.start
    }
->END

    