wc-cors
=======

Installation:

```
npm --save install wc-cors
```

Project file "server/api/{name}/index.js"
- your api name

```
  router.cors = require('wc-cors');
  router.cors('/*');
```

Careful! Can be security issues
