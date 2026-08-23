-- Write your query below

select e.left_operand, e.operator, e.right_operand, 
case e.operator
when '>' then (lv.value > rv.value)
when '<' then (lv.value < rv.value)
when '=' then (lv.value = rv.value)
end as value
from expressions e
join variables lv on e.left_operand = lv.name
join variables rv on e.right_operand = rv.name;