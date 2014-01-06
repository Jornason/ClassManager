function timetable()  {
var tt = ["Hours","Monday","Tuesday","Wendnesday","Thursday","Friday",
        "8.30-9.25","IKT-2","","1J(B)","IKT-2","",
        "9.25-10.20","4INF","","1K(B)","","4INF",
        "10.20-11.15","2J","4INF","1H","","",
        "11.15-11.45","Atsedenaldia","Atsedenaldia","Atsedenaldia","MB","MB",
        "11.45-12.40","2(B)","IKT-2","4INF","Z","IKT-2",
        "12.40-13.35","1I","","","1I","",
        "13.35-14.30","1H","","2(B)","2J","",
        "14.30-15.20","","","","",""];

    return tt
}

function studentslist(id) {
        id.append( {
              "id": "1k01",
              "name": "Jon",
              "surname": "Crespo Garde",
              "isTicked": "True"
            });
             id.append( {
              "id": "1k02",
              "name": "Alejandro",
              "surname": "Duo Ruiz",
                           "isTicked": "True"
            });
             id.append( {
              "id": "1k03",
              "name": "Joseba",
              "surname": "Echeverri Nagore",
                           "isTicked": "True"
            });
             id.append( {
              "id": "1k04",
              "name": "Nerea",
              "surname": "Elizalde Irazabal",
                           "isTicked": "True"
            });
             id.append( {
              "id": "1k05",
              "name": "Nora",
              "surname": "González Goñi",
                           "isTicked": "True"
            });
             id.append( {
              "id": "1k06",
              "name": "Erik",
              "surname": "Goñi López",
                           "isTicked": "True"
            });
             id.append( {
              "id": "1k07",
              "name": "Eva",
              "surname": "Huarte Castillo",
                           "isTicked": "True"
            });
             id.append( {
              "id": "1k08",
              "name": "Iñigo",
              "surname": "Juanarena Esparza",
                           "isTicked": "True"
            });
             id.append( {
              "id": "1k09",
              "name": "Oihane",
              "surname": "Larraza Ruiz De Larramendi",
                           "isTicked": "True"
            });
             id.append( {
              "id": "1k10",
              "name": "Miriam",
              "surname": "Marticorena Aldaz",
                           "isTicked": "True"
            });
             id.append( {
              "id": "1k11",
              "name": "Leire",
              "surname": "Martinez Merino",
                           "isTicked": "True"
            });
             id.append( {
              "id": "1k12",
              "name": "Unai",
              "surname": "Mata Samitier",
                           "isTicked": "True"
            });
             id.append( {
              "id": "1k13",
              "name": "Oier",
              "surname": "Oroz Esáin",
                           "isTicked": "True"
            });
             id.append( {
              "id": "1k14",
              "name": "Aitor",
              "surname": "Pérez Erramuzpe",
                           "isTicked": "True"
            });
             id.append( {
              "id": "1k15",
              "name": "Airtz",
              "surname": "Romo Pimoulier",
                           "isTicked": "True"
            });
             id.append( {
              "id": "1k16",
              "name": "Ainhize",
              "surname": "Sainz Altuna",
                           "isTicked": "True"
            });
             id.append( {
              "id": "1k17",
              "name": "Oihana",
              "surname": "Santiago Segura",
                           "isTicked": "True"
            });
             id.append( {
              "id": "1k18",
              "name": "Iker",
              "surname": "Sanz Ruiz",
                           "isTicked": "True"
            });
             id.append( {
              "id": "1k19",
              "name": "Ibai",
              "surname": "Solis Amostegui",
                           "isTicked": "True"
            });
             id.append( {
              "id": "1k20",
              "name": "Jon Ander",
              "surname": "Torbisco Hervás",
                           "isTicked": "True"
            });
             id.append( {
              "id": "1k21",
              "name": "Ane",
              "surname": "Unzueta Echavarri",
                           "isTicked": "True"
            });
             id.append( {
              "id": "1k22",
              "name": "Oihane",
              "surname": "Urra Andueza",
                           "isTicked": "True"
            });
             id.append( {
              "id": "1k23",
              "name": "Izaskun",
              "surname": "Urtasun Ibarrola",
                           "isTicked": "True"
            });
             id.append( {
              "id": "1k24",
              "name": "Ellande",
              "surname": "Urtasun Olayzola",
                           "isTicked": "True"
            });
             id.append( {
              "id": "1k25",
              "name": "Haizea",
              "surname": "Urtasun Urtasun",
                           "isTicked": "True"
            });
             id.append( {
              "id": "1k26",
              "name": "Nikolas",
              "surname": "Valencia Salcedo",
                           "isTicked": "True"
            });
             id.append( {
              "id": "1k27",
              "name": "Jon",
              "surname": "Zabalza Ibiricu",
                           "isTicked": "True"
            });
}

function savelist(model){
    for(var i = 0; i < model.count; ++i) {
        console.log(model.get(i).isTicked);
    }
}

function actionlist(id) {
        id.append( {
              "name": "Berandutze",
              "color": "green"
            });

    id.append( {
          "name": "Hitzegin",
          "color": "red"
        });
    id.append( {
          "name": "Lanik ez",
          "color": "blue"
        });
}
