const controller = {};

controller.save = (req, res) => {
    const data = req.body;
    req.getConnection((err, connection) => {
      const query = connection.query('INSERT INTO usuarios (id,nombre_usuario,correo,contraseña) values ?', [,data.nombre_usuario,data.correo,data.contraseña], (err, usuario) => {
        res.redirect('/login');
      })
      req.getConnection((err,connection) => {
        const query = connection.query('INSERT INTO docente (id_docente,nombre,apellidos,id_clave)',[data.id,data.nombre,data.apellidos,data.clave],(err,docente) => {
          res.redirect('/login');

        })
      })
    })
  };

  
