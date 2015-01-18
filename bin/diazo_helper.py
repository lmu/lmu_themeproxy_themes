import Cookie

from urlparse import parse_qs


class PrintserviceHelperWSGIModule:

    def __init__(self, global_config, app, **localconf):
        self.app = app
        self.global_config = global_config
        self.cookie_key = 'EOPLANGCOK'
        self.value = 'de'

    def __call__(self, environ, start_response):
        raw_cookies = environ.get('HTTP_COOKIE')
        cookies = Cookie.BaseCookie(raw_cookies)
        if self.cookie_key in cookies:
            self.value = cookies.get(self.cookie_key).value
            print 'Extracted Cookie {key}: {value}'.format(
                key=self.cookie_key,
                value=self.value)

        query_string = parse_qs(environ.get('QUERY_STRING'))
        if 'lang' in query_string:
            self.value = query_string.get('lang')[0]
            print 'Extracted Lang from Query-String: {lang}'.format(
                lang=self.value)

        self.app.params['lang'] = self.value

        return self.app(environ, start_response)


def printservice_helper(global_config, app):
    return PrintserviceHelperWSGIModule(app, global_config)
