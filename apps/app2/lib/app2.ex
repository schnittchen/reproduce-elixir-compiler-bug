defmodule App2 do
  def view do
    quote do
      use Phoenix.View, root: "lib/app2/templates",
                        namespace: App2
    end
  end

  @doc """
  When used, dispatch to the appropriate controller/view/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
