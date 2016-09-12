import sys
sys.path.append("/data")
from generator import generator

def application(env, start_response):
    start_response('200 OK', [('Content-Type','text/html')])
    result = generator("southpark","mongo.adrian-training.local")
    return result
