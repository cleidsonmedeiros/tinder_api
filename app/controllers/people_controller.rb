class PeopleController < ApplicationController
    
    def index

        @people = Person.all

        render json: @people

    end

    def create

        @person = Person.new(person_params)

        if @person.save 
            render json: @person, status: :created
        else
            render json: { errors: @person.errors.full_messages }, status: :unprocessable_entity
        end

        
    end

    private

    def person_params

        params.require(:person).permit(

                :name, 
                :birthday,
                :gender,
                :bio,
                :location,
                :match_preference,
                :sexual_orientation

            )
    end
end
