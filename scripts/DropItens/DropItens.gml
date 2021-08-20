// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DropItems(x, y, itens){
	var _items = array_length_1d(itens);
	
	if (_items > 1)
	{
		var _anglePerItem = 360 / _items;
		var _angle = random(360);
		for (var i = 0; i < _items; i++)
		{
			with (instance_create_layer(x, y, "Enemys", itens[i]))
			{
				direction = _angle;
				spd = 0.3 + (_items * 0.1) + random(0.1);
			}
			_angle += _anglePerItem;
		}
		
	}else instance_create_layer(x, y, "Enemys", itens[0]);
}