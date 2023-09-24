<!DOCTYPE html>
<html>

<head>
    <title>HTML5</title>
    <script type="text/javascript">
        function detectBrowserCapabilities() {
            document.getElementById("userAgent").innerHTML = navigator.userAgent;
            var hasWebWorkers = !!window.Worker;
            document.getElementById("workersFlag").innerHTML = "" + hasWebWorkers;
            var hasGeolocation = !!navigator.geolocation;
            document.getElementById("geoFlag").innerHTML = "" + hasGeolocation;
            if (hasGeolocation) {
                navigator.geolocation.getCurrentPosition(function(location) {
                    document.getElementById("geoLat").innerHTML = location.coords.latitude;
                    document.getElementById("geoLong").innerHTML = location.coords.longitude;
                });
            }
            var hasDb = !!window.openDatabase;
            document.getElementById("dbFlag").innerHTML = "" + hasDb;
            var videoElement = document.createElement("video");
            var hasVideo = !!videoElement["canPlayType"];
            var ogg = false;
            var h264 = false;
            if (hasVideo) {
                ogg = videoElement.canPlayType('video/ogg; codecs="theora, vorbis"') || "no";
                h264 = videoElement.canPlayType('video/mp4;codecs="avc1.4vStyle2E01E, mp4a.40.2"') || "no";
            }
            document.getElementById("videoFlag").innerHTML = "" + hasVideo;
            document.getElementById("h264Flag").innerHTML = "" + h264;
            document.getElementById("oggFlag").innerHTML = "" + ogg;
        }
    </script>
</head>
