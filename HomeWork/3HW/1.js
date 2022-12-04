var t_grad = prompt('Введите температуру в градусах Цельсия', '');

t_far = Math.round(t_grad * 1.8 + 32);
alert(`Градусы Фаренгейта - ${t_far}, Градусы цельсия - ${t_grad}`);