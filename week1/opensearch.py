from flask import g, current_app
from opensearchpy import OpenSearch

# Create an OpenSearch client instance and put it into Flask shared space for use by the application
def get_opensearch():
    if 'opensearch' not in g:
        # Should load from config, but for simplicity purposes we don't do that in this demo.
        host = 'localhost'
        port = 9200
        auth = ('admin', 'admin') 

        g.opensearch = OpenSearch(
            hosts=[{'host': host, 'port': port}],
            http_compress=True, 
            http_auth=auth,
            use_ssl=True,
            verify_certs=False,
            ssl_assert_hostname=False,
            ssl_show_warn=False,

        )

    return g.opensearch
