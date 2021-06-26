window.updatePreview = function (input) {
    if (input.files && input.files[0]) {
        const reader = new FileReader();

        reader.onload = function (e) {
            $('#img_prev')
                .attr('src', e.target.result)
                .width(300)
        };

        reader.readAsDataURL(input.files[0]);
        $('#img_prev').addClass('p-3 border bg-white')
    }
}
