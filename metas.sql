SELECT intra_metas.meta_id,intra_metas.meta_indicador,meta_indicador_nome,
       intra_metas.meta_categoria,intra_metas.meta_descricao,
       intra_metas.meta_alvo,intra_metas.meta_observacao,
       intra_metas.meta_campanha,intra_metas.meta_mes,intra_metas.meta_ano,
       intra_metas.meta_unidade,dimen_jfa.tb_dm_campanha.DC_CAMPANHA
FROM intra_metas
INNER JOIN intra_meta_indicador ON intra_metas.meta_indicador = intra_meta_indicador.meta_id
INNER JOIN dimen_jfa.tb_dm_campanha ON intra_metas.meta_campanha = dimen_jfa.tb_dm_campanha.CD_CAMPANHA
WHERE intra_metas.meta_ano = '2015'
    AND intra_metas.meta_mes = '3'
