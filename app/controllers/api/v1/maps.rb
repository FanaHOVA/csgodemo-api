module API
  module V1
    class Maps < Grape::API
      include API::V1::Defaults

      resource :maps do
        desc "Return all maps"
        get "", root: :maps do
          Map.all
        end

        desc "Return a map"
        params do
          requires :gameid, type: String, desc: "gameid of the map"
        end
        get ":gameid", root: "map" do
          Map.where(gameid: permitted_params[:gameid]).first!
        end
      end
    end
  end
end