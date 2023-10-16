class PeopleController < ApplicationController
    before_action :set_person, except: [:create]
    before_action :set_unmatched_person, except: [:create]
    
    def user_profile

        render json: @person

    end

    def person_to_match

        render json: @unmatched_person

    end

    def create_match

        @match = Match.new(person_id: @person.id, matched_person_id: @unmatched_person.id, status: match_params)

        if @match.save

            render json: @unmatched_person, status: :created
        else

            render json: { errors: @match.errors.full_messages }, status: :unprocessable_entity
        end

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

    def set_unmatched_person

        @unmatched_person = Person.where.not(id: @person.matches.pluck(:matched_person_id) << @person.id).sample

    end

    def person_params

        params.permit(

                :name, 
                :birthday,
                :gender,
                :bio,
                :location,
                :match_preference,
                :sexual_orientation

            )
    end

    def match_params

        params.permit(
            :status

        )
    end

end