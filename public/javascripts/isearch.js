var ISearch = ISearch || {};

ISearch.setup = function(textfield, callback, options) {
    var timer = null, lastInput = '';

    wait = 500;
    minLength = 0;
    if (options !== undefined) {
        wait = options.wait;
        minLength = options.minLength;
    }

    textfield.on('keyup', function() {
		var elem = $(this);
        var input = $.trim(elem.val());
        if (lastInput !== input && input.length >= minLength) {
            clearTimeout(timer);
            timer = setTimeout(function() {
                callback(elem, input);
            }, wait);
        }
        lastInput = input;
    });
};
