select *
from books b 
	join authors a 
	on b.author_id = a.author_id 
	join books_genres bg 
	on b.book_id = bg.book_id 
	join genres g 
	on bg.genre_id = g.genre_id 
	where g.genre_name in ('autobiography', 'history')
	and a.author_name = 'Leo Tolstoy'