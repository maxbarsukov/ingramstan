function update_presence() {
    $.ajax({
        url:  '/presence',
        type: 'GET'
    })
}

setInterval(update_presence, 10 * 1000)
