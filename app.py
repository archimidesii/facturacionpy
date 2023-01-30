from fastapi import FastAPI, Query

app = FastAPI()

@app.get("/")
def get_number(limit: int = Query(100, gt=0, lt=101)):
    numbers = list(range(1, limit+1))
    return {"numbers": numbers}
