select ped.cd_pedido,
       ped.cd_pedido_site,
       bpay.cd_bpay_id,
       pag.dt_pagamento,
       pag.nm_nome_pagamento, pag.*

  from bl_admin.bl_pedido ped

 inner join bl_admin.bl_entrega ent
    on ent.cd_pedido = ped.cd_pedido

 inner join bl_admin.bl_pagamento pag
    on pag.cd_entrega = ent.cd_entrega

 inner join bl_admin.bl_pagamento_bpay bpay
    on bpay.cd_pagamento = pag.cd_pagamento

  left join bl_admin.bl_recebimento r
    on r.cd_recebimento = bpay.cd_recebimento

 where --cd_bpay_id in ('e8cbfd0f-c1e9-4c7c-b04d-6f59996a5e1e')  --- pesquisa pela order
 ped.cd_pedido_site ='02-697421009'  --- pesquisa pelo pedido