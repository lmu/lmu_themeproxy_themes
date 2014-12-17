def application(environ, start_response):
    from paste.deploy import loadapp
    wsgi_app = loadapp('config:/srv/www/lehrevaluation/proxy_evasys.ini')
    return wsgi_app(environ, start_response)

