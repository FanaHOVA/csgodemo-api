module API
  module V1
    class Demos < Grape::API
      include API::V1::Defaults

      resource :demos do
        desc "Return all demos"
        get "", root: :demos do
          Demo.all
        end

        desc "Return a demo by map"
        params do
          requires :gameid, type: String, desc: "Game ID of the map"
        end
        get ":gameid", root: :demos do
          Demo.all.where(gameid: permitted_params[:gameid])
        end

        desc "Return demos by team"
        params do 
          requires :teamid, type: String, desc: "ID of the team"
        end
        get ":teamid", root: :demos do
          Demo.all.where(team1id: permitted_params[:teamid]).first(10)
        end
      end
    end
  end
end