from fastapi import FastAPI
import uvicorn
app = FastAPI(title="Fast API on Docker",version="1.0.0")

@app.get("/")
def welcome():
    return "Welcome to Fast api app powered by Docker and EC2"
