module API
  module V1
    class Players < Grape::API
      include API::V1::Defaults

      resource :players do
        desc "Return all players"
        get "", root: :players do
          Player.all
        end

        desc "Return a player's demo"
        params do
          requires :playerid, type: String, desc: "ID of the player"
        end
        get ":playerid", root: "player" do
          Player.where(playerid: permitted_params[:playerid]).first!
        end
      end
    end
  end
end