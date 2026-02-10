from pymongo import MongoClient

# Conexión MongoDB
client = MongoClient('mongodb://localhost:27017')

# Base de datos y colección
db = client['practica']
collection = db['productos']

# Change Stream
with collection.watch() as stream:
    print("Escuchando cambios en la colección...")

    # Recorre cada cambio
    for change in stream:
        print("Cambio detectado:", change)

        # Mostrar campos actualizados
        if change['operationType'] == 'update':
            print("Campos actualizados:", change['updateDescription']['updatedFields'])

        # Mostrar documentos insertados
        if change['operationType'] == 'insert':
            print("Documento insertado:", change['fullDocument'])

        # Mostrar documentos eliminados
        if change['operationType'] == 'delete':
            print("Documento eliminado:", change['documentKey'])
