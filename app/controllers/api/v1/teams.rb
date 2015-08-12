module API
  module V1
    class Teams < Grape::API
      include API::V1::Defaults

      resource :teams do
        desc "Return all teams"
        get "", root: :teams do
          Team.all
        end

        desc "Return a team demo"
        params do
          requires :teamid, type: String, desc: "ID of the team"
        end
        get ":teamid", root: "team" do
          Team.where(teamid: permitted_params[:teamid]).first!
        end
      end
    end
  end
end