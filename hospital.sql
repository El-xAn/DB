select c.name, c.surname, c.[Birth date],bg.blood_group, dn.[Register date], s.category, s.name, s.surname, t.Treatment, rs.[Reception status] from client as c 
join doctor_note as dn on dn.Client=c.id
join Staff as s on dn.Doctor = s.id
join blood_group as bg on c.[Blood group]=bg.blood_group
join treatment as t on t.id=dn.Treatment
join reception_status as rs on rs.id=dn.[Reception status]
