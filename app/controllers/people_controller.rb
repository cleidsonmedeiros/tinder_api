class PeopleController < ApplicationController
    before_action :set_person, only: [:user_profile, :update, :index]
    
    def user_profile

        render json: @person

    end

    def index

        unmatched_people = Person.where.not(id: @person.matches.pluck(:matched_person_id))

        #Match.create(user: current_user, match: person, status: 'Não')

        render json: unmatched_people

    end


    def create

        @person = Person.new(person_params)

        if @person.save 
            render json: @person, status: :created
        else
            render json: { errors: @person.errors.full_messages }, status: :unprocessable_entity
        end

        
    end

    def update

        @person.update(person_params)

        if @person.save
            render json: @person
        else
            render json: { errors: @person.errors.full_messages }, status: :unprocessable_entity
        end

    end

    private

    def set_person

        @person = Person.find(params[:id])

    end

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