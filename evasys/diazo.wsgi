import site
site.addsitedir('/srv/www/lmu_themeproxy_themes/lib/python2.6/site-packages')

def application(environ, start_response):
    from paste.deploy import loadapp
    wsgi_app = loadapp('config:/srv/www/lmu_themeproxy_themes/evasys/diazo.ini')
    return wsgi_app(environ, start_response)

