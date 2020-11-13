%Defining a class with the name Car
classdef Car
    
    %Below are the properties, somtimes also known as fields.
    %You can think of these as variables that can be accessed and describe
    %the object
    properties
        
        make     % make of the car
        model    % model of the car
        am       % automatic or manual
        mpg      % miles per galon
        pos      % car's position on a 2D road
        
    end
    
    %The methods are the "functions" of the class which often update the
    %properties
    methods
        
        %This method is known as the constructor. The constructor must
        %have the same name as the Class itself, and is used to create
        %instances of the the class
        function obj = Car(make, model, am, mpg)  
            
            %one common thing to do in the constructor is to assign values
            %to the different properties
            
            %Assigning the objects make to the make from the input of the constructor
            obj.make = make; 
            
            obj.model = model;
            obj.am = am;
            object.mpg = mpg; 
            
            object.pos = 0; 
          
        end
       
        %This method moves the car by updating it's positition property a
        %certain distance d, specified by the direction +/- 1 
        function obj = drive(obj, d, direction)
            if (abs(direction) == 1) %make sure the direction is valid
                obj.pos = obj.pos + direction * d; %update the position
            else
                disp("Invalid direction, car did not drive")
            end   
        end
       
    end
end