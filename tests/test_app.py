from app import app


def test_hello_world():
    response = app.test_client().get("/")

    assert response.status_code == 200
    assert response.data.decode('utf-8') == "Hello, World! I can multiply any integer number by two at route: /multiply/{number}"

def test_multiply():
    response = app.test_client().get("/multiply/2")

    assert response.status_code == 200
    assert response.data.decode('utf-8') == "4\n"
