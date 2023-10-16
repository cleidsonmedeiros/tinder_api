class MatchesController < ApplicationController
    before_action :set_match, except: [:index, :last_match] 

    def index

        @match = Match.all

        render json: @match
    end

    def show

        render json: @match
    end

    def last_match

        @match = Match.last

        render json: @match
    end

    def destroy


        @match.destroy
    end

    private

    def set_match

        @match = Match.find(params[:id])
    end
end
