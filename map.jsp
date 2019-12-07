<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/leaflet.css" />

        <script src="https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/leaflet.js"></script>
        <script src="https://www.mapquestapi.com/sdk/leaflet/v2.2/mq-map.js?key=lYrP4vF3Uk5zgTiGGuEzQGwGIVDGuy24"></script>
        <script src="https://www.mapquestapi.com/sdk/leaflet/v2.2/mq-routing.js?key=lYrP4vF3Uk5zgTiGGuEzQGwGIVDGuy24"></script>

        <script type="text/javascript">
            window.onload = function() {

                var map,
                    dir;

                map = L.map('map', {
                    layers: MQ.mapLayer(),
                    center: [ 42.658694, -73.602323 ],
                    zoom: 7
                });

                dir = MQ.routing.directions();

                dir.optimizedRoute({
                    locations: [
                        'syracuse ny',
                        'springfield ma',
                        'ithaca ny',
                        'hartford ct'
                    ]
                });

                map.addLayer(MQ.routing.routeLayer({
                    directions: dir,
                    fitBounds: true
                }));
            }
        </script>
    </head>

    <body style='border:0; margin: 0'>
        <div id='map' style='width: 100%; height:530px;'></div>
    </body>
</html>