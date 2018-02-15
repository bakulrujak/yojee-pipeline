defmodule YojeeChatExampleWeb.PageControllerTest do
  use YojeeChatExampleWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Hello Yojee!"
  end
end
