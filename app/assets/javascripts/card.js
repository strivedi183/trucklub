function fill_card()
{
  var x = $('#boxes').children();
  var y = _.first(x, meal_count);
  _.each(y, add_card_class);
}

function add_card_class(index)
{
  $(index).addClass('full');
}

function is_card_full()
{
  if (meal_count === 10)
  {
    $('#myModal').foundation('reveal', 'open');
  }
}
