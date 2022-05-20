defmodule ExMon.Player do
  @required_keys [:life, :name, :moves]
  @max_life 100 # variável de modulo

  @enforce_keys @required_keys # define parametros obrigatorios para struct
  defstruct @required_keys

  def build(name, move_rnd, move_avg, move_heal) do
    %ExMon.Player{
      life: @max_life,
      moves: %{
        move_avg: move_avg,
        move_heal: move_heal,
        move_rnd: move_rnd
      },
      name: name
    }
  end
end
