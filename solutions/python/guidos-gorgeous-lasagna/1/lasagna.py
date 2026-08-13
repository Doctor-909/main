"""Functions used in preparing Guido's gorgeous lasagna.

Learn about Guido, the creator of the Python language:
https://en.wikipedia.org/wiki/Guido_van_Rossum

This is a module docstring, used to describe the functionality
of a module and its functions and/or classes.
"""



EXPECTED_BAKE_TIME= 40


def bake_time_remaining(n):
    """Calculate the bake time remaining."""
    
    return EXPECTED_BAKE_TIME - n 




def preparation_time_in_minutes(number_of_layers) :
    """Calculate the preparation time in minutes"""
   
    return number_of_layers * 2



def elapsed_time_in_minutes(number_of_layers,elapsed_bake_time):
    """Calculate the elapsed cooking time""" 
   
    return (preparation_time_in_minutes(number_of_layers))+ elapsed_bake_time

    
