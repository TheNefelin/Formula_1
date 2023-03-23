const cars = document.querySelectorAll(".race-speedway .race-car");

if (cars) {
    fetch("/js/simulacion.json")
        .then(data => data.json())
        .then(dt => {
            dt.forEach((lap, lapIndex) => {

                cars.forEach((el, elIndex) => {
                    setTimeout(() => {
                        const pos = lap.pilotos.filter(s => s.idPiloto == elIndex + 1);
                        el.style = `--i:${pos[0].idPiloto - 1};--x:${-pos[0].distancia};`

                        if (!pos[0].isAlive) {
                            el.src = pos[0].auto;
                        }
                    }, 600 * lapIndex);
                });

            })
        });
};
