import getElements
from flask import Flask, jsonify
from flask_restful import Resource, Api

class Elements(Resource):
    elements = getElements.getElements()

    elements = sorted(elements, key=lambda e: e.number)

    def get(self):
        data = []
        
        for element in self.elements:
            data.append(element.to_dict())
        
        response = jsonify(data)
        response.headers.add("Access-Control-Allow-Origin", "*")
        response.headers.add("Access-Control-Allow-Credentials", "true")
        return response

    pass


app = Flask(__name__)
api = Api(app)

api.add_resource(Elements, '/elements')

if __name__ == '__main__':
    app.run()