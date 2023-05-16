from fastapi import FastAPI

app = FastAPI()

@app.get('/')
def index():
    return {'1':'Anish Giri','2':'D Gukesh'}

@app.get('/player/{id}')
def player(id: int):
    return {'player_id':id,'name':'Anish Giri'}

@app.post('/player/{id}/{name}')
def playerinfo(id: int,name:str):
    return {'player_id':id,'name':name}