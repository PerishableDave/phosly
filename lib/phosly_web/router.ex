defmodule PhoslyWeb.Router do
  use PhoslyWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhoslyWeb do
    pipe_through :api
  end
end
