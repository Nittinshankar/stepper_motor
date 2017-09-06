defmodule StepperMotor do
  alias elixirALE.GPIO

  {:ok, a} = GPIO.start_link(4, :output)
  {:ok, b} = GPIO.start_link(17, :output)
  {:ok, c} = GPIO.start_link(27, :output)
  {:ok, d} = GPIO.start_link(22, :output)


  GPIO.write(pid, 0)
  GPIO.write(pid, 0)
  GPIO.write(pid, 0)
  GPIO.write(pid, 0)


  @moduledoc """
  Documentation for StepperMotor.
  """

  @doc """
  Hello world.

  ## Examples

      iex> StepperMotor.hello
      :world

  """
  def right_turn do
      GPIO.write(a, 1)
      GPIO.write(b, 0)
      GPIO.write(c, 0)
      GPIO.write(d, 0)
      :timer.sleep(1)

      GPIO.write(a, 1)
      GPIO.write(b, 1)
      GPIO.write(c, 0)
      GPIO.write(d, 0)
      :timer.sleep(1)

      GPIO.write(a, 0)
      GPIO.write(b, 1)
      GPIO.write(c, 0)
      GPIO.write(d, 0)
      :timer.sleep(1)

      GPIO.write(a, 0)
      GPIO.write(b, 1)
      GPIO.write(c, 1)
      GPIO.write(d, 0)
      :timer.sleep(1)

      GPIO.write(a, 0)
      GPIO.write(b, 0)
      GPIO.write(c, 1)
      GPIO.write(d, 0)
      :timer.sleep(1)

      GPIO.write(a, 0)
      GPIO.write(b, 0)
      GPIO.write(c, 1)
      GPIO.write(d, 1)
      :timer.sleep(1)

      GPIO.write(a, 0)
      GPIO.write(b, 0)
      GPIO.write(c, 0)
      GPIO.write(d, 1)
      :timer.sleep(1)

      GPIO.write(a, 1)
      GPIO.write(b, 0)
      GPIO.write(c, 0)
      GPIO.write(d, 1)
      :timer.sleep(1)
  end

  def left_turn do
    GPIO.write(pid, 1)
    GPIO.write(pid, 0)
    GPIO.write(pid, 0)
    GPIO.write(pid, 1)
    :timer.sleep(1)

    GPIO.write(pid, 0)
    GPIO.write(pid, 0)
    GPIO.write(pid, 0)
    GPIO.write(pid, 1)
    :timer.sleep(1)

    GPIO.write(pid, 0)
    GPIO.write(pid, 0)
    GPIO.write(pid, 1)
    GPIO.write(pid, 1)
    :timer.sleep(1)

    GPIO.write(pid, 0)
    GPIO.write(pid, 0)
    GPIO.write(pid, 1)
    GPIO.write(pid, 0)
    :timer.sleep(1)

    GPIO.write(pid, 0)
    GPIO.write(pid, 1)
    GPIO.write(pid, 1)
    GPIO.write(pid, 0)
    :timer.sleep(1)

    GPIO.write(pid, 0)
    GPIO.write(pid, 1)
    GPIO.write(pid, 0)
    GPIO.write(pid, 0)
    :timer.sleep(1)

    GPIO.write(pid, 1)
    GPIO.write(pid, 1)
    GPIO.write(pid, 0)
    GPIO.write(pid, 0)
    :timer.sleep(1)

    GPIO.write(pid, 1)
    GPIO.write(pid, 0)
    GPIO.write(pid, 0)
    GPIO.write(pid, 0)
    :timer.sleep(1)
  end
end
