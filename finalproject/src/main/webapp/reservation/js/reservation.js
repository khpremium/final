var one = 0;
var two = 0;

$(document).ready(function() {
	/*$('#dept table').append('<tr><td>아시아나</td><td>k702</td><td>201903080915</td><td>201903081215</td><td>300000</td><td>50</td><td><input type="radio" name="aa" value="1" /></td></tr>');
	$('#dept table').append('<tr><td>대한항공</td><td>k701</td><td>201903081215</td><td>201903081515</td><td>310000</td><td>50</td><td><input type="radio" name="aa" value="2" /></td></tr>');
	$('#arrv table').append('<tr><td class="airline">대한항공</td><td>hd600</td><td>201903121530</td><td>201903121830</td><td>320000</td><td>41</td><td><input type="radio" name="bb" value="1" /></td></tr>');
	$('#arrv table').append('<tr><td class="airline">아시아나</td><td>hd600</td><td>201903121530</td><td>201903121830</td><td>330000</td><td>41</td><td><input type="radio" name="bb" value="2" /></td></tr>');*/
	
	$('#cancel').on('click', function() {
		location.href="main.do";
	});
	
	$(document).on('click', 'table input[name="aa"]', test);
	$(document).on('click', 'table input[name="bb"]', test2);
});

function test() {
	console.log($('input[name="aa"]').index(this));
	console.log(p_count);
	var parent = $(this).parent().parent();
	var num = Number($(parent).children('td:eq(4)').text());
	// alert($(parent).children('td:eq(0)').text());
	if(one == 0) {
		if(two == 0) {
			$('.dep_airinfo_flight').text($(parent).children('td:eq(1)').text());
			$('.price').text(num);
			$('.totalPrice').text(num * p_count);
		} else {
			var currNum = Number($('.price').text());
			$('.dep_airinfo_flight').text($(parent).children('td:eq(1)').text());
			$('.price').text(currNum + num);
			$('.totalPrice').text((currNum * p_count) + (num * p_count));
		}
	} else {
		var currNum = Number($('.price').text());
		$('.dep_airinfo_flight').text($(parent).children('td:eq(1)').text());
		$('.price').text(currNum - one + num);
		$('.totalPrice').text((currNum * p_count) - (one * p_count) + (num * p_count));
	}
	one = num;
}

function test2() {
	console.log($(this).index());
	var parent = $(this).parent().parent();
	var num = Number($(parent).children('td:eq(4)').text());
	if(two == 0) {
		if(one == 0) {
			$('.arv_airinfo_flight').text($(parent).children('td:eq(1)').text());
			$('.price').text(num);
			$('.totalPrice').text(num * p_count);
		} else {
			var currNum = Number($('.price').text());
			$('.arv_airinfo_flight').text($(parent).children('td:eq(1)').text());
			$('.price').text(currNum + num);
			$('.totalPrice').text((currNum * p_count) + (num * p_count));
		}
	} else {
		var currNum = Number($('.price').text());
		$('.arv_airinfo_flight').text($(parent).children('td:eq(1)').text());
		$('.price').text(currNum - two + num);
		$('.totalPrice').text((currNum * p_count) - (two * p_count) + (num * p_count));
	}
	two = num;
}