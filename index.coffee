module.exports = (uri)->
  @all uri, (req, res, next)->
    headers =[
      name: 'Access-Control-Allow-Origin'
      value: '*'
    ,
      name: 'Access-Control-Allow-Methods'
      value: req.headers['access-control-request-method']
    ,
      name: 'Access-Control-Allow-Headers'
      value: req.headers['access-control-request-headers']
    ]
    for header in headers
      res.header header.name, header.value

    if req.method is 'OPTIONS'
      res.send(200)
    else
      next()

