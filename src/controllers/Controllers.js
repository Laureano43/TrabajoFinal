const databaseConnection=require('../../config/database');

const Todo = (req,res)=>{
    const sql="SELECT * FROM producto" 
        databaseConnection.query(sql,(error,data)=>{

            if(error){
                console.log(error)
            }else{
                res.render('./pages/index',{data
                })
            }
        })
}

const Paletas = (req,res)=>{
    const sql="SELECT * FROM producto where categoria = 'Palas'"
        databaseConnection.query(sql,(error,data)=>{
            if(error){
                console.log(error)
            }else{
                res.render('./pages/index',{data
                })
            }
        })
}

const Remeras = (req,res)=>{
    const sql="SELECT * FROM producto where categoria = 'Remeras'"
        databaseConnection.query(sql,(error,data)=>{
            if(error){
                console.log(error)
            }else{
                res.render('./pages/index',{data
                })
            }
        })
}

const Zapas = (req,res)=>{
    const sql="SELECT * FROM producto where categoria = 'Zapas'"
        databaseConnection.query(sql,(error,data)=>{
            if(error){
                console.log(error)
            }else{
                res.render('./pages/index',{data
                })
            }
        })
}

const RankingVaron = (req,res)=>{
    const sql="SELECT * FROM ranking where genero = 'M'"
    const genero = 'M'
        databaseConnection.query(sql,(error,data)=>{
            if(error){
                console.log(error)
            }else{
                res.render('./pages/ranking',{data,genero
                })
            }
        })
}

const RankingMujer = (req,res)=>{
    const sql="SELECT * FROM ranking where genero = 'F'"
    const genero = 'F'
        databaseConnection.query(sql,(error,data)=>{
            if(error){
                console.log(error)
            }else{
                res.render('./pages/ranking', {data,genero
                })
            }
        })
}

const Ubicacion = (req,res)=>{
                res.render('./pages/ubicacion')
}

const Quienes = (req,res)=>{
    res.render('./pages/quienes')
}

module.exports= {   Todo,
                    Paletas,
                    Remeras,
                    Zapas,
                    RankingVaron,
                    RankingMujer,
                    Ubicacion,
                    Quienes
};