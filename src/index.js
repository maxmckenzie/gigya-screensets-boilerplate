import express from 'express'
import path from 'path'
const app = express()

app.use('/public', express.static(process.cwd() + '/public'))

app.get('/', function (req, res) {
  res.sendFile(process.cwd() + '/index.html')
})

const port = process.env.PORT || 3000

app.listen(port, function() {
  console.log('running on http://localhost:' + port)
})
