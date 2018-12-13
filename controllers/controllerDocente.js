const controller = {};

controller.save = (req, res) => {
    const data = req.body;
    req.getConnection((err, connection) => {
      const query = connection.query('INSERT INTO docente set ?', [data], (err, docente) => {
         res.send('funciona');
      })
    })
  };