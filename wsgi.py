from sc import generator

def application(env, start_response):
    start_response('200 OK', [('Content-Type','text/html')])
    result = generator("southpark","10.252.1.40")
    return result
