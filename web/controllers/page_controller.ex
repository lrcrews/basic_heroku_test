defmodule BasicHerokuTest.PageController do
  use BasicHerokuTest.Web, :controller
  use Timex

  def index(conn, _params) do
  	%Timex.DateTime{ month: month, day: day, year: year, hour: hour, minute: minute,
  									 timezone: %Timex.TimezoneInfo { abbreviation: abbreviation } } = Date.local
    render conn, "index.html",
    			 current_datetime_str: "#{month}/#{day}/#{year} #{hour}:#{minute} #{abbreviation}"
  end
end
