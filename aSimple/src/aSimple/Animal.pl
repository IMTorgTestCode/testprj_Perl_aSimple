#!/usr/local/bin/perl

{
    package Animal;
    use Moose;

    has extinct => ( isa => 'Bool', is => 'rw' );

    no Moose;
}

{
    package Cat;
    use Moose;
    extends 'Animal';
    
    has breed => ( isa => 'Str', is => 'rw' );

    sub legs { 4 }
    sub says { "miaow!" }

    no Moose;
}

{
    package Dog;
    use Moose;
    extends 'Animal';
    
    has breed => ( isa => 'Str', is => 'rw' );

    sub legs { 4 }
    sub says { "woof!" }

    no Moose;
}

{
    package Fish;
    use Moose;
    extends 'Animal';
    
    has breed => ( isa => 'Str', is => 'rw' );

    sub says { "gurgles!" }

    no Moose;
}

{
    package PetDog;
    use Moose;
    extends 'Dog';
    
    has "name" => ( isa => 'Str', is => 'rw' );
    
    no Moose;
}


my $dog = PetDog->new( breed => 'Dalmation', name => 'Spot' );
print $dog->breed, "\n";
