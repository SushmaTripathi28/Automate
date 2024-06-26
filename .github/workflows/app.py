import unittest
from app import APP


class Tests(unittest.TestCase):

    def setUp(self):
        self.app = APP.test_client()

    def test_200(self):
        res = self.app.get('/')
        self.assertEqual(res.status, '200 OK')

    def test_404(self):
        res = self.app.get('/null')
        self.assertEqual(res.status, '404 NOT FOUND')


if __name__ == "__main__":
    unittest.main()
