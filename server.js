'use strict';

var express = require('express'),
    app     = express()


app.get('/:id', function (request, response) {
	response.send(request.params.id + ' - description')
})

app.listen(3000)
