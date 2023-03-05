# Week 1 — App Containerization


Cloned the repo to local environment.

Explored the backend repo

Run the flask app using host and port:

```
flask run --host=127.0.0.1 --port=4567

```

Encountered an error where python wasn't able to find the cors origins.


Was seeing REACT_APP_BACKEND_URL as undefined in the UI, set the value just before calling npm start:

```
REACT_APP_BACKEND_URL = "127.0.0.1:4567" npm start
```

