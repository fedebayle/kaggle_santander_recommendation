CREATE DATABASE santander_product_recommendation;

USE santander_product_recommendation;

CREATE TABLE santander_product_recommendation.monthly_data (
            fecha_dato date,
            ncodpers decimal(7,0),
            ind_empleado char(1),
            pais_residencia char(50),
            sexo char(1),
            age decimal(2,0),
            fecha_alta date,
            ind_nuevo int(1),
            antiguedad int(1),
            indrel int(2),
            ult_fec_cli_1t date,
            indrel_1mes int(1),
            tiprel_1mes char(1),
            indresi char(1),
            indext char(1),
            conyuemp int(1),
            canal_entrada char(50),
            indfall char(1),
            tipodom int(1),
            cod_prov int(2),
            nomprov char(50),
            ind_actividad_cliente int(1),
            renta decimal(10,2),
            segmento char(30),
            ind_ahor_fin_ult1 int(1),
            ind_aval_fin_ult1 int(1),
            ind_cco_fin_ult1 int(1),
            ind_cder_fin_ult1 int(1),
            ind_cno_fin_ult1 int(1),
            ind_ctju_fin_ult1 int(1),
            ind_ctma_fin_ult1 int(1),
            ind_ctop_fin_ult1 int(1),
            ind_ctpp_fin_ult1 int(1),
            ind_deco_fin_ult1 int(1),
            ind_deme_fin_ult1 int(1),
            ind_dela_fin_ult1 int(1),
            ind_ecue_fin_ult1 int(1),
            ind_fond_fin_ult1 int(1),
            ind_hip_fin_ult1 int(1),
            ind_plan_fin_ult1 int(1),
            ind_pres_fin_ult1 int(1),
            ind_reca_fin_ult1 int(1),
            ind_tjcr_fin_ult1 int(1),
            ind_valo_fin_ult1 int(1),
            ind_viv_fin_ult1 int(1),
            ind_nomina_ult1 int(1),
            ind_nom_pens_ult1 int(1),
            ind_recibo_ult1 int(1),
	    PRIMARY KEY(fecha_dato, ncodpers)
   );

LOAD DATA local infile  'train_ver2.csv'
INTO TABLE santander_product_recommendation.monthly_data 
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 lines
;
