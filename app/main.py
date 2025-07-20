from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def healthcheck():
    return {"status": "ok"}

# Register the users router
from .routes.users import router as users_router
app.include_router(users_router)