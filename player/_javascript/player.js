
function playPause() {
    if (document.getElementById('meuvideo').paused)
        document.getElementById('meuvideo').play();
    else
        document.getElementById('meuvideo').pause();
}

function ampliar() {
    document.getElementById('meuvideo').width = 560;
}

function reduzir() {
    document.getElementById('meuvideo').width = 320;
}

function normal() {
    document.getElementById('meuvideo').width = 500;
}

function telaCheia() {
    document.getElementById('meuvideo').requestFullscreen();
}


function volumemais() {
    if (document.getElementById('meuvideo').volume < 1) document.getElementById('meuvideo').volume += 0.1;
}

function volumemenos() {
    if (document.getElementById('meuvideo').volume > 0) document.getElementById('meuvideo').volume -= 0.1;
}

function mute() {
    if (document.getElementById('meuvideo').muted) {
        document.getElementById('meuvideo').muted = false;
    } else {
        document.getElementById('meuvideo').muted = true;
    }
}