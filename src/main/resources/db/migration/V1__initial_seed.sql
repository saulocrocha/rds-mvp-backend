SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 7 (class 2615 OID 16896)
-- Name: grl; Type: SCHEMA; Schema: -; Owner: master_user
--

CREATE SCHEMA grl;


ALTER SCHEMA grl OWNER TO master_user;

--
-- TOC entry 4915 (class 0 OID 0)
-- Dependencies: 7
-- Name: SCHEMA grl; Type: COMMENT; Schema: -; Owner: master_user
--

COMMENT ON SCHEMA grl IS 'Schema de tabelas gerais da Somos Health Tech';


--
-- TOC entry 6 (class 2615 OID 16442)
-- Name: rds; Type: SCHEMA; Schema: -; Owner: master_user
--

CREATE SCHEMA rds;


ALTER SCHEMA rds OWNER TO master_user;

--
-- TOC entry 4917 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA rds; Type: COMMENT; Schema: -; Owner: master_user
--

COMMENT ON SCHEMA rds IS 'Schema da Rede Somos';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 259 (class 1259 OID 17017)
-- Name: tb_cbo; Type: TABLE; Schema: grl; Owner: master_user
--

CREATE TABLE grl.tb_cbo (
    cd_cbo character varying(8) NOT NULL,
    ds_cbo character varying(100) NOT NULL
);


ALTER TABLE grl.tb_cbo OWNER TO master_user;

--
-- TOC entry 4918 (class 0 OID 0)
-- Dependencies: 259
-- Name: TABLE tb_cbo; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON TABLE grl.tb_cbo IS 'Tabela de Classificação Brasileira de Ocupações (CBO)';


--
-- TOC entry 4919 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN tb_cbo.cd_cbo; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON COLUMN grl.tb_cbo.cd_cbo IS 'Código da CBO';


--
-- TOC entry 4920 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN tb_cbo.ds_cbo; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON COLUMN grl.tb_cbo.ds_cbo IS 'Descrição da CBO';


--
-- TOC entry 260 (class 1259 OID 17032)
-- Name: tb_cid; Type: TABLE; Schema: grl; Owner: master_user
--

CREATE TABLE grl.tb_cid (
    cd_cid character varying(4) NOT NULL,
    ds_cid character varying(100) NOT NULL
);


ALTER TABLE grl.tb_cid OWNER TO master_user;

--
-- TOC entry 4921 (class 0 OID 0)
-- Dependencies: 260
-- Name: TABLE tb_cid; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON TABLE grl.tb_cid IS 'Tabela de Classificação Internacional de Doenças (CID)';


--
-- TOC entry 4922 (class 0 OID 0)
-- Dependencies: 260
-- Name: COLUMN tb_cid.cd_cid; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON COLUMN grl.tb_cid.cd_cid IS 'Código do CID';


--
-- TOC entry 4923 (class 0 OID 0)
-- Dependencies: 260
-- Name: COLUMN tb_cid.ds_cid; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON COLUMN grl.tb_cid.ds_cid IS 'Descrição do CID';


--
-- TOC entry 262 (class 1259 OID 17054)
-- Name: tb_especialidade; Type: TABLE; Schema: grl; Owner: master_user
--

CREATE TABLE grl.tb_especialidade (
    cd_especialidade bigint NOT NULL,
    ds_especialidade character varying(100) NOT NULL
);


ALTER TABLE grl.tb_especialidade OWNER TO master_user;

--
-- TOC entry 4924 (class 0 OID 0)
-- Dependencies: 262
-- Name: TABLE tb_especialidade; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON TABLE grl.tb_especialidade IS 'Tabela de especialidades';


--
-- TOC entry 4925 (class 0 OID 0)
-- Dependencies: 262
-- Name: COLUMN tb_especialidade.cd_especialidade; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON COLUMN grl.tb_especialidade.cd_especialidade IS 'Código da especialidade';


--
-- TOC entry 4926 (class 0 OID 0)
-- Dependencies: 262
-- Name: COLUMN tb_especialidade.ds_especialidade; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON COLUMN grl.tb_especialidade.ds_especialidade IS 'Descrição da especialidade';


--
-- TOC entry 261 (class 1259 OID 17053)
-- Name: tb_especialidade_seq; Type: SEQUENCE; Schema: grl; Owner: master_user
--
CREATE SEQUENCE grl.tb_especialidade_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE grl.tb_especialidade ALTER COLUMN cd_especialidade SET DEFAULT nextval('grl.tb_especialidade_seq'::regclass);


ALTER SEQUENCE grl.tb_especialidade_seq OWNER TO master_user;


--
-- TOC entry 252 (class 1259 OID 16924)
-- Name: tb_genero; Type: TABLE; Schema: grl; Owner: master_user
--

CREATE TABLE grl.tb_genero (
    cd_genero integer NOT NULL,
    ds_genero character varying(50) NOT NULL
);


ALTER TABLE grl.tb_genero OWNER TO master_user;

--
-- TOC entry 4927 (class 0 OID 0)
-- Dependencies: 252
-- Name: TABLE tb_genero; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON TABLE grl.tb_genero IS 'Tabela de Gênero';


--
-- TOC entry 4928 (class 0 OID 0)
-- Dependencies: 252
-- Name: COLUMN tb_genero.cd_genero; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON COLUMN grl.tb_genero.cd_genero IS 'Código do Gênero';


--
-- TOC entry 4929 (class 0 OID 0)
-- Dependencies: 252
-- Name: COLUMN tb_genero.ds_genero; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON COLUMN grl.tb_genero.ds_genero IS 'Descrição do Gênero';


--
-- TOC entry 251 (class 1259 OID 16923)
-- Name: tb_genero_seq; Type: SEQUENCE; Schema: grl; Owner: master_user
--

CREATE SEQUENCE grl.tb_genero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE grl.tb_genero ALTER COLUMN cd_genero SET DEFAULT nextval('grl.tb_genero_seq'::regclass);


ALTER SEQUENCE grl.tb_genero_seq OWNER TO master_user;

--
-- TOC entry 4930 (class 0 OID 0)
-- Dependencies: 251
-- Name: tb_genero_seq; Type: SEQUENCE OWNED BY; Schema: grl; Owner: master_user
--

ALTER SEQUENCE grl.tb_genero_seq OWNED BY grl.tb_genero.cd_genero;


--
-- TOC entry 254 (class 1259 OID 16931)
-- Name: tb_grau_instrucao; Type: TABLE; Schema: grl; Owner: master_user
--

CREATE TABLE grl.tb_grau_instrucao (
    cd_grau_instrucao integer NOT NULL,
    ds_grau_instrucao character varying(50) NOT NULL
);


ALTER TABLE grl.tb_grau_instrucao OWNER TO master_user;

--
-- TOC entry 4931 (class 0 OID 0)
-- Dependencies: 254
-- Name: TABLE tb_grau_instrucao; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON TABLE grl.tb_grau_instrucao IS 'Tabela de Grau de Instrução';


--
-- TOC entry 4932 (class 0 OID 0)
-- Dependencies: 254
-- Name: COLUMN tb_grau_instrucao.cd_grau_instrucao; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON COLUMN grl.tb_grau_instrucao.cd_grau_instrucao IS 'Código do Grau de Instrução';


--
-- TOC entry 4933 (class 0 OID 0)
-- Dependencies: 254
-- Name: COLUMN tb_grau_instrucao.ds_grau_instrucao; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON COLUMN grl.tb_grau_instrucao.ds_grau_instrucao IS 'Descrição do Grau de Instrução';


--
-- TOC entry 253 (class 1259 OID 16930)
-- Name: tb_grau_instrucao_seq; Type: SEQUENCE; Schema: grl; Owner: master_user
--

CREATE SEQUENCE grl.tb_grau_instrucao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE grl.tb_grau_instrucao ALTER COLUMN cd_grau_instrucao SET DEFAULT nextval('grl.tb_grau_instrucao_seq'::regclass);

ALTER SEQUENCE grl.tb_grau_instrucao_seq OWNER TO master_user;

--
-- TOC entry 4934 (class 0 OID 0)
-- Dependencies: 253
-- Name: tb_grau_instrucao_seq; Type: SEQUENCE OWNED BY; Schema: grl; Owner: master_user
--

ALTER SEQUENCE grl.tb_grau_instrucao_seq OWNED BY grl.tb_grau_instrucao.cd_grau_instrucao;


--
-- TOC entry 256 (class 1259 OID 16938)
-- Name: tb_nacionalidade; Type: TABLE; Schema: grl; Owner: master_user
--

CREATE TABLE grl.tb_nacionalidade (
    cd_nacionalidade integer NOT NULL,
    ds_nacionalidade character varying(50) NOT NULL
);


ALTER TABLE grl.tb_nacionalidade OWNER TO master_user;

--
-- TOC entry 4935 (class 0 OID 0)
-- Dependencies: 256
-- Name: TABLE tb_nacionalidade; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON TABLE grl.tb_nacionalidade IS 'Tabela de Nacionalidade';


--
-- TOC entry 4936 (class 0 OID 0)
-- Dependencies: 256
-- Name: COLUMN tb_nacionalidade.cd_nacionalidade; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON COLUMN grl.tb_nacionalidade.cd_nacionalidade IS 'Código da Nacionalidade';


--
-- TOC entry 4937 (class 0 OID 0)
-- Dependencies: 256
-- Name: COLUMN tb_nacionalidade.ds_nacionalidade; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON COLUMN grl.tb_nacionalidade.ds_nacionalidade IS 'Descrição da Nacionalidade';


--
-- TOC entry 255 (class 1259 OID 16937)
-- Name: tb_nacionalidade_seq; Type: SEQUENCE; Schema: grl; Owner: master_user
--

CREATE SEQUENCE grl.tb_nacionalidade_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE grl.tb_nacionalidade ALTER COLUMN cd_nacionalidade SET DEFAULT nextval('grl.tb_nacionalidade_seq'::regclass);

ALTER SEQUENCE grl.tb_nacionalidade_seq OWNER TO master_user;

--
-- TOC entry 4938 (class 0 OID 0)
-- Dependencies: 255
-- Name: tb_nacionalidade_seq; Type: SEQUENCE OWNED BY; Schema: grl; Owner: master_user
--

ALTER SEQUENCE grl.tb_nacionalidade_seq OWNED BY grl.tb_nacionalidade.cd_nacionalidade;


--
-- TOC entry 246 (class 1259 OID 16903)
-- Name: tb_orgao_emissor; Type: TABLE; Schema: grl; Owner: master_user
--

CREATE TABLE grl.tb_orgao_emissor (
    cd_oe integer NOT NULL,
    ds_oe character varying(100) NOT NULL,
    ds_oe_resumido character varying(10)
);


ALTER TABLE grl.tb_orgao_emissor OWNER TO master_user;

--
-- TOC entry 4939 (class 0 OID 0)
-- Dependencies: 246
-- Name: TABLE tb_orgao_emissor; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON TABLE grl.tb_orgao_emissor IS 'Tabela de Órgãos Emissores';


--
-- TOC entry 4940 (class 0 OID 0)
-- Dependencies: 246
-- Name: COLUMN tb_orgao_emissor.cd_oe; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON COLUMN grl.tb_orgao_emissor.cd_oe IS 'Código do Órgão Emissor';


--
-- TOC entry 4941 (class 0 OID 0)
-- Dependencies: 246
-- Name: COLUMN tb_orgao_emissor.ds_oe; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON COLUMN grl.tb_orgao_emissor.ds_oe IS 'Descrição do Órgão Emissor';


--
-- TOC entry 4942 (class 0 OID 0)
-- Dependencies: 246
-- Name: COLUMN tb_orgao_emissor.ds_oe_resumido; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON COLUMN grl.tb_orgao_emissor.ds_oe_resumido IS 'Descrição Resumida do Órgão Emissor';


--
-- TOC entry 245 (class 1259 OID 16902)
-- Name: tb_orgao_emissor_seq; Type: SEQUENCE; Schema: grl; Owner: master_user
--

CREATE SEQUENCE grl.tb_orgao_emissor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE grl.tb_orgao_emissor ALTER COLUMN cd_oe SET DEFAULT nextval('grl.tb_orgao_emissor_seq'::regclass);

ALTER SEQUENCE grl.tb_orgao_emissor_seq OWNER TO master_user;

--
-- TOC entry 4943 (class 0 OID 0)
-- Dependencies: 245
-- Name: tb_orgao_emissor_seq; Type: SEQUENCE OWNED BY; Schema: grl; Owner: master_user
--

ALTER SEQUENCE grl.tb_orgao_emissor_seq OWNED BY grl.tb_orgao_emissor.cd_oe;


--
-- TOC entry 250 (class 1259 OID 16917)
-- Name: tb_raca; Type: TABLE; Schema: grl; Owner: master_user
--

CREATE TABLE grl.tb_raca (
    cd_raca integer NOT NULL,
    ds_raca character varying(50) NOT NULL
);


ALTER TABLE grl.tb_raca OWNER TO master_user;

--
-- TOC entry 4944 (class 0 OID 0)
-- Dependencies: 250
-- Name: TABLE tb_raca; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON TABLE grl.tb_raca IS 'Tabela de Raça';


--
-- TOC entry 4945 (class 0 OID 0)
-- Dependencies: 250
-- Name: COLUMN tb_raca.cd_raca; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON COLUMN grl.tb_raca.cd_raca IS 'Código da Raça';


--
-- TOC entry 4946 (class 0 OID 0)
-- Dependencies: 250
-- Name: COLUMN tb_raca.ds_raca; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON COLUMN grl.tb_raca.ds_raca IS 'Descrição da Raça';


--
-- TOC entry 249 (class 1259 OID 16916)
-- Name: tb_raca_seq; Type: SEQUENCE; Schema: grl; Owner: master_user
--

CREATE SEQUENCE grl.tb_raca_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE grl.tb_raca ALTER COLUMN cd_raca SET DEFAULT nextval('grl.tb_raca_seq'::regclass);


ALTER SEQUENCE grl.tb_raca_seq OWNER TO master_user;

--
-- TOC entry 4947 (class 0 OID 0)
-- Dependencies: 249
-- Name: tb_raca_seq; Type: SEQUENCE OWNED BY; Schema: grl; Owner: master_user
--

ALTER SEQUENCE grl.tb_raca_seq OWNED BY grl.tb_raca.cd_raca;


--
-- TOC entry 258 (class 1259 OID 16945)
-- Name: tb_religiao; Type: TABLE; Schema: grl; Owner: master_user
--

CREATE TABLE grl.tb_religiao (
    cd_religiao integer NOT NULL,
    ds_religiao character varying(50) NOT NULL
);


ALTER TABLE grl.tb_religiao OWNER TO master_user;

--
-- TOC entry 4948 (class 0 OID 0)
-- Dependencies: 258
-- Name: TABLE tb_religiao; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON TABLE grl.tb_religiao IS 'Tabela de Religião';


--
-- TOC entry 4949 (class 0 OID 0)
-- Dependencies: 258
-- Name: COLUMN tb_religiao.cd_religiao; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON COLUMN grl.tb_religiao.cd_religiao IS 'Código da Religião';


--
-- TOC entry 4950 (class 0 OID 0)
-- Dependencies: 258
-- Name: COLUMN tb_religiao.ds_religiao; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON COLUMN grl.tb_religiao.ds_religiao IS 'Descrição da Religião';


--
-- TOC entry 257 (class 1259 OID 16944)
-- Name: tb_religiao_seq; Type: SEQUENCE; Schema: grl; Owner: master_user
--

CREATE SEQUENCE grl.tb_religiao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE grl.tb_religiao ALTER COLUMN cd_religiao SET DEFAULT nextval('grl.tb_religiao_seq'::regclass);


ALTER SEQUENCE grl.tb_religiao_seq OWNER TO master_user;

--
-- TOC entry 4951 (class 0 OID 0)
-- Dependencies: 257
-- Name: tb_religiao_seq; Type: SEQUENCE OWNED BY; Schema: grl; Owner: master_user
--

ALTER SEQUENCE grl.tb_religiao_seq OWNED BY grl.tb_religiao.cd_religiao;


--
-- TOC entry 248 (class 1259 OID 16910)
-- Name: tb_sexo; Type: TABLE; Schema: grl; Owner: master_user
--

CREATE TABLE grl.tb_sexo (
    cd_sexo integer NOT NULL,
    ds_sexo character varying(50) NOT NULL
);


ALTER TABLE grl.tb_sexo OWNER TO master_user;

--
-- TOC entry 4952 (class 0 OID 0)
-- Dependencies: 248
-- Name: TABLE tb_sexo; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON TABLE grl.tb_sexo IS 'Tabela de Sexo';


--
-- TOC entry 4953 (class 0 OID 0)
-- Dependencies: 248
-- Name: COLUMN tb_sexo.cd_sexo; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON COLUMN grl.tb_sexo.cd_sexo IS 'Código do Sexo';


--
-- TOC entry 4954 (class 0 OID 0)
-- Dependencies: 248
-- Name: COLUMN tb_sexo.ds_sexo; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON COLUMN grl.tb_sexo.ds_sexo IS 'Descrição do Sexo';


--
-- TOC entry 247 (class 1259 OID 16909)
-- Name: tb_sexo_seq; Type: SEQUENCE; Schema: grl; Owner: master_user
--

CREATE SEQUENCE grl.tb_sexo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE grl.tb_sexo ALTER COLUMN cd_sexo SET DEFAULT nextval('grl.tb_sexo_seq'::regclass);


ALTER SEQUENCE grl.tb_sexo_seq OWNER TO master_user;

--
-- TOC entry 4955 (class 0 OID 0)
-- Dependencies: 247
-- Name: tb_sexo_seq; Type: SEQUENCE OWNED BY; Schema: grl; Owner: master_user
--

ALTER SEQUENCE grl.tb_sexo_seq OWNED BY grl.tb_sexo.cd_sexo;


--
-- TOC entry 244 (class 1259 OID 16897)
-- Name: tb_uf; Type: TABLE; Schema: grl; Owner: master_user
--

CREATE TABLE grl.tb_uf (
    cd_uf character varying(2) NOT NULL,
    ds_uf character varying(50) NOT NULL
);


ALTER TABLE grl.tb_uf OWNER TO master_user;

--
-- TOC entry 4956 (class 0 OID 0)
-- Dependencies: 244
-- Name: TABLE tb_uf; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON TABLE grl.tb_uf IS 'Tabela de Unidades Federativas';


--
-- TOC entry 4957 (class 0 OID 0)
-- Dependencies: 244
-- Name: COLUMN tb_uf.cd_uf; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON COLUMN grl.tb_uf.cd_uf IS 'Código da Unidade Federativa';


--
-- TOC entry 4958 (class 0 OID 0)
-- Dependencies: 244
-- Name: COLUMN tb_uf.ds_uf; Type: COMMENT; Schema: grl; Owner: master_user
--

COMMENT ON COLUMN grl.tb_uf.ds_uf IS 'Descrição da Unidade Federativa';


--
-- TOC entry 363 (class 1259 OID 18847)
-- Name: tb_atd_prontuario_cid; Type: TABLE; Schema: rds; Owner: master_user
--

CREATE TABLE rds.tb_atd_prontuario_cid (
    cd_atendimento bigint NOT NULL,
    cd_prontuario bigint NOT NULL,
    cd_cid character varying(4) NOT NULL,
    tx_observacao text
);


ALTER TABLE rds.tb_atd_prontuario_cid OWNER TO master_user;

--
-- TOC entry 4959 (class 0 OID 0)
-- Dependencies: 363
-- Name: COLUMN tb_atd_prontuario_cid.cd_atendimento; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_atd_prontuario_cid.cd_atendimento IS 'Código do atendimento';


--
-- TOC entry 4960 (class 0 OID 0)
-- Dependencies: 363
-- Name: COLUMN tb_atd_prontuario_cid.cd_prontuario; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_atd_prontuario_cid.cd_prontuario IS 'Código do prontuário médico';


--
-- TOC entry 4961 (class 0 OID 0)
-- Dependencies: 363
-- Name: COLUMN tb_atd_prontuario_cid.cd_cid; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_atd_prontuario_cid.cd_cid IS 'Código do CID';


--
-- TOC entry 4962 (class 0 OID 0)
-- Dependencies: 363
-- Name: COLUMN tb_atd_prontuario_cid.tx_observacao; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_atd_prontuario_cid.tx_observacao IS 'Texto livre de observação do usuário';


--
-- TOC entry 362 (class 1259 OID 18813)
-- Name: tb_atendimento_prontuario; Type: TABLE; Schema: rds; Owner: master_user
--

CREATE TABLE rds.tb_atendimento_prontuario (
    cd_atendimento bigint NOT NULL,
    cd_prontuario bigint NOT NULL,
    cd_pessoa bigint NOT NULL,
    cd_tratamento bigint NOT NULL,
    tp_status character(2) NOT NULL,
    cd_profissional bigint NOT NULL,
    cd_agenda bigint,
    dh_atendimento timestamp without time zone,
    tx_meu_espaco text,
    cd_especialidade_principal bigint,
    CONSTRAINT tb_atendimento_prontuario_tp_status_check CHECK ((tp_status = ANY (ARRAY['AG'::bpchar, 'CN'::bpchar, 'AT'::bpchar, 'PD'::bpchar])))
);


ALTER TABLE rds.tb_atendimento_prontuario OWNER TO master_user;

--
-- TOC entry 4963 (class 0 OID 0)
-- Dependencies: 362
-- Name: COLUMN tb_atendimento_prontuario.cd_atendimento; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_atendimento_prontuario.cd_atendimento IS 'Código do atendimento';


--
-- TOC entry 4964 (class 0 OID 0)
-- Dependencies: 362
-- Name: COLUMN tb_atendimento_prontuario.cd_prontuario; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_atendimento_prontuario.cd_prontuario IS 'Código do prontuário pessoal do paciente';


--
-- TOC entry 4965 (class 0 OID 0)
-- Dependencies: 362
-- Name: COLUMN tb_atendimento_prontuario.cd_pessoa; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_atendimento_prontuario.cd_pessoa IS 'Código da pessoa';


--
-- TOC entry 4966 (class 0 OID 0)
-- Dependencies: 362
-- Name: COLUMN tb_atendimento_prontuario.cd_tratamento; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_atendimento_prontuario.cd_tratamento IS 'Código do tratamento';


--
-- TOC entry 4967 (class 0 OID 0)
-- Dependencies: 362
-- Name: COLUMN tb_atendimento_prontuario.tp_status; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_atendimento_prontuario.tp_status IS 'Tipo do status do atendimento/consulta';


--
-- TOC entry 4968 (class 0 OID 0)
-- Dependencies: 362
-- Name: COLUMN tb_atendimento_prontuario.cd_profissional; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_atendimento_prontuario.cd_profissional IS 'Código do profissional';


--
-- TOC entry 4969 (class 0 OID 0)
-- Dependencies: 362
-- Name: COLUMN tb_atendimento_prontuario.cd_agenda; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_atendimento_prontuario.cd_agenda IS 'Código da agenda (quando houver relação)';


--
-- TOC entry 4970 (class 0 OID 0)
-- Dependencies: 362
-- Name: COLUMN tb_atendimento_prontuario.dh_atendimento; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_atendimento_prontuario.dh_atendimento IS 'Data e hora do atendimento ou agendamento';


--
-- TOC entry 4971 (class 0 OID 0)
-- Dependencies: 362
-- Name: COLUMN tb_atendimento_prontuario.tx_meu_espaco; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_atendimento_prontuario.tx_meu_espaco IS 'Texto livre do usuário';


--
-- TOC entry 4972 (class 0 OID 0)
-- Dependencies: 362
-- Name: COLUMN tb_atendimento_prontuario.cd_especialidade_principal; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_atendimento_prontuario.cd_especialidade_principal IS 'Código da especialidade principal do profissional';


--
-- TOC entry 242 (class 1259 OID 16816)
-- Name: tb_organizacao; Type: TABLE; Schema: rds; Owner: master_user
--

CREATE TABLE rds.tb_organizacao (
    cd_organizacao bigint NOT NULL,
    nm_organizacao character varying(70) NOT NULL,
    logotipo bytea,
    tp_organizacao character(1),
    cd_cnpj character varying(14),
    cd_pessoa_representante bigint,
    CONSTRAINT tb_organizacao_tp_organizacao_check CHECK ((tp_organizacao = ANY (ARRAY['G'::bpchar, 'C'::bpchar, 'A'::bpchar, 'O'::bpchar, 'F'::bpchar])))
);


ALTER TABLE rds.tb_organizacao OWNER TO master_user;

--
-- TOC entry 4973 (class 0 OID 0)
-- Dependencies: 242
-- Name: TABLE tb_organizacao; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON TABLE rds.tb_organizacao IS 'Tabela de organizações';


--
-- TOC entry 4974 (class 0 OID 0)
-- Dependencies: 242
-- Name: COLUMN tb_organizacao.cd_organizacao; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_organizacao.cd_organizacao IS 'Código da organização';


--
-- TOC entry 4975 (class 0 OID 0)
-- Dependencies: 242
-- Name: COLUMN tb_organizacao.nm_organizacao; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_organizacao.nm_organizacao IS 'Nome da organização';


--
-- TOC entry 4976 (class 0 OID 0)
-- Dependencies: 242
-- Name: COLUMN tb_organizacao.logotipo; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_organizacao.logotipo IS 'Logotipo da organização';


--
-- TOC entry 4977 (class 0 OID 0)
-- Dependencies: 242
-- Name: COLUMN tb_organizacao.tp_organizacao; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_organizacao.tp_organizacao IS 'Tipo de organização (G-Grupo de Apoio, C-Comunidade, A-Associação, O-ONG, F-Fundação)';


--
-- TOC entry 4978 (class 0 OID 0)
-- Dependencies: 242
-- Name: COLUMN tb_organizacao.cd_cnpj; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_organizacao.cd_cnpj IS 'CNPJ da organização';


--
-- TOC entry 4979 (class 0 OID 0)
-- Dependencies: 242
-- Name: COLUMN tb_organizacao.cd_pessoa_representante; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_organizacao.cd_pessoa_representante IS 'Código da pessoa representante';


--
-- TOC entry 241 (class 1259 OID 16815)
-- Name: tb_organizacao_seq; Type: SEQUENCE; Schema: rds; Owner: master_user
--
CREATE SEQUENCE rds.tb_organizacao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE rds.tb_organizacao ALTER COLUMN cd_organizacao SET DEFAULT nextval('rds.tb_organizacao_seq'::regclass);


ALTER SEQUENCE rds.tb_organizacao_seq OWNER TO master_user;

--
-- TOC entry 243 (class 1259 OID 16829)
-- Name: tb_organizacao_pessoas; Type: TABLE; Schema: rds; Owner: master_user
--

CREATE TABLE rds.tb_organizacao_pessoas (
    cd_organizacao bigint NOT NULL,
    cd_pessoa bigint NOT NULL,
    cd_protocolo character varying(50),
    dt_cadastro timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    tp_membro character(1),
    dt_inicio date,
    dt_fim date,
    CONSTRAINT tb_organizacao_pessoas_tp_membro_check CHECK ((tp_membro = ANY (ARRAY['E'::bpchar, 'C'::bpchar, 'A'::bpchar])))
);


ALTER TABLE rds.tb_organizacao_pessoas OWNER TO master_user;

--
-- TOC entry 4980 (class 0 OID 0)
-- Dependencies: 243
-- Name: TABLE tb_organizacao_pessoas; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON TABLE rds.tb_organizacao_pessoas IS 'Tabela de relação entre organizações e pessoas';


--
-- TOC entry 4981 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN tb_organizacao_pessoas.cd_organizacao; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_organizacao_pessoas.cd_organizacao IS 'Código da organização';


--
-- TOC entry 4982 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN tb_organizacao_pessoas.cd_pessoa; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_organizacao_pessoas.cd_pessoa IS 'Código da pessoa';


--
-- TOC entry 4983 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN tb_organizacao_pessoas.cd_protocolo; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_organizacao_pessoas.cd_protocolo IS 'Código do protocolo';


--
-- TOC entry 4984 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN tb_organizacao_pessoas.dt_cadastro; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_organizacao_pessoas.dt_cadastro IS 'Data de cadastro';


--
-- TOC entry 4985 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN tb_organizacao_pessoas.tp_membro; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_organizacao_pessoas.tp_membro IS 'Tipo de membro (E-Efetivo, C-Colaborador, A-Associado)';


--
-- TOC entry 4986 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN tb_organizacao_pessoas.dt_inicio; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_organizacao_pessoas.dt_inicio IS 'Data de início';


--
-- TOC entry 4987 (class 0 OID 0)
-- Dependencies: 243
-- Name: COLUMN tb_organizacao_pessoas.dt_fim; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_organizacao_pessoas.dt_fim IS 'Data de fim';


--
-- TOC entry 236 (class 1259 OID 16760)
-- Name: tb_perfil; Type: TABLE; Schema: rds; Owner: master_user
--

CREATE TABLE rds.tb_perfil (
    cd_perfil bigint NOT NULL,
    ds_perfil character varying(100) NOT NULL
);


ALTER TABLE rds.tb_perfil OWNER TO master_user;

--
-- TOC entry 4988 (class 0 OID 0)
-- Dependencies: 236
-- Name: TABLE tb_perfil; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON TABLE rds.tb_perfil IS 'Tabela de perfis do sistema';


--
-- TOC entry 4989 (class 0 OID 0)
-- Dependencies: 236
-- Name: COLUMN tb_perfil.cd_perfil; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_perfil.cd_perfil IS 'Código do perfil';


--
-- TOC entry 4990 (class 0 OID 0)
-- Dependencies: 236
-- Name: COLUMN tb_perfil.ds_perfil; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_perfil.ds_perfil IS 'Descrição do perfil';


--
-- TOC entry 235 (class 1259 OID 16759)
-- Name: tb_perfil_seq; Type: SEQUENCE; Schema: rds; Owner: master_user
--

CREATE SEQUENCE rds.tb_perfil_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE rds.tb_perfil ALTER COLUMN cd_perfil SET DEFAULT nextval('rds.tb_perfil_seq'::regclass);


ALTER SEQUENCE rds.tb_perfil_seq OWNER TO master_user;

--
-- TOC entry 237 (class 1259 OID 16765)
-- Name: tb_perfil_usuario; Type: TABLE; Schema: rds; Owner: master_user
--

CREATE TABLE rds.tb_perfil_usuario (
    cd_usuario bigint NOT NULL,
    cd_perfil bigint NOT NULL
);


ALTER TABLE rds.tb_perfil_usuario OWNER TO master_user;

--
-- TOC entry 4991 (class 0 OID 0)
-- Dependencies: 237
-- Name: TABLE tb_perfil_usuario; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON TABLE rds.tb_perfil_usuario IS 'Tabela de associação entre usuários e perfis';


--
-- TOC entry 4992 (class 0 OID 0)
-- Dependencies: 237
-- Name: COLUMN tb_perfil_usuario.cd_usuario; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_perfil_usuario.cd_usuario IS 'Código do usuário';


--
-- TOC entry 4993 (class 0 OID 0)
-- Dependencies: 237
-- Name: COLUMN tb_perfil_usuario.cd_perfil; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_perfil_usuario.cd_perfil IS 'Código do perfil';


--
-- TOC entry 219 (class 1259 OID 16498)
-- Name: tb_pessoa; Type: TABLE; Schema: rds; Owner: master_user
--

CREATE TABLE rds.tb_pessoa (
    cd_pessoa bigint NOT NULL,
    nm_pessoa character varying(100) NOT NULL,
    nm_social character varying(100),
    nm_mae character varying(100),
    nm_pai character varying(100),
    nm_apelido character varying(50),
    nm_conjuge character varying(100),
    cd_sexo integer,
    cd_raca integer,
    cd_genero integer,
    tp_estado_civil integer,
    dt_nascimento date,
    cd_nacionalidade integer,
    cd_grau_instrucao integer,
    nr_rg integer,
    ds_orgao_emissor character varying(50),
    cd_uf character varying(2),
    dt_emissao date,
    nr_cpf character varying(50) NOT NULL,
    cd_cns character varying(20),
    cd_prontuario bigint,
    tp_sanguineo character varying(3),
    cd_religiao integer,
    dt_cadastro timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    cd_conjuge bigint,
    cd_responsavel bigint,
    cd_usuario bigint
);


ALTER TABLE rds.tb_pessoa OWNER TO master_user;

--
-- TOC entry 4994 (class 0 OID 0)
-- Dependencies: 219
-- Name: TABLE tb_pessoa; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON TABLE rds.tb_pessoa IS 'Tabela de pessoas';


--
-- TOC entry 4995 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.cd_pessoa; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.cd_pessoa IS 'Código da pessoa';


--
-- TOC entry 4996 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.nm_pessoa; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.nm_pessoa IS 'Nome completo da pessoa';


--
-- TOC entry 4997 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.nm_social; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.nm_social IS 'Nome social da pessoa';


--
-- TOC entry 4998 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.nm_mae; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.nm_mae IS 'Nome da mãe da pessoa';


--
-- TOC entry 4999 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.nm_pai; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.nm_pai IS 'Nome do pai da pessoa';


--
-- TOC entry 5000 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.nm_apelido; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.nm_apelido IS 'Apelido da pessoa';


--
-- TOC entry 5001 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.nm_conjuge; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.nm_conjuge IS 'Nome do cônjuge da pessoa';


--
-- TOC entry 5002 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.cd_sexo; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.cd_sexo IS 'Código do sexo da pessoa';


--
-- TOC entry 5003 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.cd_raca; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.cd_raca IS 'Código da raça da pessoa';


--
-- TOC entry 5004 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.cd_genero; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.cd_genero IS 'Código do gênero da pessoa';


--
-- TOC entry 5005 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.tp_estado_civil; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.tp_estado_civil IS 'Estado civil da pessoa';


--
-- TOC entry 5006 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.dt_nascimento; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.dt_nascimento IS 'Data de nascimento da pessoa';


--
-- TOC entry 5007 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.cd_nacionalidade; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.cd_nacionalidade IS 'Código da nacionalidade da pessoa';


--
-- TOC entry 5008 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.cd_grau_instrucao; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.cd_grau_instrucao IS 'Código do grau de instrução da pessoa';


--
-- TOC entry 5009 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.nr_rg; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.nr_rg IS 'Número do RG da pessoa';


--
-- TOC entry 5010 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.ds_orgao_emissor; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.ds_orgao_emissor IS 'Órgão emissor do RG';


--
-- TOC entry 5011 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.cd_uf; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.cd_uf IS 'Código da UF';


--
-- TOC entry 5012 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.dt_emissao; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.dt_emissao IS 'Data de emissão do RG';


--
-- TOC entry 5013 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.nr_cpf; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.nr_cpf IS 'Número do CPF';


--
-- TOC entry 5014 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.cd_cns; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.cd_cns IS 'Código do CNS';


--
-- TOC entry 5015 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.cd_prontuario; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.cd_prontuario IS 'Código do prontuário';


--
-- TOC entry 5016 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.tp_sanguineo; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.tp_sanguineo IS 'Tipagem sanguínea';


--
-- TOC entry 5017 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.cd_religiao; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.cd_religiao IS 'Código da religião';


--
-- TOC entry 5018 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.dt_cadastro; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.dt_cadastro IS 'Data de cadastro da pessoa';


--
-- TOC entry 5019 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.cd_conjuge; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.cd_conjuge IS 'Código do cônjuge da pessoa';


--
-- TOC entry 5020 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.cd_responsavel; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.cd_responsavel IS 'Código do responsável pela pessoa';


--
-- TOC entry 5021 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN tb_pessoa.cd_usuario; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa.cd_usuario IS 'Código do usuário da rede somos';


--
-- TOC entry 359 (class 1259 OID 18750)
-- Name: tb_pessoa_agenda; Type: TABLE; Schema: rds; Owner: master_user
--

CREATE TABLE rds.tb_pessoa_agenda (
    cd_agenda bigint NOT NULL,
    cd_pessoa bigint NOT NULL,
    tp_compromisso character(2) NOT NULL,
    cd_profissional bigint,
    cd_tratamento bigint,
    cd_atendimento bigint,
    dh_agenda timestamp without time zone NOT NULL,
    cd_pessoa_destino bigint,
    nr_ciclo smallint,
    nr_sessao smallint,
    dh_cadastro timestamp without time zone,
    CONSTRAINT ck_tb_pessoa_agenda_tp_compromisso CHECK ((tp_compromisso = ANY (ARRAY['CM'::bpchar, 'RC'::bpchar, 'EX'::bpchar, 'OT'::bpchar, 'TT'::bpchar]))),
    CONSTRAINT tb_pessoa_agenda_tp_compromisso_check CHECK ((tp_compromisso = ANY (ARRAY['CM'::bpchar, 'RC'::bpchar, 'EX'::bpchar, 'OT'::bpchar, 'TT'::bpchar])))
);


ALTER TABLE rds.tb_pessoa_agenda OWNER TO master_user;

--
-- TOC entry 5022 (class 0 OID 0)
-- Dependencies: 359
-- Name: COLUMN tb_pessoa_agenda.cd_agenda; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_agenda.cd_agenda IS 'Código da agenda';


--
-- TOC entry 5023 (class 0 OID 0)
-- Dependencies: 359
-- Name: COLUMN tb_pessoa_agenda.cd_pessoa; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_agenda.cd_pessoa IS 'Código da pessoa da agenda';


--
-- TOC entry 5024 (class 0 OID 0)
-- Dependencies: 359
-- Name: COLUMN tb_pessoa_agenda.tp_compromisso; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_agenda.tp_compromisso IS 'Tipo de compromisso (CM - Consulta médica; RC - Retorno de consulta; EX - Exames; OT - Outros compromissos; TT - Tratamento de saúde)';


--
-- TOC entry 5025 (class 0 OID 0)
-- Dependencies: 359
-- Name: COLUMN tb_pessoa_agenda.cd_profissional; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_agenda.cd_profissional IS 'Código do profissional';


--
-- TOC entry 5026 (class 0 OID 0)
-- Dependencies: 359
-- Name: COLUMN tb_pessoa_agenda.cd_tratamento; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_agenda.cd_tratamento IS 'Código do tratamento';


--
-- TOC entry 5027 (class 0 OID 0)
-- Dependencies: 359
-- Name: COLUMN tb_pessoa_agenda.cd_atendimento; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_agenda.cd_atendimento IS 'Código do atendimento (obrigatório quando houver anexos)';


--
-- TOC entry 5028 (class 0 OID 0)
-- Dependencies: 359
-- Name: COLUMN tb_pessoa_agenda.dh_agenda; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_agenda.dh_agenda IS 'Data e hora do agendamento';


--
-- TOC entry 5029 (class 0 OID 0)
-- Dependencies: 359
-- Name: COLUMN tb_pessoa_agenda.cd_pessoa_destino; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_agenda.cd_pessoa_destino IS 'Código da pessoa destino (preencher quando uma pessoa agenda para outra)';


--
-- TOC entry 5030 (class 0 OID 0)
-- Dependencies: 359
-- Name: COLUMN tb_pessoa_agenda.nr_ciclo; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_agenda.nr_ciclo IS 'Preencher em casos de ciclos de quimioterapia ou preencher 1 para fisioterapia';


--
-- TOC entry 5031 (class 0 OID 0)
-- Dependencies: 359
-- Name: COLUMN tb_pessoa_agenda.nr_sessao; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_agenda.nr_sessao IS 'Sessão da quimioterapia ou fisioterapia';


--
-- TOC entry 5032 (class 0 OID 0)
-- Dependencies: 359
-- Name: COLUMN tb_pessoa_agenda.dh_cadastro; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_agenda.dh_cadastro IS 'Data e hora do cadastro da agenda';


--
-- TOC entry 239 (class 1259 OID 16781)
-- Name: tb_pessoa_arquivo; Type: TABLE; Schema: rds; Owner: master_user
--

CREATE TABLE rds.tb_pessoa_arquivo (
    cd_arquivo bigint NOT NULL,
    cd_pessoa bigint NOT NULL,
    nm_arquivo character varying(255) NOT NULL,
    tp_tipo_arquivo character varying(50) NOT NULL,
    tp_categoria character varying(50) NOT NULL,
    dt_upload timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    ds_observacao text,
    bin_arquivo bytea NOT NULL,
    cd_prontuario bigint NOT NULL
);


ALTER TABLE rds.tb_pessoa_arquivo OWNER TO master_user;

--
-- TOC entry 5033 (class 0 OID 0)
-- Dependencies: 239
-- Name: TABLE tb_pessoa_arquivo; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON TABLE rds.tb_pessoa_arquivo IS 'Tabela de arquivos de pessoas';


--
-- TOC entry 5034 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN tb_pessoa_arquivo.cd_arquivo; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_arquivo.cd_arquivo IS 'Código do arquivo';


--
-- TOC entry 5035 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN tb_pessoa_arquivo.cd_pessoa; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_arquivo.cd_pessoa IS 'Código da pessoa';


--
-- TOC entry 5036 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN tb_pessoa_arquivo.nm_arquivo; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_arquivo.nm_arquivo IS 'Nome do arquivo';


--
-- TOC entry 5037 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN tb_pessoa_arquivo.tp_tipo_arquivo; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_arquivo.tp_tipo_arquivo IS 'Tipo do arquivo (PDF, DOC, JPG, etc.)';


--
-- TOC entry 5038 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN tb_pessoa_arquivo.tp_categoria; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_arquivo.tp_categoria IS 'Categoria do arquivo (Exame, Foto de Ocorrência, etc.)';


--
-- TOC entry 5039 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN tb_pessoa_arquivo.dt_upload; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_arquivo.dt_upload IS 'Data e hora do upload do arquivo';


--
-- TOC entry 5040 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN tb_pessoa_arquivo.ds_observacao; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_arquivo.ds_observacao IS 'Observações sobre o arquivo';


--
-- TOC entry 5041 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN tb_pessoa_arquivo.bin_arquivo; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_arquivo.bin_arquivo IS 'Conteúdo binário do arquivo';


--
-- TOC entry 5042 (class 0 OID 0)
-- Dependencies: 239
-- Name: COLUMN tb_pessoa_arquivo.cd_prontuario; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_arquivo.cd_prontuario IS 'Código do prontuário pessoal do paciente';


--
-- TOC entry 238 (class 1259 OID 16780)
-- Name: tb_pessoa_arquivo_seq; Type: SEQUENCE; Schema: rds; Owner: master_user
--
CREATE SEQUENCE rds.tb_pessoa_arquivo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE rds.tb_pessoa_arquivo ALTER COLUMN cd_arquivo SET DEFAULT nextval('rds.tb_pessoa_arquivo_seq'::regclass);


ALTER SEQUENCE rds.tb_pessoa_arquivo_seq OWNER TO master_user;

--
-- TOC entry 218 (class 1259 OID 16497)
-- Name: tb_pessoa_cd_pessoa_seq; Type: SEQUENCE; Schema: rds; Owner: master_user
--

CREATE SEQUENCE rds.tb_pessoa_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE rds.tb_pessoa ALTER COLUMN cd_pessoa SET DEFAULT nextval('rds.tb_pessoa_seq'::regclass);

ALTER TABLE rds.tb_pessoa_seq OWNER TO master_user;

--
-- TOC entry 221 (class 1259 OID 16552)
-- Name: tb_pessoa_contato; Type: TABLE; Schema: rds; Owner: master_user
--

CREATE TABLE rds.tb_pessoa_contato (
    cd_contato bigint NOT NULL,
    cd_pessoa bigint,
    tp_contato integer,
    ds_descricao character varying(50),
    ds_email character varying(100),
    nr_telefone character varying(50),
    cd_pais character varying(3),
    cd_idd character varying(5),
    sn_whatsapp character(1),
    CONSTRAINT tb_pessoa_contato_sn_whatsapp_check CHECK ((sn_whatsapp = ANY (ARRAY['S'::bpchar, 'N'::bpchar])))
);


ALTER TABLE rds.tb_pessoa_contato OWNER TO master_user;

--
-- TOC entry 5043 (class 0 OID 0)
-- Dependencies: 221
-- Name: TABLE tb_pessoa_contato; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON TABLE rds.tb_pessoa_contato IS 'Tabela de contatos de pessoas';


--
-- TOC entry 5044 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN tb_pessoa_contato.cd_contato; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_contato.cd_contato IS 'Código do contato';


--
-- TOC entry 5045 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN tb_pessoa_contato.cd_pessoa; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_contato.cd_pessoa IS 'Código da pessoa';


--
-- TOC entry 5046 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN tb_pessoa_contato.tp_contato; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_contato.tp_contato IS 'Tipo de contato';


--
-- TOC entry 5047 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN tb_pessoa_contato.ds_descricao; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_contato.ds_descricao IS 'Descrição do contato';


--
-- TOC entry 5048 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN tb_pessoa_contato.ds_email; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_contato.ds_email IS 'Email do contato';


--
-- TOC entry 5049 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN tb_pessoa_contato.nr_telefone; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_contato.nr_telefone IS 'Número de telefone do contato';


--
-- TOC entry 5050 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN tb_pessoa_contato.cd_pais; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_contato.cd_pais IS 'Código do país do contato';


--
-- TOC entry 5051 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN tb_pessoa_contato.cd_idd; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_contato.cd_idd IS 'Código de discagem internacional';


--
-- TOC entry 5052 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN tb_pessoa_contato.sn_whatsapp; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_contato.sn_whatsapp IS 'Indicador se o contato é WhatsApp (S/N)';


--
-- TOC entry 220 (class 1259 OID 16551)
-- Name: tb_pessoa_contato_seq; Type: SEQUENCE; Schema: rds; Owner: master_user
--
CREATE SEQUENCE rds.tb_pessoa_contato_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE rds.tb_pessoa_contato ALTER COLUMN cd_contato SET DEFAULT nextval('rds.tb_pessoa_contato_seq'::regclass);


ALTER SEQUENCE rds.tb_pessoa_contato_seq OWNER TO master_user;

--
-- TOC entry 223 (class 1259 OID 16565)
-- Name: tb_pessoa_endereco; Type: TABLE; Schema: rds; Owner: master_user
--

CREATE TABLE rds.tb_pessoa_endereco (
    cd_endereco bigint NOT NULL,
    cd_pessoa bigint,
    tp_endereco integer,
    cd_cep character varying(8),
    ds_logradouro character varying(100),
    nr_numero character varying(10),
    ds_complemento character varying(50),
    ds_bairro character varying(50),
    cd_uf character varying(2) NOT NULL,
    cd_cidade character varying(50) NOT NULL,
    nm_pais character varying(100),
    cd_pais character varying(3),
    ds_regiao character varying(100),
    cd_postal character varying(20),
    tp_localizacao character(1),
    CONSTRAINT tb_pessoa_endereco_tp_localizacao_check CHECK ((tp_localizacao = ANY (ARRAY['U'::bpchar, 'R'::bpchar])))
);


ALTER TABLE rds.tb_pessoa_endereco OWNER TO master_user;

--
-- TOC entry 5053 (class 0 OID 0)
-- Dependencies: 223
-- Name: TABLE tb_pessoa_endereco; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON TABLE rds.tb_pessoa_endereco IS 'Tabela de endereços de pessoas';


--
-- TOC entry 5054 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN tb_pessoa_endereco.cd_endereco; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_endereco.cd_endereco IS 'Código do endereço';


--
-- TOC entry 5055 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN tb_pessoa_endereco.cd_pessoa; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_endereco.cd_pessoa IS 'Código da pessoa';


--
-- TOC entry 5056 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN tb_pessoa_endereco.tp_endereco; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_endereco.tp_endereco IS 'Tipo de endereço';


--
-- TOC entry 5057 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN tb_pessoa_endereco.cd_cep; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_endereco.cd_cep IS 'Código do CEP';


--
-- TOC entry 5058 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN tb_pessoa_endereco.ds_logradouro; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_endereco.ds_logradouro IS 'Logradouro';


--
-- TOC entry 5059 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN tb_pessoa_endereco.nr_numero; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_endereco.nr_numero IS 'Número';


--
-- TOC entry 5060 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN tb_pessoa_endereco.ds_complemento; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_endereco.ds_complemento IS 'Complemento';


--
-- TOC entry 5061 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN tb_pessoa_endereco.ds_bairro; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_endereco.ds_bairro IS 'Bairro';


--
-- TOC entry 5062 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN tb_pessoa_endereco.cd_uf; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_endereco.cd_uf IS 'Código da UF';


--
-- TOC entry 5063 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN tb_pessoa_endereco.cd_cidade; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_endereco.cd_cidade IS 'Cidade';


--
-- TOC entry 5064 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN tb_pessoa_endereco.nm_pais; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_endereco.nm_pais IS 'Nome do país';


--
-- TOC entry 5065 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN tb_pessoa_endereco.cd_pais; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_endereco.cd_pais IS 'Código do país';


--
-- TOC entry 5066 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN tb_pessoa_endereco.ds_regiao; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_endereco.ds_regiao IS 'Região/Estado/Província';


--
-- TOC entry 5067 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN tb_pessoa_endereco.cd_postal; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_endereco.cd_postal IS 'Código postal';


--
-- TOC entry 5068 (class 0 OID 0)
-- Dependencies: 223
-- Name: COLUMN tb_pessoa_endereco.tp_localizacao; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_endereco.tp_localizacao IS 'Tipo de localização (Urbano ou Rural)';


--
-- TOC entry 222 (class 1259 OID 16564)
-- Name: tb_pessoa_endereco_seq; Type: SEQUENCE; Schema: rds; Owner: master_user
--
CREATE SEQUENCE rds.tb_pessoa_endereco_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE rds.tb_pessoa_endereco ALTER COLUMN cd_endereco SET DEFAULT nextval('rds.tb_pessoa_endereco_seq'::regclass);


ALTER SEQUENCE rds.tb_pessoa_endereco_seq OWNER TO master_user;


--
-- TOC entry 240 (class 1259 OID 16794)
-- Name: tb_pessoa_outros; Type: TABLE; Schema: rds; Owner: master_user
--

CREATE TABLE rds.tb_pessoa_outros (
    cd_pessoa bigint NOT NULL,
    tp_reside_com character(1),
    ds_reside_com_informe character varying(30),
    cd_cbo character varying(8),
    sn_responsavel_trab_fora_casa character(1),
    tp_emergencia_responsavel character(1),
    nm_emergencia_ligar_para character varying(70),
    nr_emergencia_ddd character varying(2),
    nr_emergencia_telefone character varying(8),
    nm_acompanhado_por character varying(70),
    tp_local_acompanhamento character(3),
    ds_local_acompanhamento character varying(70),
    nm_servico_social_saude character varying(70),
    nm_unidade_educacional character varying(70),
    nm_centro_referencia_assistencia_social character varying(70),
    ds_anotacoes_assistencia_social character varying(200),
    ds_anotacoes_educacao_vida_escolar character varying(200),
    CONSTRAINT tb_pessoa_outros_sn_responsavel_trab_fora_casa_check CHECK ((sn_responsavel_trab_fora_casa = ANY (ARRAY['S'::bpchar, 'N'::bpchar]))),
    CONSTRAINT tb_pessoa_outros_tp_emergencia_responsavel_check CHECK ((tp_emergencia_responsavel = ANY (ARRAY['C'::bpchar, 'F'::bpchar, 'A'::bpchar, 'O'::bpchar]))),
    CONSTRAINT tb_pessoa_outros_tp_local_acompanhamento_check CHECK ((tp_local_acompanhamento = ANY (ARRAY['UBS'::bpchar, 'ESF'::bpchar]))),
    CONSTRAINT tb_pessoa_outros_tp_reside_com_check CHECK ((tp_reside_com = ANY (ARRAY['M'::bpchar, 'P'::bpchar, 'R'::bpchar, 'C'::bpchar, 'O'::bpchar, 'I'::bpchar])))
);


ALTER TABLE rds.tb_pessoa_outros OWNER TO master_user;

--
-- TOC entry 5069 (class 0 OID 0)
-- Dependencies: 240
-- Name: TABLE tb_pessoa_outros; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON TABLE rds.tb_pessoa_outros IS 'Tabela de informações adicionais de pessoas';


--
-- TOC entry 5070 (class 0 OID 0)
-- Dependencies: 240
-- Name: COLUMN tb_pessoa_outros.cd_pessoa; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_outros.cd_pessoa IS 'Código da pessoa';


--
-- TOC entry 5071 (class 0 OID 0)
-- Dependencies: 240
-- Name: COLUMN tb_pessoa_outros.tp_reside_com; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_outros.tp_reside_com IS 'Tipo de pessoa com quem reside';


--
-- TOC entry 5072 (class 0 OID 0)
-- Dependencies: 240
-- Name: COLUMN tb_pessoa_outros.ds_reside_com_informe; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_outros.ds_reside_com_informe IS 'Descrição informativa de quem reside';


--
-- TOC entry 5073 (class 0 OID 0)
-- Dependencies: 240
-- Name: COLUMN tb_pessoa_outros.cd_cbo; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_outros.cd_cbo IS 'Código da CBO';


--
-- TOC entry 5074 (class 0 OID 0)
-- Dependencies: 240
-- Name: COLUMN tb_pessoa_outros.sn_responsavel_trab_fora_casa; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_outros.sn_responsavel_trab_fora_casa IS 'Indicador se o responsável trabalha fora de casa';


--
-- TOC entry 5075 (class 0 OID 0)
-- Dependencies: 240
-- Name: COLUMN tb_pessoa_outros.tp_emergencia_responsavel; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_outros.tp_emergencia_responsavel IS 'Tipo de responsável em emergência';


--
-- TOC entry 5076 (class 0 OID 0)
-- Dependencies: 240
-- Name: COLUMN tb_pessoa_outros.nm_emergencia_ligar_para; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_outros.nm_emergencia_ligar_para IS 'Nome para ligar em emergência';


--
-- TOC entry 5077 (class 0 OID 0)
-- Dependencies: 240
-- Name: COLUMN tb_pessoa_outros.nr_emergencia_ddd; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_outros.nr_emergencia_ddd IS 'DDD do telefone de emergência';


--
-- TOC entry 5078 (class 0 OID 0)
-- Dependencies: 240
-- Name: COLUMN tb_pessoa_outros.nr_emergencia_telefone; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_outros.nr_emergencia_telefone IS 'Telefone de emergência';


--
-- TOC entry 5079 (class 0 OID 0)
-- Dependencies: 240
-- Name: COLUMN tb_pessoa_outros.nm_acompanhado_por; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_outros.nm_acompanhado_por IS 'Nome da pessoa que acompanha';


--
-- TOC entry 5080 (class 0 OID 0)
-- Dependencies: 240
-- Name: COLUMN tb_pessoa_outros.tp_local_acompanhamento; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_outros.tp_local_acompanhamento IS 'Tipo de local de acompanhamento (UBS ou ESF)';


--
-- TOC entry 5081 (class 0 OID 0)
-- Dependencies: 240
-- Name: COLUMN tb_pessoa_outros.ds_local_acompanhamento; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_outros.ds_local_acompanhamento IS 'Descrição do local de acompanhamento';


--
-- TOC entry 5082 (class 0 OID 0)
-- Dependencies: 240
-- Name: COLUMN tb_pessoa_outros.nm_servico_social_saude; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_outros.nm_servico_social_saude IS 'Nome do serviço social de saúde';


--
-- TOC entry 5083 (class 0 OID 0)
-- Dependencies: 240
-- Name: COLUMN tb_pessoa_outros.nm_unidade_educacional; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_outros.nm_unidade_educacional IS 'Nome da unidade educacional';


--
-- TOC entry 5084 (class 0 OID 0)
-- Dependencies: 240
-- Name: COLUMN tb_pessoa_outros.nm_centro_referencia_assistencia_social; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_outros.nm_centro_referencia_assistencia_social IS 'Nome do centro de referência de assistência social';


--
-- TOC entry 5085 (class 0 OID 0)
-- Dependencies: 240
-- Name: COLUMN tb_pessoa_outros.ds_anotacoes_assistencia_social; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_outros.ds_anotacoes_assistencia_social IS 'Anotações de assistência social';


--
-- TOC entry 5086 (class 0 OID 0)
-- Dependencies: 240
-- Name: COLUMN tb_pessoa_outros.ds_anotacoes_educacao_vida_escolar; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_pessoa_outros.ds_anotacoes_educacao_vida_escolar IS 'Anotações sobre educação e vida escolar';


--
-- TOC entry 364 (class 1259 OID 18870)
-- Name: tb_pessoa_receituario; Type: TABLE; Schema: rds; Owner: master_user
--

CREATE TABLE rds.tb_pessoa_receituario (
    cd_receituario bigint NOT NULL,
    cd_prontuario bigint,
    cd_atendimento bigint,
    cd_profissional bigint,
    tp_receituario character(1) NOT NULL,
    cd_pessoa bigint NOT NULL,
    CONSTRAINT tb_atd_prontuario_receituario_tp_receituario_check CHECK ((tp_receituario = ANY (ARRAY['A'::bpchar, 'P'::bpchar])))
);


ALTER TABLE rds.tb_pessoa_receituario OWNER TO master_user;

--
-- TOC entry 232 (class 1259 OID 16735)
-- Name: tb_plano; Type: TABLE; Schema: rds; Owner: master_user
--

CREATE TABLE rds.tb_plano (
    cd_plano bigint NOT NULL,
    ds_plano character varying(100) NOT NULL,
    vl_preco double precision NOT NULL,
    tp_plano character varying(3)
);


ALTER TABLE rds.tb_plano OWNER TO master_user;

--
-- TOC entry 5087 (class 0 OID 0)
-- Dependencies: 232
-- Name: TABLE tb_plano; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON TABLE rds.tb_plano IS 'Tabela de planos do sistema';


--
-- TOC entry 5088 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN tb_plano.cd_plano; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_plano.cd_plano IS 'Código do plano';


--
-- TOC entry 5089 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN tb_plano.ds_plano; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_plano.ds_plano IS 'Descrição do plano';


--
-- TOC entry 5090 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN tb_plano.vl_preco; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_plano.vl_preco IS 'Preço do plano';


--
-- TOC entry 5091 (class 0 OID 0)
-- Dependencies: 232
-- Name: COLUMN tb_plano.tp_plano; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_plano.tp_plano IS 'USU-Plano para usuário do sistema, PRF-Plano para usuário profissional de saúde, RSP-Plano para usuários dependente de responsáveis ou tutores, GRP-Plano para grupos, comunidades ou associações, EST-Plano para estabelecimentos de saúde';


--
-- TOC entry 231 (class 1259 OID 16734)
-- Name: tb_plano_seq; Type: SEQUENCE; Schema: rds; Owner: master_user
--
CREATE SEQUENCE rds.tb_plano_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE rds.tb_plano ALTER COLUMN cd_plano SET DEFAULT nextval('rds.tb_plano_seq'::regclass);


ALTER SEQUENCE rds.tb_plano_seq OWNER TO master_user;

--
-- TOC entry 225 (class 1259 OID 16584)
-- Name: tb_profissional; Type: TABLE; Schema: rds; Owner: master_user
--

CREATE TABLE rds.tb_profissional (
    cd_profissional bigint NOT NULL,
    cd_pessoa bigint NOT NULL,
    nm_guerra character varying(100) NOT NULL,
    cd_conselho character varying(50),
    cd_oe integer,
    cd_uf character varying(2),
    cd_pessoa_cadastro bigint NOT NULL
);


ALTER TABLE rds.tb_profissional OWNER TO master_user;

--
-- TOC entry 5092 (class 0 OID 0)
-- Dependencies: 225
-- Name: TABLE tb_profissional; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON TABLE rds.tb_profissional IS 'Tabela de profissionais';


--
-- TOC entry 5093 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_profissional.cd_profissional; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional.cd_profissional IS 'Código do profissional';


--
-- TOC entry 5094 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_profissional.cd_pessoa; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional.cd_pessoa IS 'Código da pessoa';


--
-- TOC entry 5095 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_profissional.nm_guerra; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional.nm_guerra IS 'Nome de guerra do profissional';


--
-- TOC entry 5096 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_profissional.cd_conselho; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional.cd_conselho IS 'Código do conselho profissional';


--
-- TOC entry 5097 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_profissional.cd_oe; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional.cd_oe IS 'Código do órgão emissor';


--
-- TOC entry 5098 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_profissional.cd_uf; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional.cd_uf IS 'Código da UF do órgão emissor';


--
-- TOC entry 5099 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN tb_profissional.cd_pessoa_cadastro; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional.cd_pessoa_cadastro IS 'Código da pessoa que executou o cadastro do profissional';


--
-- TOC entry 224 (class 1259 OID 16583)
-- Name: tb_profissional_seq; Type: SEQUENCE; Schema: rds; Owner: master_user
--
CREATE SEQUENCE rds.tb_profissional_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE rds.tb_profissional ALTER COLUMN cd_profissional SET DEFAULT nextval('rds.tb_profissional_seq'::regclass);


ALTER SEQUENCE rds.tb_profissional_seq OWNER TO master_user;


--
-- TOC entry 227 (class 1259 OID 16605)
-- Name: tb_profissional_contato; Type: TABLE; Schema: rds; Owner: master_user
--

CREATE TABLE rds.tb_profissional_contato (
    cd_contato bigint NOT NULL,
    cd_profissional bigint NOT NULL,
    tp_contato integer,
    ds_descricao character varying(50),
    ds_email character varying(100),
    nr_telefone character varying(50),
    cd_pais character varying(3),
    cd_idd character varying(5),
    sn_whatsapp character(1),
    CONSTRAINT tb_profissional_contato_sn_whatsapp_check CHECK ((sn_whatsapp = ANY (ARRAY['S'::bpchar, 'N'::bpchar])))
);


ALTER TABLE rds.tb_profissional_contato OWNER TO master_user;

--
-- TOC entry 5100 (class 0 OID 0)
-- Dependencies: 227
-- Name: TABLE tb_profissional_contato; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON TABLE rds.tb_profissional_contato IS 'Tabela de contatos dos profissionais';


--
-- TOC entry 5101 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN tb_profissional_contato.cd_contato; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_contato.cd_contato IS 'Código do contato';


--
-- TOC entry 5102 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN tb_profissional_contato.cd_profissional; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_contato.cd_profissional IS 'Código do profissional';


--
-- TOC entry 5103 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN tb_profissional_contato.tp_contato; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_contato.tp_contato IS 'Tipo de contato';


--
-- TOC entry 5104 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN tb_profissional_contato.ds_descricao; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_contato.ds_descricao IS 'Descrição do contato';


--
-- TOC entry 5105 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN tb_profissional_contato.ds_email; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_contato.ds_email IS 'Email do contato';


--
-- TOC entry 5106 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN tb_profissional_contato.nr_telefone; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_contato.nr_telefone IS 'Número de telefone do contato';


--
-- TOC entry 5107 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN tb_profissional_contato.cd_pais; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_contato.cd_pais IS 'Código do país do contato';


--
-- TOC entry 5108 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN tb_profissional_contato.cd_idd; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_contato.cd_idd IS 'Código de discagem internacional';


--
-- TOC entry 5109 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN tb_profissional_contato.sn_whatsapp; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_contato.sn_whatsapp IS 'Indicador se o contato é WhatsApp (S/N)';


--
-- TOC entry 226 (class 1259 OID 16604)
-- Name: tb_profissional_contato_seq; Type: SEQUENCE; Schema: rds; Owner: master_user
--
CREATE SEQUENCE rds.tb_profissional_contato_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE rds.tb_profissional_contato ALTER COLUMN cd_contato SET DEFAULT nextval('rds.tb_profissional_contato_seq'::regclass);


ALTER SEQUENCE rds.tb_profissional_contato_seq OWNER TO master_user;

--
-- TOC entry 229 (class 1259 OID 16617)
-- Name: tb_profissional_endereco; Type: TABLE; Schema: rds; Owner: master_user
--

CREATE TABLE rds.tb_profissional_endereco (
    cd_endereco bigint NOT NULL,
    cd_profissional bigint NOT NULL,
    tp_endereco integer,
    cd_cep character varying(8),
    ds_logradouro character varying(100),
    nr_numero character varying(10),
    ds_complemento character varying(50),
    ds_bairro character varying(50),
    cd_uf character varying(2),
    cd_cidade character varying(50),
    nm_pais character varying(100),
    cd_pais character varying(3),
    ds_regiao character varying(100),
    cd_postal character varying(20),
    tp_localizacao character(1),
    CONSTRAINT tb_profissional_endereco_tp_localizacao_check CHECK ((tp_localizacao = ANY (ARRAY['U'::bpchar, 'R'::bpchar])))
);


ALTER TABLE rds.tb_profissional_endereco OWNER TO master_user;

--
-- TOC entry 5110 (class 0 OID 0)
-- Dependencies: 229
-- Name: TABLE tb_profissional_endereco; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON TABLE rds.tb_profissional_endereco IS 'Tabela de endereços dos profissionais';


--
-- TOC entry 5111 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN tb_profissional_endereco.cd_endereco; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_endereco.cd_endereco IS 'Código do endereço';


--
-- TOC entry 5112 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN tb_profissional_endereco.cd_profissional; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_endereco.cd_profissional IS 'Código do profissional';


--
-- TOC entry 5113 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN tb_profissional_endereco.tp_endereco; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_endereco.tp_endereco IS 'Tipo de endereço';


--
-- TOC entry 5114 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN tb_profissional_endereco.cd_cep; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_endereco.cd_cep IS 'Código do CEP';


--
-- TOC entry 5115 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN tb_profissional_endereco.ds_logradouro; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_endereco.ds_logradouro IS 'Logradouro';


--
-- TOC entry 5116 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN tb_profissional_endereco.nr_numero; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_endereco.nr_numero IS 'Número';


--
-- TOC entry 5117 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN tb_profissional_endereco.ds_complemento; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_endereco.ds_complemento IS 'Complemento';


--
-- TOC entry 5118 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN tb_profissional_endereco.ds_bairro; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_endereco.ds_bairro IS 'Bairro';


--
-- TOC entry 5119 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN tb_profissional_endereco.cd_uf; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_endereco.cd_uf IS 'Código da UF';


--
-- TOC entry 5120 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN tb_profissional_endereco.cd_cidade; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_endereco.cd_cidade IS 'Cidade';


--
-- TOC entry 5121 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN tb_profissional_endereco.nm_pais; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_endereco.nm_pais IS 'Nome do país';


--
-- TOC entry 5122 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN tb_profissional_endereco.cd_pais; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_endereco.cd_pais IS 'Código do país';


--
-- TOC entry 5123 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN tb_profissional_endereco.ds_regiao; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_endereco.ds_regiao IS 'Região/Estado/Província';


--
-- TOC entry 5124 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN tb_profissional_endereco.cd_postal; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_endereco.cd_postal IS 'Código postal';


--
-- TOC entry 5125 (class 0 OID 0)
-- Dependencies: 229
-- Name: COLUMN tb_profissional_endereco.tp_localizacao; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_endereco.tp_localizacao IS 'Tipo de localização (Urbano ou Rural)';


--
-- TOC entry 228 (class 1259 OID 16616)
-- Name: tb_profissional_endereco_seq; Type: SEQUENCE; Schema: rds; Owner: master_user
--
CREATE SEQUENCE rds.tb_profissional_endereco_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE rds.tb_profissional_endereco ALTER COLUMN cd_endereco SET DEFAULT nextval('rds.tb_profissional_endereco_seq'::regclass);


ALTER SEQUENCE rds.tb_profissional_endereco_seq OWNER TO master_user;


--
-- TOC entry 230 (class 1259 OID 16641)
-- Name: tb_profissional_especialidade; Type: TABLE; Schema: rds; Owner: master_user
--

CREATE TABLE rds.tb_profissional_especialidade (
    cd_profissional bigint NOT NULL,
    cd_especialidade bigint NOT NULL
);


ALTER TABLE rds.tb_profissional_especialidade OWNER TO master_user;

--
-- TOC entry 5126 (class 0 OID 0)
-- Dependencies: 230
-- Name: TABLE tb_profissional_especialidade; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON TABLE rds.tb_profissional_especialidade IS 'Tabela de especialidades dos profissionais';


--
-- TOC entry 5127 (class 0 OID 0)
-- Dependencies: 230
-- Name: COLUMN tb_profissional_especialidade.cd_profissional; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_especialidade.cd_profissional IS 'Código do profissional';


--
-- TOC entry 5128 (class 0 OID 0)
-- Dependencies: 230
-- Name: COLUMN tb_profissional_especialidade.cd_especialidade; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_profissional_especialidade.cd_especialidade IS 'Código da especialidade';


--
-- TOC entry 358 (class 1259 OID 18738)
-- Name: tb_prontuario_paciente; Type: TABLE; Schema: rds; Owner: master_user
--

CREATE TABLE rds.tb_prontuario_paciente (
    cd_prontuario bigint NOT NULL,
    cd_pessoa bigint NOT NULL,
    id_prontuario_pessoal character varying(50),
    tx_meu_espaco text
);


ALTER TABLE rds.tb_prontuario_paciente OWNER TO master_user;

--
-- TOC entry 5129 (class 0 OID 0)
-- Dependencies: 358
-- Name: TABLE tb_prontuario_paciente; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON TABLE rds.tb_prontuario_paciente IS 'Tabela de prontuário do paciente';


--
-- TOC entry 5130 (class 0 OID 0)
-- Dependencies: 358
-- Name: COLUMN tb_prontuario_paciente.cd_prontuario; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_prontuario_paciente.cd_prontuario IS 'Código do prontuário';


--
-- TOC entry 5131 (class 0 OID 0)
-- Dependencies: 358
-- Name: COLUMN tb_prontuario_paciente.cd_pessoa; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_prontuario_paciente.cd_pessoa IS 'Código da pessoa associada ao prontuário';


--
-- TOC entry 5132 (class 0 OID 0)
-- Dependencies: 358
-- Name: COLUMN tb_prontuario_paciente.id_prontuario_pessoal; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_prontuario_paciente.id_prontuario_pessoal IS 'Identificador do prontuário pessoal';


--
-- TOC entry 5133 (class 0 OID 0)
-- Dependencies: 358
-- Name: COLUMN tb_prontuario_paciente.tx_meu_espaco; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_prontuario_paciente.tx_meu_espaco IS 'Texto do meu espaço';


--
-- TOC entry 360 (class 1259 OID 18769)
-- Name: tb_tratamento_prontuario; Type: TABLE; Schema: rds; Owner: master_user
--

CREATE TABLE rds.tb_tratamento_prontuario (
    cd_tratamento bigint NOT NULL,
    cd_prontuario bigint NOT NULL,
    cd_pessoa bigint NOT NULL,
    tp_compromisso character(2) NOT NULL,
    CONSTRAINT tb_tratamento_prontuario_tp_compromisso_check CHECK ((tp_compromisso = ANY (ARRAY['CM'::bpchar, 'RC'::bpchar, 'EX'::bpchar, 'OT'::bpchar, 'TT'::bpchar])))
);


ALTER TABLE rds.tb_tratamento_prontuario OWNER TO master_user;

--
-- TOC entry 5134 (class 0 OID 0)
-- Dependencies: 360
-- Name: TABLE tb_tratamento_prontuario; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON TABLE rds.tb_tratamento_prontuario IS 'Tabela de tratamentos vinculados a prontuários';


--
-- TOC entry 5135 (class 0 OID 0)
-- Dependencies: 360
-- Name: COLUMN tb_tratamento_prontuario.cd_tratamento; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_tratamento_prontuario.cd_tratamento IS 'Código do tratamento';


--
-- TOC entry 5136 (class 0 OID 0)
-- Dependencies: 360
-- Name: COLUMN tb_tratamento_prontuario.cd_prontuario; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_tratamento_prontuario.cd_prontuario IS 'Código do prontuário';


--
-- TOC entry 5137 (class 0 OID 0)
-- Dependencies: 360
-- Name: COLUMN tb_tratamento_prontuario.cd_pessoa; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_tratamento_prontuario.cd_pessoa IS 'Código da pessoa';


--
-- TOC entry 5138 (class 0 OID 0)
-- Dependencies: 360
-- Name: COLUMN tb_tratamento_prontuario.tp_compromisso; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_tratamento_prontuario.tp_compromisso IS 'Tipo de compromisso (CM - Consulta médica; RC - Retorno de consulta; EX - Exames; OT - Outros compromissos; TT - Tratamento de saúde)';


--
-- TOC entry 361 (class 1259 OID 18795)
-- Name: tb_tratamento_prontuario_seq; Type: SEQUENCE; Schema: rds; Owner: master_user
--
CREATE SEQUENCE rds.tb_tratamento_prontuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE rds.tb_tratamento_prontuario ALTER COLUMN cd_tratamento SET DEFAULT nextval('rds.tb_tratamento_prontuario_seq'::regclass);


ALTER SEQUENCE rds.tb_tratamento_prontuario_seq OWNER TO master_user;

--
-- TOC entry 234 (class 1259 OID 16741)
-- Name: tb_usuario; Type: TABLE; Schema: rds; Owner: master_user
--

CREATE TABLE rds.tb_usuario (
    cd_usuario bigint NOT NULL,
    ds_login character varying(50) NOT NULL,
    ds_senha character varying(100) NOT NULL,
    dt_criacao timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    cd_cpf character varying(11) NOT NULL,
    ds_email character varying(50) NOT NULL,
    dt_inicio timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    dt_fim timestamp without time zone,
    cd_keycloak character varying(100)
);


ALTER TABLE rds.tb_usuario OWNER TO master_user;

--
-- TOC entry 5139 (class 0 OID 0)
-- Dependencies: 234
-- Name: TABLE tb_usuario; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON TABLE rds.tb_usuario IS 'Tabela de usuários';


--
-- TOC entry 5140 (class 0 OID 0)
-- Dependencies: 234
-- Name: COLUMN tb_usuario.cd_usuario; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_usuario.cd_usuario IS 'Código do usuário';


--
-- TOC entry 5141 (class 0 OID 0)
-- Dependencies: 234
-- Name: COLUMN tb_usuario.ds_login; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_usuario.ds_login IS 'Login do usuário';


--
-- TOC entry 5142 (class 0 OID 0)
-- Dependencies: 234
-- Name: COLUMN tb_usuario.ds_senha; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_usuario.ds_senha IS 'Senha do usuário';


--
-- TOC entry 5143 (class 0 OID 0)
-- Dependencies: 234
-- Name: COLUMN tb_usuario.dt_criacao; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_usuario.dt_criacao IS 'Data e hora de criação do usuário';


--
-- TOC entry 5144 (class 0 OID 0)
-- Dependencies: 234
-- Name: COLUMN tb_usuario.cd_cpf; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_usuario.cd_cpf IS 'Código do CPF do usuário do sistema';


--
-- TOC entry 5145 (class 0 OID 0)
-- Dependencies: 234
-- Name: COLUMN tb_usuario.ds_email; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_usuario.ds_email IS 'e-mail de contato do usuário do sistema';


--
-- TOC entry 5146 (class 0 OID 0)
-- Dependencies: 234
-- Name: COLUMN tb_usuario.dt_inicio; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_usuario.dt_inicio IS 'Data de inicio da operação do usuário';


--
-- TOC entry 5147 (class 0 OID 0)
-- Dependencies: 234
-- Name: COLUMN tb_usuario.dt_fim; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_usuario.dt_fim IS 'data fim da operação do usuário';


--
-- TOC entry 233 (class 1259 OID 16740)
-- Name: tb_usuario_seq; Type: SEQUENCE; Schema: rds; Owner: master_user
--
CREATE SEQUENCE rds.tb_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE rds.tb_usuario ALTER COLUMN cd_usuario SET DEFAULT nextval('rds.tb_usuario_seq'::regclass);


ALTER SEQUENCE rds.tb_usuario_seq OWNER TO master_user;

--
-- TOC entry 357 (class 1259 OID 18710)
-- Name: tb_usuario_planos; Type: TABLE; Schema: rds; Owner: master_user
--

CREATE TABLE rds.tb_usuario_planos (
    cd_usuario bigint NOT NULL,
    cd_plano bigint NOT NULL,
    cd_pessoa_dependente bigint,
    dt_inicio date NOT NULL,
    dt_fim date
);


ALTER TABLE rds.tb_usuario_planos OWNER TO master_user;

--
-- TOC entry 5148 (class 0 OID 0)
-- Dependencies: 357
-- Name: COLUMN tb_usuario_planos.cd_usuario; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_usuario_planos.cd_usuario IS 'Código do usuário do sistema';


--
-- TOC entry 5149 (class 0 OID 0)
-- Dependencies: 357
-- Name: COLUMN tb_usuario_planos.cd_plano; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_usuario_planos.cd_plano IS 'Código do plano do usuário';


--
-- TOC entry 5150 (class 0 OID 0)
-- Dependencies: 357
-- Name: COLUMN tb_usuario_planos.cd_pessoa_dependente; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_usuario_planos.cd_pessoa_dependente IS 'Código da pessoa dependente';


--
-- TOC entry 5151 (class 0 OID 0)
-- Dependencies: 357
-- Name: COLUMN tb_usuario_planos.dt_inicio; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_usuario_planos.dt_inicio IS 'Data de inicio do plano para o usuário';


--
-- TOC entry 5152 (class 0 OID 0)
-- Dependencies: 357
-- Name: COLUMN tb_usuario_planos.dt_fim; Type: COMMENT; Schema: rds; Owner: master_user
--

COMMENT ON COLUMN rds.tb_usuario_planos.dt_fim IS 'Data final do plano para o usuário';


----
---- TOC entry 4580 (class 2604 OID 16927)
---- Name: tb_genero cd_genero; Type: DEFAULT; Schema: grl; Owner: master_user
----
--
--ALTER TABLE ONLY grl.tb_genero ALTER COLUMN cd_genero SET DEFAULT nextval('grl.tb_genero_seq'::regclass);
--
--
----
---- TOC entry 4581 (class 2604 OID 16934)
---- Name: tb_grau_instrucao cd_grau_instrucao; Type: DEFAULT; Schema: grl; Owner: master_user
----
--
--ALTER TABLE ONLY grl.tb_grau_instrucao ALTER COLUMN cd_grau_instrucao SET DEFAULT nextval('grl.tb_grau_instrucao_seq'::regclass);
--
--
----
---- TOC entry 4582 (class 2604 OID 16941)
---- Name: tb_nacionalidade cd_nacionalidade; Type: DEFAULT; Schema: grl; Owner: master_user
----
--
--ALTER TABLE ONLY grl.tb_nacionalidade ALTER COLUMN cd_nacionalidade SET DEFAULT nextval('grl.tb_nacionalidade_seq'::regclass);
--
--
----
---- TOC entry 4577 (class 2604 OID 16906)
---- Name: tb_orgao_emissor cd_oe; Type: DEFAULT; Schema: grl; Owner: master_user
----
--
--ALTER TABLE ONLY grl.tb_orgao_emissor ALTER COLUMN cd_oe SET DEFAULT nextval('grl.tb_orgao_emissor_seq'::regclass);
--
--
----
---- TOC entry 4579 (class 2604 OID 16920)
---- Name: tb_raca cd_raca; Type: DEFAULT; Schema: grl; Owner: master_user
----
--
--ALTER TABLE ONLY grl.tb_raca ALTER COLUMN cd_raca SET DEFAULT nextval('grl.tb_raca_seq'::regclass);
--
--
----
---- TOC entry 4583 (class 2604 OID 16948)
---- Name: tb_religiao cd_religiao; Type: DEFAULT; Schema: grl; Owner: master_user
----
--
--ALTER TABLE ONLY grl.tb_religiao ALTER COLUMN cd_religiao SET DEFAULT nextval('grl.tb_religiao_seq'::regclass);
--
--
----
---- TOC entry 4578 (class 2604 OID 16913)
---- Name: tb_sexo cd_sexo; Type: DEFAULT; Schema: grl; Owner: master_user
----
--
--ALTER TABLE ONLY grl.tb_sexo ALTER COLUMN cd_sexo SET DEFAULT nextval('grl.tb_sexo_seq'::regclass);


--
-- TOC entry 4898 (class 0 OID 17017)
-- Dependencies: 259
-- Data for Name: tb_cbo; Type: TABLE DATA; Schema: grl; Owner: master_user
--

COPY grl.tb_cbo (cd_cbo, ds_cbo) FROM stdin;
\.


--
-- TOC entry 4899 (class 0 OID 17032)
-- Dependencies: 260
-- Data for Name: tb_cid; Type: TABLE DATA; Schema: grl; Owner: master_user
--

COPY grl.tb_cid (cd_cid, ds_cid) FROM stdin;
\.


--
-- TOC entry 4901 (class 0 OID 17054)
-- Dependencies: 262
-- Data for Name: tb_especialidade; Type: TABLE DATA; Schema: grl; Owner: master_user
--

COPY grl.tb_especialidade (cd_especialidade, ds_especialidade) FROM stdin;
\.


--
-- TOC entry 4891 (class 0 OID 16924)
-- Dependencies: 252
-- Data for Name: tb_genero; Type: TABLE DATA; Schema: grl; Owner: master_user
--

COPY grl.tb_genero (cd_genero, ds_genero) FROM stdin;
\.


--
-- TOC entry 4893 (class 0 OID 16931)
-- Dependencies: 254
-- Data for Name: tb_grau_instrucao; Type: TABLE DATA; Schema: grl; Owner: master_user
--

COPY grl.tb_grau_instrucao (cd_grau_instrucao, ds_grau_instrucao) FROM stdin;
\.


--
-- TOC entry 4895 (class 0 OID 16938)
-- Dependencies: 256
-- Data for Name: tb_nacionalidade; Type: TABLE DATA; Schema: grl; Owner: master_user
--

COPY grl.tb_nacionalidade (cd_nacionalidade, ds_nacionalidade) FROM stdin;
\.


--
-- TOC entry 4885 (class 0 OID 16903)
-- Dependencies: 246
-- Data for Name: tb_orgao_emissor; Type: TABLE DATA; Schema: grl; Owner: master_user
--

COPY grl.tb_orgao_emissor (cd_oe, ds_oe, ds_oe_resumido) FROM stdin;
\.


--
-- TOC entry 4889 (class 0 OID 16917)
-- Dependencies: 250
-- Data for Name: tb_raca; Type: TABLE DATA; Schema: grl; Owner: master_user
--

COPY grl.tb_raca (cd_raca, ds_raca) FROM stdin;
\.


--
-- TOC entry 4897 (class 0 OID 16945)
-- Dependencies: 258
-- Data for Name: tb_religiao; Type: TABLE DATA; Schema: grl; Owner: master_user
--

COPY grl.tb_religiao (cd_religiao, ds_religiao) FROM stdin;
\.


--
-- TOC entry 4887 (class 0 OID 16910)
-- Dependencies: 248
-- Data for Name: tb_sexo; Type: TABLE DATA; Schema: grl; Owner: master_user
--

COPY grl.tb_sexo (cd_sexo, ds_sexo) FROM stdin;
\.


--
-- TOC entry 4883 (class 0 OID 16897)
-- Dependencies: 244
-- Data for Name: tb_uf; Type: TABLE DATA; Schema: grl; Owner: master_user
--

COPY grl.tb_uf (cd_uf, ds_uf) FROM stdin;
AC	Acre
AL	Alagoas
AP	Amapá
AM	Amazonas
BA	Bahia
CE	Ceará
DF	Distrito Federal
ES	Espírito Santo
GO	Goiás
MA	Maranhão
MT	Mato Grosso
MS	Mato Grosso do Sul
MG	Minas Gerais
PA	Pará
PB	Paraíba
PR	Paraná
PE	Pernambuco
PI	Piauí
RJ	Rio de Janeiro
RN	Rio Grande do Norte
RS	Rio Grande do Sul
RO	Rondônia
RR	Roraima
SC	Santa Catarina
SP	São Paulo
SE	Sergipe
TO	Tocantins
\.

--
-- TOC entry 4908 (class 0 OID 18847)
-- Dependencies: 363
-- Data for Name: tb_atd_prontuario_cid; Type: TABLE DATA; Schema: rds; Owner: master_user
--

COPY rds.tb_atd_prontuario_cid (cd_atendimento, cd_prontuario, cd_cid, tx_observacao) FROM stdin;
\.


--
-- TOC entry 4907 (class 0 OID 18813)
-- Dependencies: 362
-- Data for Name: tb_atendimento_prontuario; Type: TABLE DATA; Schema: rds; Owner: master_user
--

COPY rds.tb_atendimento_prontuario (cd_atendimento, cd_prontuario, cd_pessoa, cd_tratamento, tp_status, cd_profissional, cd_agenda, dh_atendimento, tx_meu_espaco, cd_especialidade_principal) FROM stdin;
\.


--
-- TOC entry 4881 (class 0 OID 16816)
-- Dependencies: 242
-- Data for Name: tb_organizacao; Type: TABLE DATA; Schema: rds; Owner: master_user
--

COPY rds.tb_organizacao (cd_organizacao, nm_organizacao, logotipo, tp_organizacao, cd_cnpj, cd_pessoa_representante) FROM stdin;
\.


--
-- TOC entry 4882 (class 0 OID 16829)
-- Dependencies: 243
-- Data for Name: tb_organizacao_pessoas; Type: TABLE DATA; Schema: rds; Owner: master_user
--

COPY rds.tb_organizacao_pessoas (cd_organizacao, cd_pessoa, cd_protocolo, dt_cadastro, tp_membro, dt_inicio, dt_fim) FROM stdin;
\.


--
-- TOC entry 4875 (class 0 OID 16760)
-- Dependencies: 236
-- Data for Name: tb_perfil; Type: TABLE DATA; Schema: rds; Owner: master_user
--

COPY rds.tb_perfil (cd_perfil, ds_perfil) FROM stdin;
1	Administrador
2	Usuário do sistema
\.


--
-- TOC entry 4876 (class 0 OID 16765)
-- Dependencies: 237
-- Data for Name: tb_perfil_usuario; Type: TABLE DATA; Schema: rds; Owner: master_user
--

COPY rds.tb_perfil_usuario (cd_usuario, cd_perfil) FROM stdin;
\.


--
-- TOC entry 4858 (class 0 OID 16498)
-- Dependencies: 219
-- Data for Name: tb_pessoa; Type: TABLE DATA; Schema: rds; Owner: master_user
--

COPY rds.tb_pessoa (cd_pessoa, nm_pessoa, nm_social, nm_mae, nm_pai, nm_apelido, nm_conjuge, cd_sexo, cd_raca, cd_genero, tp_estado_civil, dt_nascimento, cd_nacionalidade, cd_grau_instrucao, nr_rg, ds_orgao_emissor, cd_uf, dt_emissao, nr_cpf, cd_cns, cd_prontuario, tp_sanguineo, cd_religiao, dt_cadastro, cd_conjuge, cd_responsavel, cd_usuario) FROM stdin;
\.


--
-- TOC entry 4904 (class 0 OID 18750)
-- Dependencies: 359
-- Data for Name: tb_pessoa_agenda; Type: TABLE DATA; Schema: rds; Owner: master_user
--

COPY rds.tb_pessoa_agenda (cd_agenda, cd_pessoa, tp_compromisso, cd_profissional, cd_tratamento, cd_atendimento, dh_agenda, cd_pessoa_destino, nr_ciclo, nr_sessao, dh_cadastro) FROM stdin;
\.


--
-- TOC entry 4878 (class 0 OID 16781)
-- Dependencies: 239
-- Data for Name: tb_pessoa_arquivo; Type: TABLE DATA; Schema: rds; Owner: master_user
--

COPY rds.tb_pessoa_arquivo (cd_arquivo, cd_pessoa, nm_arquivo, tp_tipo_arquivo, tp_categoria, dt_upload, ds_observacao, bin_arquivo, cd_prontuario) FROM stdin;
\.


--
-- TOC entry 4860 (class 0 OID 16552)
-- Dependencies: 221
-- Data for Name: tb_pessoa_contato; Type: TABLE DATA; Schema: rds; Owner: master_user
--

COPY rds.tb_pessoa_contato (cd_contato, cd_pessoa, tp_contato, ds_descricao, ds_email, nr_telefone, cd_pais, cd_idd, sn_whatsapp) FROM stdin;
\.


--
-- TOC entry 4862 (class 0 OID 16565)
-- Dependencies: 223
-- Data for Name: tb_pessoa_endereco; Type: TABLE DATA; Schema: rds; Owner: master_user
--

COPY rds.tb_pessoa_endereco (cd_endereco, cd_pessoa, tp_endereco, cd_cep, ds_logradouro, nr_numero, ds_complemento, ds_bairro, cd_uf, cd_cidade, nm_pais, cd_pais, ds_regiao, cd_postal, tp_localizacao) FROM stdin;
\.


--
-- TOC entry 4879 (class 0 OID 16794)
-- Dependencies: 240
-- Data for Name: tb_pessoa_outros; Type: TABLE DATA; Schema: rds; Owner: master_user
--

COPY rds.tb_pessoa_outros (cd_pessoa, tp_reside_com, ds_reside_com_informe, cd_cbo, sn_responsavel_trab_fora_casa, tp_emergencia_responsavel, nm_emergencia_ligar_para, nr_emergencia_ddd, nr_emergencia_telefone, nm_acompanhado_por, tp_local_acompanhamento, ds_local_acompanhamento, nm_servico_social_saude, nm_unidade_educacional, nm_centro_referencia_assistencia_social, ds_anotacoes_assistencia_social, ds_anotacoes_educacao_vida_escolar) FROM stdin;
\.


--
-- TOC entry 4909 (class 0 OID 18870)
-- Dependencies: 364
-- Data for Name: tb_pessoa_receituario; Type: TABLE DATA; Schema: rds; Owner: master_user
--

COPY rds.tb_pessoa_receituario (cd_receituario, cd_prontuario, cd_atendimento, cd_profissional, tp_receituario, cd_pessoa) FROM stdin;
\.


--
-- TOC entry 4871 (class 0 OID 16735)
-- Dependencies: 232
-- Data for Name: tb_plano; Type: TABLE DATA; Schema: rds; Owner: master_user
--

COPY rds.tb_plano (cd_plano, ds_plano, vl_preco, tp_plano) FROM stdin;
1	Plano Free	0.00	USU
2	Plano Limitado 1X	29.90	USU
3	Plano Limitado 2X	49.90	USU
4	Plano Premium	99.90	USU
5	Plano IA	199.90	USU
\.


--
-- TOC entry 4864 (class 0 OID 16584)
-- Dependencies: 225
-- Data for Name: tb_profissional; Type: TABLE DATA; Schema: rds; Owner: master_user
--

COPY rds.tb_profissional (cd_profissional, cd_pessoa, nm_guerra, cd_conselho, cd_oe, cd_uf, cd_pessoa_cadastro) FROM stdin;
\.


--
-- TOC entry 4866 (class 0 OID 16605)
-- Dependencies: 227
-- Data for Name: tb_profissional_contato; Type: TABLE DATA; Schema: rds; Owner: master_user
--

COPY rds.tb_profissional_contato (cd_contato, cd_profissional, tp_contato, ds_descricao, ds_email, nr_telefone, cd_pais, cd_idd, sn_whatsapp) FROM stdin;
\.


--
-- TOC entry 4868 (class 0 OID 16617)
-- Dependencies: 229
-- Data for Name: tb_profissional_endereco; Type: TABLE DATA; Schema: rds; Owner: master_user
--

COPY rds.tb_profissional_endereco (cd_endereco, cd_profissional, tp_endereco, cd_cep, ds_logradouro, nr_numero, ds_complemento, ds_bairro, cd_uf, cd_cidade, nm_pais, cd_pais, ds_regiao, cd_postal, tp_localizacao) FROM stdin;
\.


--
-- TOC entry 4869 (class 0 OID 16641)
-- Dependencies: 230
-- Data for Name: tb_profissional_especialidade; Type: TABLE DATA; Schema: rds; Owner: master_user
--

COPY rds.tb_profissional_especialidade (cd_profissional, cd_especialidade) FROM stdin;
\.


--
-- TOC entry 4903 (class 0 OID 18738)
-- Dependencies: 358
-- Data for Name: tb_prontuario_paciente; Type: TABLE DATA; Schema: rds; Owner: master_user
--

COPY rds.tb_prontuario_paciente (cd_prontuario, cd_pessoa, id_prontuario_pessoal, tx_meu_espaco) FROM stdin;
\.


--
-- TOC entry 4905 (class 0 OID 18769)
-- Dependencies: 360
-- Data for Name: tb_tratamento_prontuario; Type: TABLE DATA; Schema: rds; Owner: master_user
--

COPY rds.tb_tratamento_prontuario (cd_tratamento, cd_prontuario, cd_pessoa, tp_compromisso) FROM stdin;
\.


--
-- TOC entry 4873 (class 0 OID 16741)
-- Dependencies: 234
-- Data for Name: tb_usuario; Type: TABLE DATA; Schema: rds; Owner: master_user
--

COPY rds.tb_usuario (cd_usuario, ds_login, ds_senha, dt_criacao, cd_cpf, ds_email, dt_inicio, dt_fim) FROM stdin;
\.


--
-- TOC entry 4902 (class 0 OID 18710)
-- Dependencies: 357
-- Data for Name: tb_usuario_planos; Type: TABLE DATA; Schema: rds; Owner: master_user
--

COPY rds.tb_usuario_planos (cd_usuario, cd_plano, cd_pessoa_dependente, dt_inicio, dt_fim) FROM stdin;
\.


--
-- TOC entry 5153 (class 0 OID 0)
-- Dependencies: 261
-- Name: tb_especialidade_seq; Type: SEQUENCE SET; Schema: grl; Owner: master_user
--

SELECT pg_catalog.setval('grl.tb_especialidade_seq', 1, false);


--
-- TOC entry 5154 (class 0 OID 0)
-- Dependencies: 251
-- Name: tb_genero_seq; Type: SEQUENCE SET; Schema: grl; Owner: master_user
--

SELECT pg_catalog.setval('grl.tb_genero_seq', 1, false);


--
-- TOC entry 5155 (class 0 OID 0)
-- Dependencies: 253
-- Name: tb_grau_instrucao_seq; Type: SEQUENCE SET; Schema: grl; Owner: master_user
--

SELECT pg_catalog.setval('grl.tb_grau_instrucao_seq', 1, false);


--
-- TOC entry 5156 (class 0 OID 0)
-- Dependencies: 255
-- Name: tb_nacionalidade_seq; Type: SEQUENCE SET; Schema: grl; Owner: master_user
--

SELECT pg_catalog.setval('grl.tb_nacionalidade_seq', 1, false);


--
-- TOC entry 5157 (class 0 OID 0)
-- Dependencies: 245
-- Name: tb_orgao_emissor_seq; Type: SEQUENCE SET; Schema: grl; Owner: master_user
--

SELECT pg_catalog.setval('grl.tb_orgao_emissor_seq', 1, false);


--
-- TOC entry 5158 (class 0 OID 0)
-- Dependencies: 249
-- Name: tb_raca_seq; Type: SEQUENCE SET; Schema: grl; Owner: master_user
--

SELECT pg_catalog.setval('grl.tb_raca_seq', 1, false);


--
-- TOC entry 5159 (class 0 OID 0)
-- Dependencies: 257
-- Name: tb_religiao_seq; Type: SEQUENCE SET; Schema: grl; Owner: master_user
--

SELECT pg_catalog.setval('grl.tb_religiao_seq', 1, false);


--
-- TOC entry 5160 (class 0 OID 0)
-- Dependencies: 247
-- Name: tb_sexo_seq; Type: SEQUENCE SET; Schema: grl; Owner: master_user
--

SELECT pg_catalog.setval('grl.tb_sexo_seq', 1, false);


--
-- TOC entry 5161 (class 0 OID 0)
-- Dependencies: 241
-- Name: tb_organizacao_seq; Type: SEQUENCE SET; Schema: rds; Owner: master_user
--

SELECT pg_catalog.setval('rds.tb_organizacao_seq', 1, false);


--
-- TOC entry 5162 (class 0 OID 0)
-- Dependencies: 235
-- Name: tb_perfil_seq; Type: SEQUENCE SET; Schema: rds; Owner: master_user
--

SELECT pg_catalog.setval('rds.tb_perfil_seq', 5, true);


--
-- TOC entry 5163 (class 0 OID 0)
-- Dependencies: 238
-- Name: tb_pessoa_arquivo_seq; Type: SEQUENCE SET; Schema: rds; Owner: master_user
--

SELECT pg_catalog.setval('rds.tb_pessoa_arquivo_seq', 1, false);


--
-- TOC entry 5164 (class 0 OID 0)
-- Dependencies: 218
-- Name: tb_pessoa_cd_pessoa_seq; Type: SEQUENCE SET; Schema: rds; Owner: master_user
--

SELECT pg_catalog.setval('rds.tb_pessoa_seq', 1, false);


--
-- TOC entry 5165 (class 0 OID 0)
-- Dependencies: 220
-- Name: tb_pessoa_contato_seq; Type: SEQUENCE SET; Schema: rds; Owner: master_user
--

SELECT pg_catalog.setval('rds.tb_pessoa_contato_seq', 1, false);


--
-- TOC entry 5166 (class 0 OID 0)
-- Dependencies: 222
-- Name: tb_pessoa_endereco_seq; Type: SEQUENCE SET; Schema: rds; Owner: master_user
--

SELECT pg_catalog.setval('rds.tb_pessoa_endereco_seq', 1, false);


--
-- TOC entry 5167 (class 0 OID 0)
-- Dependencies: 231
-- Name: tb_plano_seq; Type: SEQUENCE SET; Schema: rds; Owner: master_user
--

SELECT pg_catalog.setval('rds.tb_plano_seq', 5, true);


--
-- TOC entry 5168 (class 0 OID 0)
-- Dependencies: 224
-- Name: tb_profissional_seq; Type: SEQUENCE SET; Schema: rds; Owner: master_user
--

SELECT pg_catalog.setval('rds.tb_profissional_seq', 1, false);


--
-- TOC entry 5169 (class 0 OID 0)
-- Dependencies: 226
-- Name: tb_profissional_contato_seq; Type: SEQUENCE SET; Schema: rds; Owner: master_user
--

SELECT pg_catalog.setval('rds.tb_profissional_contato_seq', 1, false);


--
-- TOC entry 5170 (class 0 OID 0)
-- Dependencies: 228
-- Name: tb_profissional_endereco_seq; Type: SEQUENCE SET; Schema: rds; Owner: master_user
--

SELECT pg_catalog.setval('rds.tb_profissional_endereco_seq', 1, false);


--
-- TOC entry 5171 (class 0 OID 0)
-- Dependencies: 361
-- Name: tb_tratamento_prontuario_seq; Type: SEQUENCE SET; Schema: rds; Owner: master_user
--

SELECT pg_catalog.setval('rds.tb_tratamento_prontuario_seq', 1, false);


--
-- TOC entry 5172 (class 0 OID 0)
-- Dependencies: 233
-- Name: tb_usuario_seq; Type: SEQUENCE SET; Schema: rds; Owner: master_user
--

SELECT pg_catalog.setval('rds.tb_usuario_seq', 1, false);


--
-- TOC entry 4646 (class 2606 OID 17021)
-- Name: tb_cbo pk_tb_cbo; Type: CONSTRAINT; Schema: grl; Owner: master_user
--

ALTER TABLE ONLY grl.tb_cbo
    ADD CONSTRAINT pk_tb_cbo PRIMARY KEY (cd_cbo);


--
-- TOC entry 4648 (class 2606 OID 17036)
-- Name: tb_cid pk_tb_cid; Type: CONSTRAINT; Schema: grl; Owner: master_user
--

ALTER TABLE ONLY grl.tb_cid
    ADD CONSTRAINT pk_tb_cid PRIMARY KEY (cd_cid);


--
-- TOC entry 4650 (class 2606 OID 17058)
-- Name: tb_especialidade pk_tb_especialidade; Type: CONSTRAINT; Schema: grl; Owner: master_user
--

ALTER TABLE ONLY grl.tb_especialidade
    ADD CONSTRAINT pk_tb_especialidade PRIMARY KEY (cd_especialidade);


--
-- TOC entry 4638 (class 2606 OID 16929)
-- Name: tb_genero tb_genero_pkey; Type: CONSTRAINT; Schema: grl; Owner: master_user
--

ALTER TABLE ONLY grl.tb_genero
    ADD CONSTRAINT tb_genero_pkey PRIMARY KEY (cd_genero);


--
-- TOC entry 4640 (class 2606 OID 16936)
-- Name: tb_grau_instrucao tb_grau_instrucao_pkey; Type: CONSTRAINT; Schema: grl; Owner: master_user
--

ALTER TABLE ONLY grl.tb_grau_instrucao
    ADD CONSTRAINT tb_grau_instrucao_pkey PRIMARY KEY (cd_grau_instrucao);


--
-- TOC entry 4642 (class 2606 OID 16943)
-- Name: tb_nacionalidade tb_nacionalidade_pkey; Type: CONSTRAINT; Schema: grl; Owner: master_user
--

ALTER TABLE ONLY grl.tb_nacionalidade
    ADD CONSTRAINT tb_nacionalidade_pkey PRIMARY KEY (cd_nacionalidade);


--
-- TOC entry 4632 (class 2606 OID 16908)
-- Name: tb_orgao_emissor tb_orgao_emissor_pkey; Type: CONSTRAINT; Schema: grl; Owner: master_user
--

ALTER TABLE ONLY grl.tb_orgao_emissor
    ADD CONSTRAINT tb_orgao_emissor_pkey PRIMARY KEY (cd_oe);


--
-- TOC entry 4636 (class 2606 OID 16922)
-- Name: tb_raca tb_raca_pkey; Type: CONSTRAINT; Schema: grl; Owner: master_user
--

ALTER TABLE ONLY grl.tb_raca
    ADD CONSTRAINT tb_raca_pkey PRIMARY KEY (cd_raca);


--
-- TOC entry 4644 (class 2606 OID 16950)
-- Name: tb_religiao tb_religiao_pkey; Type: CONSTRAINT; Schema: grl; Owner: master_user
--

ALTER TABLE ONLY grl.tb_religiao
    ADD CONSTRAINT tb_religiao_pkey PRIMARY KEY (cd_religiao);


--
-- TOC entry 4634 (class 2606 OID 16915)
-- Name: tb_sexo tb_sexo_pkey; Type: CONSTRAINT; Schema: grl; Owner: master_user
--

ALTER TABLE ONLY grl.tb_sexo
    ADD CONSTRAINT tb_sexo_pkey PRIMARY KEY (cd_sexo);


--
-- TOC entry 4630 (class 2606 OID 16901)
-- Name: tb_uf tb_uf_pkey; Type: CONSTRAINT; Schema: grl; Owner: master_user
--

ALTER TABLE ONLY grl.tb_uf
    ADD CONSTRAINT tb_uf_pkey PRIMARY KEY (cd_uf);


--
-- TOC entry 4662 (class 2606 OID 18853)
-- Name: tb_atd_prontuario_cid pk_tb_atd_prontuario_cid; Type: CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_atd_prontuario_cid
    ADD CONSTRAINT pk_tb_atd_prontuario_cid PRIMARY KEY (cd_atendimento, cd_cid);


--
-- TOC entry 4664 (class 2606 OID 18875)
-- Name: tb_pessoa_receituario pk_tb_atd_prontuario_receituario; Type: CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa_receituario
    ADD CONSTRAINT pk_tb_atd_prontuario_receituario PRIMARY KEY (cd_receituario);


--
-- TOC entry 4660 (class 2606 OID 18820)
-- Name: tb_atendimento_prontuario pk_tb_atendimento_prontuario; Type: CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_atendimento_prontuario
    ADD CONSTRAINT pk_tb_atendimento_prontuario PRIMARY KEY (cd_atendimento);


--
-- TOC entry 4626 (class 2606 OID 16823)
-- Name: tb_organizacao pk_tb_organizacao; Type: CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_organizacao
    ADD CONSTRAINT pk_tb_organizacao PRIMARY KEY (cd_organizacao);


--
-- TOC entry 4628 (class 2606 OID 16835)
-- Name: tb_organizacao_pessoas pk_tb_organizacao_pessoas; Type: CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_organizacao_pessoas
    ADD CONSTRAINT pk_tb_organizacao_pessoas PRIMARY KEY (cd_organizacao, cd_pessoa);


--
-- TOC entry 4618 (class 2606 OID 16764)
-- Name: tb_perfil pk_tb_perfil; Type: CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_perfil
    ADD CONSTRAINT pk_tb_perfil PRIMARY KEY (cd_perfil);


--
-- TOC entry 4620 (class 2606 OID 16769)
-- Name: tb_perfil_usuario pk_tb_perfil_usuario; Type: CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_perfil_usuario
    ADD CONSTRAINT pk_tb_perfil_usuario PRIMARY KEY (cd_usuario, cd_perfil);


--
-- TOC entry 4600 (class 2606 OID 16505)
-- Name: tb_pessoa pk_tb_pessoa; Type: CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa
    ADD CONSTRAINT pk_tb_pessoa PRIMARY KEY (cd_pessoa);


--
-- TOC entry 4656 (class 2606 OID 18760)
-- Name: tb_pessoa_agenda pk_tb_pessoa_agenda; Type: CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa_agenda
    ADD CONSTRAINT pk_tb_pessoa_agenda PRIMARY KEY (cd_agenda);


--
-- TOC entry 4622 (class 2606 OID 16788)
-- Name: tb_pessoa_arquivo pk_tb_pessoa_arquivo; Type: CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa_arquivo
    ADD CONSTRAINT pk_tb_pessoa_arquivo PRIMARY KEY (cd_arquivo);


--
-- TOC entry 4602 (class 2606 OID 16557)
-- Name: tb_pessoa_contato pk_tb_pessoa_contato; Type: CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa_contato
    ADD CONSTRAINT pk_tb_pessoa_contato PRIMARY KEY (cd_contato);


--
-- TOC entry 4604 (class 2606 OID 16572)
-- Name: tb_pessoa_endereco pk_tb_pessoa_endereco; Type: CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa_endereco
    ADD CONSTRAINT pk_tb_pessoa_endereco PRIMARY KEY (cd_endereco);


--
-- TOC entry 4624 (class 2606 OID 16804)
-- Name: tb_pessoa_outros pk_tb_pessoa_outros; Type: CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa_outros
    ADD CONSTRAINT pk_tb_pessoa_outros PRIMARY KEY (cd_pessoa);


--
-- TOC entry 4614 (class 2606 OID 16739)
-- Name: tb_plano pk_tb_plano; Type: CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_plano
    ADD CONSTRAINT pk_tb_plano PRIMARY KEY (cd_plano);


--
-- TOC entry 4606 (class 2606 OID 16588)
-- Name: tb_profissional pk_tb_profissional; Type: CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_profissional
    ADD CONSTRAINT pk_tb_profissional PRIMARY KEY (cd_profissional);


--
-- TOC entry 4608 (class 2606 OID 16610)
-- Name: tb_profissional_contato pk_tb_profissional_contato; Type: CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_profissional_contato
    ADD CONSTRAINT pk_tb_profissional_contato PRIMARY KEY (cd_contato);


--
-- TOC entry 4610 (class 2606 OID 16624)
-- Name: tb_profissional_endereco pk_tb_profissional_endereco; Type: CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_profissional_endereco
    ADD CONSTRAINT pk_tb_profissional_endereco PRIMARY KEY (cd_endereco);


--
-- TOC entry 4612 (class 2606 OID 16645)
-- Name: tb_profissional_especialidade pk_tb_profissional_especialidade; Type: CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_profissional_especialidade
    ADD CONSTRAINT pk_tb_profissional_especialidade PRIMARY KEY (cd_profissional, cd_especialidade);


--
-- TOC entry 4654 (class 2606 OID 18768)
-- Name: tb_prontuario_paciente pk_tb_prontuario_paciente; Type: CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_prontuario_paciente
    ADD CONSTRAINT pk_tb_prontuario_paciente PRIMARY KEY (cd_prontuario);


--
-- TOC entry 4658 (class 2606 OID 18774)
-- Name: tb_tratamento_prontuario pk_tb_tratamento_prontuario; Type: CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_tratamento_prontuario
    ADD CONSTRAINT pk_tb_tratamento_prontuario PRIMARY KEY (cd_tratamento);


--
-- TOC entry 4616 (class 2606 OID 16748)
-- Name: tb_usuario pk_tb_usuario; Type: CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_usuario
    ADD CONSTRAINT pk_tb_usuario PRIMARY KEY (cd_usuario);


--
-- TOC entry 4652 (class 2606 OID 18736)
-- Name: tb_usuario_planos pk_tb_usuario_planos; Type: CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_usuario_planos
    ADD CONSTRAINT pk_tb_usuario_planos PRIMARY KEY (cd_usuario, cd_plano, dt_inicio);


--
-- TOC entry 4707 (class 2606 OID 18854)
-- Name: tb_atd_prontuario_cid fk_tb_atd_prontuario_cid_cd_atendimento; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_atd_prontuario_cid
    ADD CONSTRAINT fk_tb_atd_prontuario_cid_cd_atendimento FOREIGN KEY (cd_atendimento) REFERENCES rds.tb_atendimento_prontuario(cd_atendimento);


--
-- TOC entry 4708 (class 2606 OID 18864)
-- Name: tb_atd_prontuario_cid fk_tb_atd_prontuario_cid_cd_cid; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_atd_prontuario_cid
    ADD CONSTRAINT fk_tb_atd_prontuario_cid_cd_cid FOREIGN KEY (cd_cid) REFERENCES grl.tb_cid(cd_cid);


--
-- TOC entry 4709 (class 2606 OID 18859)
-- Name: tb_atd_prontuario_cid fk_tb_atd_prontuario_cid_cd_prontuario; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_atd_prontuario_cid
    ADD CONSTRAINT fk_tb_atd_prontuario_cid_cd_prontuario FOREIGN KEY (cd_prontuario) REFERENCES rds.tb_prontuario_paciente(cd_prontuario);


--
-- TOC entry 4710 (class 2606 OID 18881)
-- Name: tb_pessoa_receituario fk_tb_atd_prontuario_receituario_cd_atendimento; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa_receituario
    ADD CONSTRAINT fk_tb_atd_prontuario_receituario_cd_atendimento FOREIGN KEY (cd_atendimento) REFERENCES rds.tb_atendimento_prontuario(cd_atendimento);


--
-- TOC entry 4711 (class 2606 OID 18886)
-- Name: tb_pessoa_receituario fk_tb_atd_prontuario_receituario_cd_profissional; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa_receituario
    ADD CONSTRAINT fk_tb_atd_prontuario_receituario_cd_profissional FOREIGN KEY (cd_profissional) REFERENCES rds.tb_profissional(cd_profissional);


--
-- TOC entry 4712 (class 2606 OID 18876)
-- Name: tb_pessoa_receituario fk_tb_atd_prontuario_receituario_cd_prontuario; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa_receituario
    ADD CONSTRAINT fk_tb_atd_prontuario_receituario_cd_prontuario FOREIGN KEY (cd_prontuario) REFERENCES rds.tb_prontuario_paciente(cd_prontuario);


--
-- TOC entry 4702 (class 2606 OID 18841)
-- Name: tb_atendimento_prontuario fk_tb_atendimento_prontuario_cd_agenda; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_atendimento_prontuario
    ADD CONSTRAINT fk_tb_atendimento_prontuario_cd_agenda FOREIGN KEY (cd_agenda) REFERENCES rds.tb_pessoa_agenda(cd_agenda);


--
-- TOC entry 4703 (class 2606 OID 18831)
-- Name: tb_atendimento_prontuario fk_tb_atendimento_prontuario_cd_pessoa; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_atendimento_prontuario
    ADD CONSTRAINT fk_tb_atendimento_prontuario_cd_pessoa FOREIGN KEY (cd_pessoa) REFERENCES rds.tb_pessoa(cd_pessoa);


--
-- TOC entry 4704 (class 2606 OID 18836)
-- Name: tb_atendimento_prontuario fk_tb_atendimento_prontuario_cd_profissional; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_atendimento_prontuario
    ADD CONSTRAINT fk_tb_atendimento_prontuario_cd_profissional FOREIGN KEY (cd_profissional) REFERENCES rds.tb_profissional(cd_profissional);


--
-- TOC entry 4705 (class 2606 OID 18826)
-- Name: tb_atendimento_prontuario fk_tb_atendimento_prontuario_cd_prontuario; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_atendimento_prontuario
    ADD CONSTRAINT fk_tb_atendimento_prontuario_cd_prontuario FOREIGN KEY (cd_prontuario) REFERENCES rds.tb_prontuario_paciente(cd_prontuario);


--
-- TOC entry 4706 (class 2606 OID 18821)
-- Name: tb_atendimento_prontuario fk_tb_atendimento_prontuario_cd_tratamento; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_atendimento_prontuario
    ADD CONSTRAINT fk_tb_atendimento_prontuario_cd_tratamento FOREIGN KEY (cd_tratamento) REFERENCES rds.tb_tratamento_prontuario(cd_tratamento);


--
-- TOC entry 4692 (class 2606 OID 16824)
-- Name: tb_organizacao fk_tb_organizacao_cd_pessoa_representante; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_organizacao
    ADD CONSTRAINT fk_tb_organizacao_cd_pessoa_representante FOREIGN KEY (cd_pessoa_representante) REFERENCES rds.tb_pessoa(cd_pessoa);


--
-- TOC entry 4693 (class 2606 OID 16836)
-- Name: tb_organizacao_pessoas fk_tb_organizacao_pessoas_cd_organizacao; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_organizacao_pessoas
    ADD CONSTRAINT fk_tb_organizacao_pessoas_cd_organizacao FOREIGN KEY (cd_organizacao) REFERENCES rds.tb_organizacao(cd_organizacao);


--
-- TOC entry 4694 (class 2606 OID 16841)
-- Name: tb_organizacao_pessoas fk_tb_organizacao_pessoas_cd_pessoa; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_organizacao_pessoas
    ADD CONSTRAINT fk_tb_organizacao_pessoas_cd_pessoa FOREIGN KEY (cd_pessoa) REFERENCES rds.tb_pessoa(cd_pessoa);


--
-- TOC entry 4687 (class 2606 OID 16775)
-- Name: tb_perfil_usuario fk_tb_perfil_usuario_cd_perfil; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_perfil_usuario
    ADD CONSTRAINT fk_tb_perfil_usuario_cd_perfil FOREIGN KEY (cd_perfil) REFERENCES rds.tb_perfil(cd_perfil);


--
-- TOC entry 4688 (class 2606 OID 16770)
-- Name: tb_perfil_usuario fk_tb_perfil_usuario_cd_usuario; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_perfil_usuario
    ADD CONSTRAINT fk_tb_perfil_usuario_cd_usuario FOREIGN KEY (cd_usuario) REFERENCES rds.tb_usuario(cd_usuario);


--
-- TOC entry 4689 (class 2606 OID 16789)
-- Name: tb_pessoa_arquivo fk_tb_pessoa_arquivo_cd_pessoa; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa_arquivo
    ADD CONSTRAINT fk_tb_pessoa_arquivo_cd_pessoa FOREIGN KEY (cd_pessoa) REFERENCES rds.tb_pessoa(cd_pessoa);


--
-- TOC entry 4665 (class 2606 OID 16951)
-- Name: tb_pessoa fk_tb_pessoa_cd_conjuge; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa
    ADD CONSTRAINT fk_tb_pessoa_cd_conjuge FOREIGN KEY (cd_conjuge) REFERENCES rds.tb_pessoa(cd_pessoa);


--
-- TOC entry 4666 (class 2606 OID 16956)
-- Name: tb_pessoa fk_tb_pessoa_cd_genero; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa
    ADD CONSTRAINT fk_tb_pessoa_cd_genero FOREIGN KEY (cd_genero) REFERENCES grl.tb_genero(cd_genero);


--
-- TOC entry 4667 (class 2606 OID 16961)
-- Name: tb_pessoa fk_tb_pessoa_cd_grau_instrucao; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa
    ADD CONSTRAINT fk_tb_pessoa_cd_grau_instrucao FOREIGN KEY (cd_grau_instrucao) REFERENCES grl.tb_grau_instrucao(cd_grau_instrucao);


--
-- TOC entry 4668 (class 2606 OID 16966)
-- Name: tb_pessoa fk_tb_pessoa_cd_nacionalidade; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa
    ADD CONSTRAINT fk_tb_pessoa_cd_nacionalidade FOREIGN KEY (cd_nacionalidade) REFERENCES grl.tb_nacionalidade(cd_nacionalidade);


--
-- TOC entry 4699 (class 2606 OID 18754)
-- Name: tb_pessoa_agenda fk_tb_pessoa_cd_pessoa; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa_agenda
    ADD CONSTRAINT fk_tb_pessoa_cd_pessoa FOREIGN KEY (cd_pessoa) REFERENCES rds.tb_pessoa(cd_pessoa);


--
-- TOC entry 4669 (class 2606 OID 16971)
-- Name: tb_pessoa fk_tb_pessoa_cd_raca; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa
    ADD CONSTRAINT fk_tb_pessoa_cd_raca FOREIGN KEY (cd_raca) REFERENCES grl.tb_raca(cd_raca);


--
-- TOC entry 4670 (class 2606 OID 16976)
-- Name: tb_pessoa fk_tb_pessoa_cd_religiao; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa
    ADD CONSTRAINT fk_tb_pessoa_cd_religiao FOREIGN KEY (cd_religiao) REFERENCES grl.tb_religiao(cd_religiao);


--
-- TOC entry 4671 (class 2606 OID 16981)
-- Name: tb_pessoa fk_tb_pessoa_cd_responsavel; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa
    ADD CONSTRAINT fk_tb_pessoa_cd_responsavel FOREIGN KEY (cd_responsavel) REFERENCES rds.tb_pessoa(cd_pessoa);


--
-- TOC entry 4672 (class 2606 OID 16986)
-- Name: tb_pessoa fk_tb_pessoa_cd_sexo; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa
    ADD CONSTRAINT fk_tb_pessoa_cd_sexo FOREIGN KEY (cd_sexo) REFERENCES grl.tb_sexo(cd_sexo);


--
-- TOC entry 4673 (class 2606 OID 16991)
-- Name: tb_pessoa fk_tb_pessoa_cd_uf; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa
    ADD CONSTRAINT fk_tb_pessoa_cd_uf FOREIGN KEY (cd_uf) REFERENCES grl.tb_uf(cd_uf);


--
-- TOC entry 4674 (class 2606 OID 17069)
-- Name: tb_pessoa fk_tb_pessoa_cd_usuario; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa
    ADD CONSTRAINT fk_tb_pessoa_cd_usuario FOREIGN KEY (cd_usuario) REFERENCES rds.tb_usuario(cd_usuario);


--
-- TOC entry 4675 (class 2606 OID 16558)
-- Name: tb_pessoa_contato fk_tb_pessoa_contato_cd_pessoa; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa_contato
    ADD CONSTRAINT fk_tb_pessoa_contato_cd_pessoa FOREIGN KEY (cd_pessoa) REFERENCES rds.tb_pessoa(cd_pessoa);


--
-- TOC entry 4676 (class 2606 OID 16573)
-- Name: tb_pessoa_endereco fk_tb_pessoa_endereco_cd_pessoa; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa_endereco
    ADD CONSTRAINT fk_tb_pessoa_endereco_cd_pessoa FOREIGN KEY (cd_pessoa) REFERENCES rds.tb_pessoa(cd_pessoa);


--
-- TOC entry 4677 (class 2606 OID 16997)
-- Name: tb_pessoa_endereco fk_tb_pessoa_endereco_cd_uf; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa_endereco
    ADD CONSTRAINT fk_tb_pessoa_endereco_cd_uf FOREIGN KEY (cd_uf) REFERENCES grl.tb_uf(cd_uf);


--
-- TOC entry 4690 (class 2606 OID 17027)
-- Name: tb_pessoa_outros fk_tb_pessoa_outros_cd_cbo; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa_outros
    ADD CONSTRAINT fk_tb_pessoa_outros_cd_cbo FOREIGN KEY (cd_cbo) REFERENCES grl.tb_cbo(cd_cbo);


--
-- TOC entry 4691 (class 2606 OID 16805)
-- Name: tb_pessoa_outros fk_tb_pessoa_outros_cd_pessoa; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa_outros
    ADD CONSTRAINT fk_tb_pessoa_outros_cd_pessoa FOREIGN KEY (cd_pessoa) REFERENCES rds.tb_pessoa(cd_pessoa);


--
-- TOC entry 4713 (class 2606 OID 18891)
-- Name: tb_pessoa_receituario fk_tb_pessoa_receituario_cd_pessoa; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_pessoa_receituario
    ADD CONSTRAINT fk_tb_pessoa_receituario_cd_pessoa FOREIGN KEY (cd_pessoa) REFERENCES rds.tb_pessoa(cd_pessoa);


--
-- TOC entry 4678 (class 2606 OID 17064)
-- Name: tb_profissional fk_tb_profissional_cd_oe; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_profissional
    ADD CONSTRAINT fk_tb_profissional_cd_oe FOREIGN KEY (cd_oe) REFERENCES grl.tb_orgao_emissor(cd_oe);


--
-- TOC entry 4679 (class 2606 OID 16589)
-- Name: tb_profissional fk_tb_profissional_cd_pessoa; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_profissional
    ADD CONSTRAINT fk_tb_profissional_cd_pessoa FOREIGN KEY (cd_pessoa) REFERENCES rds.tb_pessoa(cd_pessoa);


--
-- TOC entry 4680 (class 2606 OID 18897)
-- Name: tb_profissional fk_tb_profissional_cd_pessoa_cadastro; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_profissional
    ADD CONSTRAINT fk_tb_profissional_cd_pessoa_cadastro FOREIGN KEY (cd_pessoa_cadastro) REFERENCES rds.tb_pessoa(cd_pessoa);


--
-- TOC entry 4681 (class 2606 OID 17002)
-- Name: tb_profissional fk_tb_profissional_cd_uf; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_profissional
    ADD CONSTRAINT fk_tb_profissional_cd_uf FOREIGN KEY (cd_uf) REFERENCES grl.tb_uf(cd_uf);


--
-- TOC entry 4682 (class 2606 OID 16611)
-- Name: tb_profissional_contato fk_tb_profissional_contato_cd_profissional; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_profissional_contato
    ADD CONSTRAINT fk_tb_profissional_contato_cd_profissional FOREIGN KEY (cd_profissional) REFERENCES rds.tb_profissional(cd_profissional);


--
-- TOC entry 4683 (class 2606 OID 16625)
-- Name: tb_profissional_endereco fk_tb_profissional_endereco_cd_profissional; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_profissional_endereco
    ADD CONSTRAINT fk_tb_profissional_endereco_cd_profissional FOREIGN KEY (cd_profissional) REFERENCES rds.tb_profissional(cd_profissional);


--
-- TOC entry 4684 (class 2606 OID 17012)
-- Name: tb_profissional_endereco fk_tb_profissional_endereco_cd_uf; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_profissional_endereco
    ADD CONSTRAINT fk_tb_profissional_endereco_cd_uf FOREIGN KEY (cd_uf) REFERENCES grl.tb_uf(cd_uf);


--
-- TOC entry 4685 (class 2606 OID 17059)
-- Name: tb_profissional_especialidade fk_tb_profissional_especialidade_cd_especialidade; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_profissional_especialidade
    ADD CONSTRAINT fk_tb_profissional_especialidade_cd_especialidade FOREIGN KEY (cd_especialidade) REFERENCES grl.tb_especialidade(cd_especialidade);


--
-- TOC entry 4686 (class 2606 OID 16646)
-- Name: tb_profissional_especialidade fk_tb_profissional_especialidade_cd_profissional; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_profissional_especialidade
    ADD CONSTRAINT fk_tb_profissional_especialidade_cd_profissional FOREIGN KEY (cd_profissional) REFERENCES rds.tb_profissional(cd_profissional);


--
-- TOC entry 4698 (class 2606 OID 18745)
-- Name: tb_prontuario_paciente fk_tb_prontuario_paciente_cd_pessoa; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_prontuario_paciente
    ADD CONSTRAINT fk_tb_prontuario_paciente_cd_pessoa FOREIGN KEY (cd_pessoa) REFERENCES rds.tb_pessoa(cd_pessoa);


--
-- TOC entry 4700 (class 2606 OID 18785)
-- Name: tb_tratamento_prontuario fk_tb_tratamento_prontuario_cd_pessoa; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_tratamento_prontuario
    ADD CONSTRAINT fk_tb_tratamento_prontuario_cd_pessoa FOREIGN KEY (cd_pessoa) REFERENCES rds.tb_pessoa(cd_pessoa);


--
-- TOC entry 4701 (class 2606 OID 18775)
-- Name: tb_tratamento_prontuario fk_tb_tratamento_prontuario_cd_prontuario; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_tratamento_prontuario
    ADD CONSTRAINT fk_tb_tratamento_prontuario_cd_prontuario FOREIGN KEY (cd_prontuario) REFERENCES rds.tb_prontuario_paciente(cd_prontuario);


--
-- TOC entry 4695 (class 2606 OID 18725)
-- Name: tb_usuario_planos fk_tb_usuario_planos_cd_pessoa_dependente; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_usuario_planos
    ADD CONSTRAINT fk_tb_usuario_planos_cd_pessoa_dependente FOREIGN KEY (cd_pessoa_dependente) REFERENCES rds.tb_pessoa(cd_pessoa);


--
-- TOC entry 4696 (class 2606 OID 18720)
-- Name: tb_usuario_planos fk_tb_usuario_planos_cd_plano; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_usuario_planos
    ADD CONSTRAINT fk_tb_usuario_planos_cd_plano FOREIGN KEY (cd_plano) REFERENCES rds.tb_plano(cd_plano);


--
-- TOC entry 4697 (class 2606 OID 18730)
-- Name: tb_usuario_planos fk_tb_usuario_planos_cd_usuario; Type: FK CONSTRAINT; Schema: rds; Owner: master_user
--

ALTER TABLE ONLY rds.tb_usuario_planos
    ADD CONSTRAINT fk_tb_usuario_planos_cd_usuario FOREIGN KEY (cd_usuario) REFERENCES rds.tb_usuario(cd_usuario);

CREATE TABLE grl.tb_cidades (
    cd_uf character varying(2),
    cd_ibge integer NOT NULL,
    ds_nome_cidade character varying(50)
);

ALTER TABLE grl.tb_cidades OWNER TO master_user;

COPY grl.tb_cidades (cd_uf, cd_ibge, ds_nome_cidade) FROM stdin;
TO	170040	Almas
CE	230100	Aquiraz
CE	231335	Tejuçuoca
PB	251090	Paulista
SP	351200	Colina
SP	352585	Jumirim
SP	354075	Potim
PR	411960	Pitanga
RS	432010	Sarandi
RO	110001	Alta Floresta D'Oeste
RO	110037	Alto Alegre dos Parecis
RO	110040	Alto Paraíso
RO	110034	Alvorada D'Oeste
RO	110002	Ariquemes
RO	110045	Buritis
RO	110003	Cabixi
RO	110060	Cacaulândia
RO	110004	Cacoal
RO	110070	Campo Novo de Rondônia
RO	110080	Candeias do Jamari
RO	110090	Castanheiras
RO	110005	Cerejeiras
RO	110092	Chupinguaia
RO	110006	Colorado do Oeste
RO	110007	Corumbiara
RO	110008	Costa Marques
RO	110094	Cujubim
RO	110009	Espigão D'Oeste
RO	110100	Governador Jorge Teixeira
RO	110010	Guajará-Mirim
RO	110110	Itapuã do Oeste
RO	110011	Jaru
RO	110012	Ji-Paraná
RO	110013	Machadinho D'Oeste
RO	110120	Ministro Andreazza
RO	110130	Mirante da Serra
RO	110140	Monte Negro
RO	110014	Nova Brasilândia D'Oeste
RO	110033	Nova Mamoré
RO	110143	Nova União
RO	110050	Novo Horizonte do Oeste
RO	110015	Ouro Preto do Oeste
RO	110145	Parecis
RO	110018	Pimenta Bueno
RO	110146	Pimenteiras do Oeste
RO	110020	Porto Velho
RO	110025	Presidente Médici
RO	110147	Primavera de Rondônia
RO	110026	Rio Crespo
RO	110028	Rolim de Moura
RO	110029	Santa Luzia D'Oeste
RO	110148	São Felipe D'Oeste
RO	110149	São Francisco do Guaporé
RO	110032	São Miguel do Guaporé
RO	110150	Seringueiras
RO	110155	Teixeirópolis
RO	110160	Theobroma
RO	110170	Urupá
RO	110175	Vale do Anari
RO	110180	Vale do Paraíso
RO	110030	Vilhena
AC	120001	Acrelândia
AC	120005	Assis Brasil
AC	120010	Brasiléia
AC	120013	Bujari
AC	120017	Capixaba
AC	120020	Cruzeiro do Sul
AC	120025	Epitaciolândia
AC	120030	Feijó
AC	120032	Jordão
AC	120033	Mâncio Lima
AC	120034	Manoel Urbano
AC	120035	Marechal Thaumaturgo
AC	120038	Plácido de Castro
AC	120080	Porto Acre
AC	120039	Porto Walter
AC	120040	Rio Branco
AC	120042	Rodrigues Alves
AC	120043	Santa Rosa do Purus
AC	120050	Sena Madureira
AC	120045	Senador Guiomard
AC	120060	Tarauacá
AC	120070	Xapuri
AM	130002	Alvarães
AM	130006	Amaturá
AM	130008	Anamã
AM	130010	Anori
AM	130014	Apuí
AM	130020	Atalaia do Norte
AM	130030	Autazes
AM	130040	Barcelos
AM	130050	Barreirinha
AM	130060	Benjamin Constant
AM	130063	Beruri
AM	130068	Boa Vista do Ramos
AM	130070	Boca do Acre
AM	130080	Borba
AM	130083	Caapiranga
AM	130090	Canutama
AM	130100	Carauari
AM	130110	Careiro
AM	130115	Careiro da Várzea
AM	130120	Coari
AM	130130	Codajás
AM	130140	Eirunepé
AM	130150	Envira
AM	130160	Fonte Boa
AM	130165	Guajará
AM	130170	Humaitá
AM	130180	Ipixuna
AM	130185	Iranduba
AM	130190	Itacoatiara
AM	130195	Itamarati
AM	130200	Itapiranga
AM	130210	Japurá
AM	130220	Juruá
AM	130230	Jutaí
AM	130240	Lábrea
AM	130250	Manacapuru
AM	130255	Manaquiri
AM	130260	Manaus
AM	130270	Manicoré
AM	130280	Maraã
AM	130290	Maués
AM	130300	Nhamundá
AM	130310	Nova Olinda do Norte
AM	130320	Novo Airão
AM	130330	Novo Aripuanã
AM	130340	Parintins
AM	130350	Pauini
AM	130353	Presidente Figueiredo
AM	130356	Rio Preto da Eva
AM	130360	Santa Isabel do Rio Negro
AM	130370	Santo Antônio do Içá
AM	130380	São Gabriel da Cachoeira
AM	130390	São Paulo de Olivença
AM	130395	São Sebastião do Uatumã
AM	130400	Silves
AM	130406	Tabatinga
AM	130410	Tapauá
AM	130420	Tefé
AM	130423	Tonantins
AM	130426	Uarini
AM	130430	Urucará
AM	130440	Urucurituba
RR	140005	Alto Alegre
RR	140002	Amajari
RR	140010	Boa Vista
RR	140015	Bonfim
RR	140017	Cantá
RR	140020	Caracaraí
RR	140023	Caroebe
RR	140028	Iracema
RR	140030	Mucajaí
RR	140040	Normandia
RR	140045	Pacaraima
RR	140047	Rorainópolis
RR	140050	São João da Baliza
RR	140060	São Luiz
RR	140070	Uiramutã
PA	150010	Abaetetuba
PA	150013	Abel Figueiredo
PA	150020	Acará
PA	150030	Afuá
PA	150034	Água Azul do Norte
PA	150040	Alenquer
PA	150050	Almeirim
PA	150060	Altamira
PA	150070	Anajás
PA	150080	Ananindeua
PA	150085	Anapu
PA	150090	Augusto Corrêa
PA	150095	Aurora do Pará
PA	150100	Aveiro
PA	150110	Bagre
PA	150120	Baião
PA	150125	Bannach
PA	150130	Barcarena
PA	150140	Belém
PA	150145	Belterra
PA	150150	Benevides
PA	150157	Bom Jesus do Tocantins
PA	150160	Bonito
PA	150170	Bragança
PA	150172	Brasil Novo
PA	150175	Brejo Grande do Araguaia
PA	150178	Breu Branco
PA	150180	Breves
PA	150190	Bujaru
PA	150200	Cachoeira do Arari
PA	150195	Cachoeira do Piriá
PA	150210	Cametá
PA	150215	Canaã dos Carajás
PA	150220	Capanema
PA	150230	Capitão Poço
PA	150240	Castanhal
PA	150250	Chaves
PA	150260	Colares
PA	150270	Conceição do Araguaia
PA	150275	Concórdia do Pará
PA	150276	Cumaru do Norte
PA	150277	Curionópolis
PA	150280	Curralinho
PA	150285	Curuá
PA	150290	Curuçá
PA	150293	Dom Eliseu
PA	150295	Eldorado do Carajás
PA	150300	Faro
PA	150304	Floresta do Araguaia
PA	150307	Garrafão do Norte
PA	150309	Goianésia do Pará
PA	150310	Gurupá
PA	150320	Igarapé-Açu
PA	150330	Igarapé-Miri
PA	150340	Inhangapi
PA	150345	Ipixuna do Pará
PA	150350	Irituia
PA	150360	Itaituba
PA	150370	Itupiranga
PA	150375	Jacareacanga
PA	150380	Jacundá
PA	150390	Juruti
PA	150400	Limoeiro do Ajuru
PA	150405	Mãe do Rio
PA	150410	Magalhães Barata
PA	150420	Marabá
PA	150430	Maracanã
PA	150440	Marapanim
PA	150442	Marituba
PA	150445	Medicilândia
PA	150450	Melgaço
PA	150460	Mocajuba
PA	150470	Moju
PA	150475	Mojuí dos Campos
PA	150480	Monte Alegre
PA	150490	Muaná
PA	150495	Nova Esperança do Piriá
PA	150497	Nova Ipixuna
PA	150500	Nova Timboteua
PA	150503	Novo Progresso
PA	150506	Novo Repartimento
PA	150510	Óbidos
PA	150520	Oeiras do Pará
PA	150530	Oriximiná
PA	150540	Ourém
PA	150543	Ourilândia do Norte
PA	150548	Pacajá
PA	150549	Palestina do Pará
PA	150550	Paragominas
PA	150553	Parauapebas
PA	150555	Pau D'Arco
PA	150560	Peixe-Boi
PA	150563	Piçarra
PA	150565	Placas
PA	150570	Ponta de Pedras
PA	150580	Portel
PA	150590	Porto de Moz
PA	150600	Prainha
PA	150610	Primavera
PA	150611	Quatipuru
PA	150613	Redenção
PA	150616	Rio Maria
PA	150618	Rondon do Pará
PA	150619	Rurópolis
PA	150620	Salinópolis
PA	150630	Salvaterra
PA	150635	Santa Bárbara do Pará
PA	150640	Santa Cruz do Arari
PA	150650	Santa Izabel do Pará
PA	150655	Santa Luzia do Pará
PA	150658	Santa Maria das Barreiras
PA	150660	Santa Maria do Pará
PA	150670	Santana do Araguaia
PA	150680	Santarém
PA	150690	Santarém Novo
PA	150700	Santo Antônio do Tauá
PA	150710	São Caetano de Odivelas
PA	150715	São Domingos do Araguaia
PA	150720	São Domingos do Capim
PA	150730	São Félix do Xingu
PA	150740	São Francisco do Pará
PA	150745	São Geraldo do Araguaia
PA	150746	São João da Ponta
PA	150747	São João de Pirabas
PA	150750	São João do Araguaia
PA	150760	São Miguel do Guamá
PA	150770	São Sebastião da Boa Vista
PA	150775	Sapucaia
PA	150780	Senador José Porfírio
PA	150790	Soure
PA	150795	Tailândia
PA	150796	Terra Alta
PA	150797	Terra Santa
PA	150800	Tomé-Açu
PA	150803	Tracuateua
PA	150805	Trairão
PA	150808	Tucumã
PA	150810	Tucuruí
PA	150812	Ulianópolis
PA	150815	Uruará
PA	150820	Vigia
PA	150830	Viseu
PA	150835	Vitória do Xingu
PA	150840	Xinguara
AP	160010	Amapá
AP	160020	Calçoene
AP	160021	Cutias
AP	160023	Ferreira Gomes
AP	160025	Itaubal
AP	160027	Laranjal do Jari
AP	160030	Macapá
AP	160040	Mazagão
AP	160050	Oiapoque
AP	160015	Pedra Branca do Amapari
AP	160053	Porto Grande
AP	160055	Pracuúba
AP	160060	Santana
AP	160005	Serra do Navio
AP	160070	Tartarugalzinho
AP	160080	Vitória do Jari
TO	170025	Abreulândia
TO	170030	Aguiarnópolis
TO	170035	Aliança do Tocantins
TO	170070	Alvorada
TO	170100	Ananás
TO	170105	Angico
TO	170110	Aparecida do Rio Negro
TO	170130	Aragominas
TO	170190	Araguacema
TO	170200	Araguaçu
TO	170210	Araguaína
TO	170215	Araguanã
TO	170220	Araguatins
TO	170230	Arapoema
TO	170240	Arraias
TO	170255	Augustinópolis
TO	170270	Aurora do Tocantins
TO	170290	Axixá do Tocantins
TO	170300	Babaçulândia
TO	170305	Bandeirantes do Tocantins
TO	170307	Barra do Ouro
TO	170310	Barrolândia
TO	170320	Bernardo Sayão
TO	170330	Bom Jesus do Tocantins
TO	170360	Brasilândia do Tocantins
TO	170370	Brejinho de Nazaré
TO	170380	Buriti do Tocantins
TO	170382	Cachoeirinha
TO	170384	Campos Lindos
TO	170386	Cariri do Tocantins
TO	170388	Carmolândia
TO	170389	Carrasco Bonito
TO	170390	Caseara
TO	170410	Centenário
TO	170510	Chapada da Natividade
TO	170460	Chapada de Areia
TO	170550	Colinas do Tocantins
TO	171670	Colméia
TO	170555	Combinado
TO	170560	Conceição do Tocantins
TO	170600	Couto Magalhães
TO	170610	Cristalândia
TO	170625	Crixás do Tocantins
TO	170650	Darcinópolis
TO	170700	Dianópolis
TO	170710	Divinópolis do Tocantins
TO	170720	Dois Irmãos do Tocantins
TO	170730	Dueré
TO	170740	Esperantina
TO	170755	Fátima
TO	170765	Figueirópolis
TO	170770	Filadélfia
TO	170820	Formoso do Araguaia
TO	170830	Goianorte
TO	170900	Goiatins
TO	170930	Guaraí
TO	170950	Gurupi
TO	170980	Ipueiras
TO	171050	Itacajá
TO	171070	Itaguatins
TO	171090	Itapiratins
TO	171110	Itaporã do Tocantins
TO	171150	Jaú do Tocantins
TO	171180	Juarina
TO	171190	Lagoa da Confusão
TO	171195	Lagoa do Tocantins
TO	171200	Lajeado
TO	171215	Lavandeira
TO	171240	Lizarda
TO	171245	Luzinópolis
TO	171250	Marianópolis do Tocantins
TO	171270	Mateiros
TO	171280	Maurilândia do Tocantins
TO	171320	Miracema do Tocantins
TO	171330	Miranorte
TO	171360	Monte do Carmo
TO	171370	Monte Santo do Tocantins
TO	171395	Muricilândia
TO	171420	Natividade
TO	171430	Nazaré
TO	171488	Nova Olinda
TO	171500	Nova Rosalândia
TO	171510	Novo Acordo
TO	171515	Novo Alegre
TO	171525	Novo Jardim
TO	171550	Oliveira de Fátima
TO	172100	Palmas
TO	171570	Palmeirante
TO	171380	Palmeiras do Tocantins
TO	171575	Palmeirópolis
TO	171610	Paraíso do Tocantins
TO	171620	Paranã
TO	171630	Pau D'Arco
TO	171650	Pedro Afonso
TO	171660	Peixe
TO	171665	Pequizeiro
TO	171700	Pindorama do Tocantins
TO	171720	Piraquê
TO	171750	Pium
TO	171780	Ponte Alta do Bom Jesus
TO	171790	Ponte Alta do Tocantins
TO	171800	Porto Alegre do Tocantins
TO	171820	Porto Nacional
TO	171830	Praia Norte
TO	171840	Presidente Kennedy
TO	171845	Pugmil
TO	171850	Recursolândia
TO	171855	Riachinho
TO	171865	Rio da Conceição
TO	171870	Rio dos Bois
TO	171875	Rio Sono
TO	171880	Sampaio
TO	171884	Sandolândia
TO	171886	Santa Fé do Araguaia
TO	171888	Santa Maria do Tocantins
TO	171889	Santa Rita do Tocantins
TO	171890	Santa Rosa do Tocantins
TO	171900	Santa Tereza do Tocantins
TO	172000	Santa Terezinha do Tocantins
TO	172010	São Bento do Tocantins
TO	172015	São Félix do Tocantins
TO	172020	São Miguel do Tocantins
TO	172025	São Salvador do Tocantins
TO	172030	São Sebastião do Tocantins
TO	172049	São Valério
TO	172065	Silvanópolis
TO	172080	Sítio Novo do Tocantins
TO	172085	Sucupira
TO	170825	Tabocão
TO	172090	Taguatinga
TO	172093	Taipas do Tocantins
TO	172097	Talismã
TO	172110	Tocantínia
TO	172120	Tocantinópolis
TO	172125	Tupirama
TO	172130	Tupiratins
TO	172208	Wanderlândia
TO	172210	Xambioá
MA	210005	Açailândia
MA	210010	Afonso Cunha
MA	210015	Água Doce do Maranhão
MA	210020	Alcântara
MA	210030	Aldeias Altas
MA	210040	Altamira do Maranhão
MA	210043	Alto Alegre do Maranhão
MA	210047	Alto Alegre do Pindaré
MA	210050	Alto Parnaíba
MA	210055	Amapá do Maranhão
MA	210060	Amarante do Maranhão
MA	210070	Anajatuba
MA	210080	Anapurus
MA	210083	Apicum-Açu
MA	210087	Araguanã
MA	210090	Araioses
MA	210095	Arame
MA	210100	Arari
MA	210110	Axixá
MA	210120	Bacabal
MA	210125	Bacabeira
MA	210130	Bacuri
MA	210135	Bacurituba
MA	210140	Balsas
MA	210150	Barão de Grajaú
MA	210160	Barra do Corda
MA	210170	Barreirinhas
MA	210177	Bela Vista do Maranhão
MA	210173	Belágua
MA	210180	Benedito Leite
MA	210190	Bequimão
MA	210193	Bernardo do Mearim
MA	210197	Boa Vista do Gurupi
MA	210200	Bom Jardim
MA	210203	Bom Jesus das Selvas
MA	210207	Bom Lugar
MA	210210	Brejo
MA	210215	Brejo de Areia
MA	210220	Buriti
MA	210230	Buriti Bravo
MA	210232	Buriticupu
MA	210235	Buritirana
MA	210237	Cachoeira Grande
MA	210240	Cajapió
MA	210250	Cajari
MA	210255	Campestre do Maranhão
MA	210260	Cândido Mendes
MA	210270	Cantanhede
MA	210275	Capinzal do Norte
MA	210280	Carolina
MA	210290	Carutapera
MA	210300	Caxias
MA	210310	Cedral
MA	210312	Central do Maranhão
MA	210315	Centro do Guilherme
MA	210317	Centro Novo do Maranhão
MA	210320	Chapadinha
MA	210325	Cidelândia
MA	210330	Codó
MA	210340	Coelho Neto
MA	210350	Colinas
MA	210355	Conceição do Lago-Açu
MA	210360	Coroatá
MA	210370	Cururupu
MA	210375	Davinópolis
MA	210380	Dom Pedro
MA	210390	Duque Bacelar
MA	210400	Esperantinópolis
MA	210405	Estreito
MA	210407	Feira Nova do Maranhão
MA	210408	Fernando Falcão
MA	210409	Formosa da Serra Negra
MA	210410	Fortaleza dos Nogueiras
MA	210420	Fortuna
MA	210430	Godofredo Viana
MA	210440	Gonçalves Dias
MA	210450	Governador Archer
MA	210455	Governador Edison Lobão
MA	210460	Governador Eugênio Barros
MA	210462	Governador Luiz Rocha
MA	210465	Governador Newton Bello
MA	210467	Governador Nunes Freire
MA	210470	Graça Aranha
MA	210480	Grajaú
MA	210490	Guimarães
MA	210500	Humberto de Campos
MA	210510	Icatu
MA	210515	Igarapé do Meio
MA	210520	Igarapé Grande
MA	210530	Imperatriz
MA	210535	Itaipava do Grajaú
MA	210540	Itapecuru Mirim
MA	210542	Itinga do Maranhão
MA	210545	Jatobá
MA	210547	Jenipapo dos Vieiras
MA	210550	João Lisboa
MA	210560	Joselândia
MA	210565	Junco do Maranhão
MA	210570	Lago da Pedra
MA	210580	Lago do Junco
MA	210594	Lago dos Rodrigues
MA	210590	Lago Verde
MA	210592	Lagoa do Mato
MA	210596	Lagoa Grande do Maranhão
MA	210598	Lajeado Novo
MA	210600	Lima Campos
MA	210610	Loreto
MA	210620	Luís Domingues
MA	210630	Magalhães de Almeida
MA	210632	Maracaçumé
MA	210635	Marajá do Sena
MA	210637	Maranhãozinho
MA	210640	Mata Roma
MA	210650	Matinha
MA	210660	Matões
MA	210663	Matões do Norte
MA	210667	Milagres do Maranhão
MA	210670	Mirador
MA	210675	Miranda do Norte
MA	210680	Mirinzal
MA	210690	Monção
MA	210700	Montes Altos
MA	210710	Morros
MA	210720	Nina Rodrigues
MA	210725	Nova Colinas
MA	210730	Nova Iorque
MA	210735	Nova Olinda do Maranhão
MA	210740	Olho d'Água das Cunhãs
MA	210745	Olinda Nova do Maranhão
MA	210750	Paço do Lumiar
MA	210760	Palmeirândia
MA	210770	Paraibano
MA	210780	Parnarama
MA	210790	Passagem Franca
MA	210800	Pastos Bons
MA	210805	Paulino Neves
MA	210810	Paulo Ramos
MA	210820	Pedreiras
MA	210825	Pedro do Rosário
MA	210830	Penalva
MA	210840	Peri Mirim
MA	210845	Peritoró
MA	210850	Pindaré-Mirim
MA	210860	Pinheiro
MA	210870	Pio XII
MA	210880	Pirapemas
MA	210890	Poção de Pedras
MA	210900	Porto Franco
MA	210905	Porto Rico do Maranhão
MA	210910	Presidente Dutra
MA	210920	Presidente Juscelino
MA	210923	Presidente Médici
MA	210927	Presidente Sarney
MA	210930	Presidente Vargas
MA	210940	Primeira Cruz
MA	210945	Raposa
MA	210950	Riachão
MA	210955	Ribamar Fiquene
MA	210960	Rosário
MA	210970	Sambaíba
MA	210975	Santa Filomena do Maranhão
MA	210980	Santa Helena
MA	210990	Santa Inês
MA	211000	Santa Luzia
MA	211003	Santa Luzia do Paruá
MA	211010	Santa Quitéria do Maranhão
MA	211020	Santa Rita
MA	211023	Santana do Maranhão
MA	211027	Santo Amaro do Maranhão
MA	211030	Santo Antônio dos Lopes
MA	211040	São Benedito do Rio Preto
MA	211050	São Bento
MA	211060	São Bernardo
MA	211065	São Domingos do Azeitão
MA	211070	São Domingos do Maranhão
MA	211080	São Félix de Balsas
MA	211085	São Francisco do Brejão
MA	211090	São Francisco do Maranhão
MA	211100	São João Batista
MA	211102	São João do Carú
MA	211105	São João do Paraíso
MA	211107	São João do Soter
MA	211110	São João dos Patos
MA	211120	São José de Ribamar
MA	211125	São José dos Basílios
MA	211130	São Luís
MA	211140	São Luís Gonzaga do Maranhão
MA	211150	São Mateus do Maranhão
MA	211153	São Pedro da Água Branca
MA	211157	São Pedro dos Crentes
MA	211160	São Raimundo das Mangabeiras
MA	211163	São Raimundo do Doca Bezerra
MA	211167	São Roberto
MA	211170	São Vicente Ferrer
MA	211172	Satubinha
MA	211174	Senador Alexandre Costa
MA	211176	Senador La Rocque
MA	211178	Serrano do Maranhão
MA	211180	Sítio Novo
MA	211190	Sucupira do Norte
MA	211195	Sucupira do Riachão
MA	211200	Tasso Fragoso
MA	211210	Timbiras
MA	211220	Timon
MA	211223	Trizidela do Vale
MA	211227	Tufilândia
MA	211230	Tuntum
MA	211240	Turiaçu
MA	211245	Turilândia
MA	211250	Tutóia
MA	211260	Urbano Santos
MA	211270	Vargem Grande
MA	211280	Viana
MA	211285	Vila Nova dos Martírios
MA	211290	Vitória do Mearim
MA	211300	Vitorino Freire
MA	211400	Zé Doca
PI	220005	Acauã
PI	220010	Agricolândia
PI	220020	Água Branca
PI	220025	Alagoinha do Piauí
PI	220027	Alegrete do Piauí
PI	220030	Alto Longá
PI	220040	Altos
PI	220045	Alvorada do Gurguéia
PI	220050	Amarante
PI	220060	Angical do Piauí
PI	220070	Anísio de Abreu
PI	220080	Antônio Almeida
PI	220090	Aroazes
PI	220095	Aroeiras do Itaim
PI	220100	Arraial
PI	220105	Assunção do Piauí
PI	220110	Avelino Lopes
PI	220115	Baixa Grande do Ribeiro
PI	220117	Barra D'Alcântara
PI	220120	Barras
PI	220130	Barreiras do Piauí
PI	220140	Barro Duro
PI	220150	Batalha
PI	220155	Bela Vista do Piauí
PI	220157	Belém do Piauí
PI	220160	Beneditinos
PI	220170	Bertolínia
PI	220173	Betânia do Piauí
PI	220177	Boa Hora
PI	220180	Bocaina
PI	220190	Bom Jesus
PI	220191	Bom Princípio do Piauí
PI	220192	Bonfim do Piauí
PI	220194	Boqueirão do Piauí
PI	220196	Brasileira
PI	220198	Brejo do Piauí
PI	220200	Buriti dos Lopes
PI	220202	Buriti dos Montes
PI	220205	Cabeceiras do Piauí
PI	220207	Cajazeiras do Piauí
PI	220208	Cajueiro da Praia
PI	220209	Caldeirão Grande do Piauí
PI	220210	Campinas do Piauí
PI	220211	Campo Alegre do Fidalgo
PI	220213	Campo Grande do Piauí
PI	220217	Campo Largo do Piauí
PI	220220	Campo Maior
PI	220225	Canavieira
PI	220230	Canto do Buriti
PI	220240	Capitão de Campos
PI	220245	Capitão Gervásio Oliveira
PI	220250	Caracol
PI	220253	Caraúbas do Piauí
PI	220255	Caridade do Piauí
PI	220260	Castelo do Piauí
PI	220265	Caxingó
PI	220270	Cocal
PI	220271	Cocal de Telha
PI	220272	Cocal dos Alves
PI	220273	Coivaras
PI	220275	Colônia do Gurguéia
PI	220277	Colônia do Piauí
PI	220280	Conceição do Canindé
PI	220285	Coronel José Dias
PI	220290	Corrente
PI	220300	Cristalândia do Piauí
PI	220310	Cristino Castro
PI	220320	Curimatá
PI	220323	Currais
PI	220327	Curral Novo do Piauí
PI	220325	Curralinhos
PI	220330	Demerval Lobão
PI	220335	Dirceu Arcoverde
PI	220340	Dom Expedito Lopes
PI	220345	Dom Inocêncio
PI	220342	Domingos Mourão
PI	220350	Elesbão Veloso
PI	220360	Eliseu Martins
PI	220370	Esperantina
PI	220375	Fartura do Piauí
PI	220380	Flores do Piauí
PI	220385	Floresta do Piauí
PI	220390	Floriano
PI	220400	Francinópolis
PI	220410	Francisco Ayres
PI	220415	Francisco Macedo
PI	220420	Francisco Santos
PI	220430	Fronteiras
PI	220435	Geminiano
PI	220440	Gilbués
PI	220450	Guadalupe
PI	220455	Guaribas
PI	220460	Hugo Napoleão
PI	220465	Ilha Grande
PI	220470	Inhuma
PI	220480	Ipiranga do Piauí
PI	220490	Isaías Coelho
PI	220500	Itainópolis
PI	220510	Itaueira
PI	220515	Jacobina do Piauí
PI	220520	Jaicós
PI	220525	Jardim do Mulato
PI	220527	Jatobá do Piauí
PI	220530	Jerumenha
PI	220535	João Costa
PI	220540	Joaquim Pires
PI	220545	Joca Marques
PI	220550	José de Freitas
PI	220551	Juazeiro do Piauí
PI	220552	Júlio Borges
PI	220553	Jurema
PI	220555	Lagoa Alegre
PI	220557	Lagoa de São Francisco
PI	220556	Lagoa do Barro do Piauí
PI	220558	Lagoa do Piauí
PI	220559	Lagoa do Sítio
PI	220554	Lagoinha do Piauí
PI	220560	Landri Sales
PI	220570	Luís Correia
PI	220580	Luzilândia
PI	220585	Madeiro
PI	220590	Manoel Emídio
PI	220595	Marcolândia
PI	220600	Marcos Parente
PI	220605	Massapê do Piauí
PI	220610	Matias Olímpio
PI	220620	Miguel Alves
PI	220630	Miguel Leão
PI	220635	Milton Brandão
PI	220640	Monsenhor Gil
PI	220650	Monsenhor Hipólito
PI	220660	Monte Alegre do Piauí
PI	220665	Morro Cabeça no Tempo
PI	220667	Morro do Chapéu do Piauí
PI	220669	Murici dos Portelas
PI	220670	Nazaré do Piauí
PI	220672	Nazária
PI	220675	Nossa Senhora de Nazaré
PI	220680	Nossa Senhora dos Remédios
PI	220795	Nova Santa Rita
PI	220690	Novo Oriente do Piauí
PI	220695	Novo Santo Antônio
PI	220700	Oeiras
PI	220710	Olho D'Água do Piauí
PI	220720	Padre Marcos
PI	220730	Paes Landim
PI	220735	Pajeú do Piauí
PI	220740	Palmeira do Piauí
PI	220750	Palmeirais
PI	220755	Paquetá
PI	220760	Parnaguá
PI	220770	Parnaíba
PI	220775	Passagem Franca do Piauí
PI	220777	Patos do Piauí
PI	220779	Pau D'Arco do Piauí
PI	220780	Paulistana
PI	220785	Pavussu
PI	220790	Pedro II
PI	220793	Pedro Laurentino
PI	220800	Picos
PI	220810	Pimenteiras
PI	220820	Pio IX
PI	220830	Piracuruca
PI	220840	Piripiri
PI	220850	Porto
PI	220855	Porto Alegre do Piauí
PI	220860	Prata do Piauí
PI	220865	Queimada Nova
PI	220870	Redenção do Gurguéia
PI	220880	Regeneração
PI	220885	Riacho Frio
PI	220887	Ribeira do Piauí
PI	220890	Ribeiro Gonçalves
PI	220900	Rio Grande do Piauí
PI	220910	Santa Cruz do Piauí
PI	220915	Santa Cruz dos Milagres
PI	220920	Santa Filomena
PI	220930	Santa Luz
PI	220937	Santa Rosa do Piauí
PI	220935	Santana do Piauí
PI	220940	Santo Antônio de Lisboa
PI	220945	Santo Antônio dos Milagres
PI	220950	Santo Inácio do Piauí
PI	220955	São Braz do Piauí
PI	220960	São Félix do Piauí
PI	220965	São Francisco de Assis do Piauí
PI	220970	São Francisco do Piauí
PI	220975	São Gonçalo do Gurguéia
PI	220980	São Gonçalo do Piauí
PI	220985	São João da Canabrava
PI	220987	São João da Fronteira
PI	220990	São João da Serra
PI	220995	São João da Varjota
PI	220997	São João do Arraial
PI	221000	São João do Piauí
PI	221005	São José do Divino
PI	221010	São José do Peixe
PI	221020	São José do Piauí
PI	221030	São Julião
PI	221035	São Lourenço do Piauí
PI	221037	São Luis do Piauí
PI	221038	São Miguel da Baixa Grande
PI	221039	São Miguel do Fidalgo
PI	221040	São Miguel do Tapuio
PI	221050	São Pedro do Piauí
PI	221060	São Raimundo Nonato
PI	221062	Sebastião Barros
PI	221063	Sebastião Leal
PI	221065	Sigefredo Pacheco
PI	221070	Simões
PI	221080	Simplício Mendes
PI	221090	Socorro do Piauí
PI	221093	Sussuapara
PI	221095	Tamboril do Piauí
PI	221097	Tanque do Piauí
PI	221100	Teresina
PI	221110	União
PI	221120	Uruçuí
PI	221130	Valença do Piauí
PI	221135	Várzea Branca
PI	221140	Várzea Grande
PI	221150	Vera Mendes
PI	221160	Vila Nova do Piauí
PI	221170	Wall Ferraz
CE	230010	Abaiara
CE	230015	Acarape
CE	230020	Acaraú
CE	230030	Acopiara
CE	230040	Aiuaba
CE	230050	Alcântaras
CE	230060	Altaneira
CE	230070	Alto Santo
CE	230075	Amontada
CE	230080	Antonina do Norte
CE	230090	Apuiarés
CE	230110	Aracati
CE	230120	Aracoiaba
CE	230125	Ararendá
CE	230130	Araripe
CE	230140	Aratuba
CE	230150	Arneiroz
CE	230160	Assaré
CE	230170	Aurora
CE	230180	Baixio
CE	230185	Banabuiú
CE	230190	Barbalha
CE	230195	Barreira
CE	230200	Barro
CE	230205	Barroquinha
CE	230210	Baturité
CE	230220	Beberibe
CE	230230	Bela Cruz
CE	230240	Boa Viagem
CE	230250	Brejo Santo
CE	230260	Camocim
CE	230270	Campos Sales
CE	230280	Canindé
CE	230290	Capistrano
CE	230300	Caridade
CE	230310	Cariré
CE	230320	Caririaçu
CE	230330	Cariús
CE	230340	Carnaubal
CE	230350	Cascavel
CE	230360	Catarina
CE	230365	Catunda
CE	230370	Caucaia
CE	230380	Cedro
CE	230390	Chaval
CE	230393	Choró
CE	230395	Chorozinho
CE	230400	Coreaú
CE	230410	Crateús
CE	230420	Crato
CE	230423	Croatá
CE	230425	Cruz
CE	230426	Deputado Irapuan Pinheiro
CE	230427	Ereré
CE	230428	Eusébio
CE	230430	Farias Brito
CE	230435	Forquilha
CE	230440	Fortaleza
CE	230445	Fortim
CE	230450	Frecheirinha
CE	230460	General Sampaio
CE	230465	Graça
CE	230470	Granja
CE	230480	Granjeiro
CE	230490	Groaíras
CE	230495	Guaiúba
CE	230500	Guaraciaba do Norte
CE	230510	Guaramiranga
CE	230520	Hidrolândia
CE	230523	Horizonte
CE	230526	Ibaretama
CE	230530	Ibiapina
CE	230533	Ibicuitinga
CE	230535	Icapuí
CE	230540	Icó
CE	230550	Iguatu
CE	230560	Independência
CE	230565	Ipaporanga
CE	230570	Ipaumirim
CE	230580	Ipu
CE	230590	Ipueiras
CE	230600	Iracema
CE	230610	Irauçuba
CE	230620	Itaiçaba
CE	230625	Itaitinga
CE	230630	Itapajé
CE	230640	Itapipoca
CE	230650	Itapiúna
CE	230655	Itarema
CE	230660	Itatira
CE	230670	Jaguaretama
CE	230680	Jaguaribara
CE	230690	Jaguaribe
CE	230700	Jaguaruana
CE	230710	Jardim
CE	230720	Jati
CE	230725	Jijoca de Jericoacoara
CE	230730	Juazeiro do Norte
CE	230740	Jucás
CE	230750	Lavras da Mangabeira
CE	230760	Limoeiro do Norte
CE	230763	Madalena
CE	230765	Maracanaú
CE	230770	Maranguape
CE	230780	Marco
CE	230790	Martinópole
CE	230800	Massapê
CE	230810	Mauriti
CE	230820	Meruoca
CE	230830	Milagres
CE	230835	Milhã
CE	230837	Miraíma
CE	230840	Missão Velha
CE	230850	Mombaça
CE	230860	Monsenhor Tabosa
CE	230870	Morada Nova
CE	230880	Moraújo
CE	230890	Morrinhos
CE	230900	Mucambo
CE	230910	Mulungu
CE	230920	Nova Olinda
CE	230930	Nova Russas
CE	230940	Novo Oriente
CE	230945	Ocara
CE	230950	Orós
CE	230960	Pacajus
CE	230970	Pacatuba
CE	230980	Pacoti
CE	230990	Pacujá
CE	231000	Palhano
CE	231010	Palmácia
CE	231020	Paracuru
CE	231025	Paraipaba
CE	231030	Parambu
CE	231040	Paramoti
CE	231050	Pedra Branca
CE	231060	Penaforte
CE	231070	Pentecoste
CE	231080	Pereiro
CE	231085	Pindoretama
CE	231090	Piquet Carneiro
CE	231095	Pires Ferreira
CE	231100	Poranga
CE	231110	Porteiras
CE	231120	Potengi
CE	231123	Potiretama
CE	231126	Quiterianópolis
CE	231130	Quixadá
CE	231135	Quixelô
CE	231140	Quixeramobim
CE	231150	Quixeré
CE	231160	Redenção
CE	231170	Reriutaba
CE	231180	Russas
CE	231190	Saboeiro
CE	231195	Salitre
CE	231220	Santa Quitéria
CE	231200	Santana do Acaraú
CE	231210	Santana do Cariri
CE	231230	São Benedito
CE	231240	São Gonçalo do Amarante
CE	231250	São João do Jaguaribe
CE	231260	São Luís do Curu
CE	231270	Senador Pompeu
CE	231280	Senador Sá
CE	231290	Sobral
CE	231300	Solonópole
CE	231310	Tabuleiro do Norte
CE	231320	Tamboril
CE	231325	Tarrafas
CE	231330	Tauá
CE	231340	Tianguá
CE	231350	Trairi
CE	231355	Tururu
CE	231360	Ubajara
CE	231370	Umari
CE	231375	Umirim
CE	231380	Uruburetama
CE	231390	Uruoca
CE	231395	Varjota
CE	231400	Várzea Alegre
CE	231410	Viçosa do Ceará
RN	240010	Acari
RN	240020	Açu
RN	240030	Afonso Bezerra
RN	240040	Água Nova
RN	240050	Alexandria
RN	240060	Almino Afonso
RN	240070	Alto do Rodrigues
RN	240080	Angicos
RN	240090	Antônio Martins
RN	240100	Apodi
RN	240110	Areia Branca
RN	240120	Arês
RN	240140	Baía Formosa
RN	240145	Baraúna
RN	240150	Barcelona
RN	240160	Bento Fernandes
RN	240165	Bodó
RN	240170	Bom Jesus
RN	240180	Brejinho
RN	240185	Caiçara do Norte
RN	240190	Caiçara do Rio do Vento
RN	240200	Caicó
RN	240130	Campo Grande
RN	240210	Campo Redondo
RN	240220	Canguaretama
RN	240230	Caraúbas
RN	240240	Carnaúba dos Dantas
RN	240250	Carnaubais
RN	240260	Ceará-Mirim
RN	240270	Cerro Corá
RN	240280	Coronel Ezequiel
RN	240290	Coronel João Pessoa
RN	240300	Cruzeta
RN	240310	Currais Novos
RN	240320	Doutor Severiano
RN	240330	Encanto
RN	240340	Equador
RN	240350	Espírito Santo
RN	240360	Extremoz
RN	240370	Felipe Guerra
RN	240375	Fernando Pedroza
RN	240380	Florânia
RN	240390	Francisco Dantas
RN	240400	Frutuoso Gomes
RN	240410	Galinhos
RN	240420	Goianinha
RN	240430	Governador Dix-Sept Rosado
RN	240440	Grossos
RN	240450	Guamaré
RN	240460	Ielmo Marinho
RN	240470	Ipanguaçu
RN	240480	Ipueira
RN	240485	Itajá
RN	240490	Itaú
RN	240500	Jaçanã
RN	240510	Jandaíra
RN	240520	Janduís
RN	240530	Januário Cicco
RN	240540	Japi
RN	240550	Jardim de Angicos
RN	240560	Jardim de Piranhas
RN	240570	Jardim do Seridó
RN	240580	João Câmara
RN	240590	João Dias
RN	240600	José da Penha
RN	240610	Jucurutu
RN	240615	Jundiá
RN	240620	Lagoa d'Anta
RN	240630	Lagoa de Pedras
RN	240640	Lagoa de Velhos
RN	240650	Lagoa Nova
RN	240660	Lagoa Salgada
RN	240670	Lajes
RN	240680	Lajes Pintadas
RN	240690	Lucrécia
RN	240700	Luís Gomes
RN	240710	Macaíba
RN	240720	Macau
RN	240725	Major Sales
RN	240730	Marcelino Vieira
RN	240740	Martins
RN	240750	Maxaranguape
RN	240760	Messias Targino
RN	240770	Montanhas
RN	240780	Monte Alegre
RN	240790	Monte das Gameleiras
RN	240800	Mossoró
RN	240810	Natal
RN	240820	Nísia Floresta
RN	240830	Nova Cruz
RN	240840	Olho d'Água do Borges
RN	240850	Ouro Branco
RN	240860	Paraná
RN	240870	Paraú
RN	240880	Parazinho
RN	240890	Parelhas
RN	240325	Parnamirim
RN	240910	Passa e Fica
RN	240920	Passagem
RN	240930	Patu
RN	240940	Pau dos Ferros
RN	240950	Pedra Grande
RN	240960	Pedra Preta
RN	240970	Pedro Avelino
RN	240980	Pedro Velho
RN	240990	Pendências
RN	241000	Pilões
RN	241010	Poço Branco
RN	241020	Portalegre
RN	241025	Porto do Mangue
RN	241040	Pureza
RN	241050	Rafael Fernandes
RN	241060	Rafael Godeiro
RN	241070	Riacho da Cruz
RN	241080	Riacho de Santana
RN	241090	Riachuelo
RN	240895	Rio do Fogo
RN	241100	Rodolfo Fernandes
RN	241110	Ruy Barbosa
RN	241120	Santa Cruz
RN	240933	Santa Maria
RN	241140	Santana do Matos
RN	241142	Santana do Seridó
RN	241150	Santo Antônio
RN	241160	São Bento do Norte
RN	241170	São Bento do Trairí
RN	241180	São Fernando
RN	241190	São Francisco do Oeste
RN	241200	São Gonçalo do Amarante
RN	241210	São João do Sabugi
RN	241220	São José de Mipibu
RN	241230	São José do Campestre
RN	241240	São José do Seridó
RN	241250	São Miguel
RN	241255	São Miguel do Gostoso
RN	241260	São Paulo do Potengi
RN	241270	São Pedro
RN	241280	São Rafael
RN	241290	São Tomé
RN	241300	São Vicente
RN	241310	Senador Elói de Souza
RN	241320	Senador Georgino Avelino
RN	241030	Serra Caiada
RN	241330	Serra de São Bento
RN	241335	Serra do Mel
RN	241340	Serra Negra do Norte
RN	241350	Serrinha
RN	241355	Serrinha dos Pintos
RN	241360	Severiano Melo
RN	241370	Sítio Novo
RN	241380	Taboleiro Grande
RN	241390	Taipu
RN	241400	Tangará
RN	241410	Tenente Ananias
RN	241415	Tenente Laurentino Cruz
RN	241105	Tibau
RN	241420	Tibau do Sul
RN	241430	Timbaúba dos Batistas
RN	241440	Touros
RN	241445	Triunfo Potiguar
RN	241450	Umarizal
RN	241460	Upanema
RN	241470	Várzea
RN	241475	Venha-Ver
RN	241480	Vera Cruz
RN	241490	Viçosa
RN	241500	Vila Flor
PB	250010	Água Branca
PB	250020	Aguiar
PB	250030	Alagoa Grande
PB	250040	Alagoa Nova
PB	250050	Alagoinha
PB	250053	Alcantil
PB	250057	Algodão de Jandaíra
PB	250060	Alhandra
PB	250073	Amparo
PB	250077	Aparecida
PB	250080	Araçagi
PB	250090	Arara
PB	250100	Araruna
PB	250110	Areia
PB	250115	Areia de Baraúnas
PB	250120	Areial
PB	250130	Aroeiras
PB	250135	Assunção
PB	250140	Baía da Traição
PB	250150	Bananeiras
PB	250153	Baraúna
PB	250160	Barra de Santa Rosa
PB	250157	Barra de Santana
PB	250170	Barra de São Miguel
PB	250180	Bayeux
PB	250190	Belém
PB	250200	Belém do Brejo do Cruz
PB	250205	Bernardino Batista
PB	250210	Boa Ventura
PB	250215	Boa Vista
PB	250220	Bom Jesus
PB	250230	Bom Sucesso
PB	250240	Bonito de Santa Fé
PB	250250	Boqueirão
PB	250270	Borborema
PB	250280	Brejo do Cruz
PB	250290	Brejo dos Santos
PB	250300	Caaporã
PB	250310	Cabaceiras
PB	250320	Cabedelo
PB	250330	Cachoeira dos Índios
PB	250340	Cacimba de Areia
PB	250350	Cacimba de Dentro
PB	250355	Cacimbas
PB	250360	Caiçara
PB	250370	Cajazeiras
PB	250375	Cajazeirinhas
PB	250380	Caldas Brandão
PB	250390	Camalaú
PB	250400	Campina Grande
PB	250403	Capim
PB	250407	Caraúbas
PB	250410	Carrapateira
PB	250415	Casserengue
PB	250420	Catingueira
PB	250430	Catolé do Rocha
PB	250435	Caturité
PB	250440	Conceição
PB	250450	Condado
PB	250460	Conde
PB	250470	Congo
PB	250480	Coremas
PB	250485	Coxixola
PB	250490	Cruz do Espírito Santo
PB	250500	Cubati
PB	250510	Cuité
PB	250523	Cuité de Mamanguape
PB	250520	Cuitegi
PB	250527	Curral de Cima
PB	250530	Curral Velho
PB	250535	Damião
PB	250540	Desterro
PB	250560	Diamante
PB	250570	Dona Inês
PB	250580	Duas Estradas
PB	250590	Emas
PB	250600	Esperança
PB	250610	Fagundes
PB	250620	Frei Martinho
PB	250625	Gado Bravo
PB	250630	Guarabira
PB	250640	Gurinhém
PB	250650	Gurjão
PB	250660	Ibiara
PB	250260	Igaracy
PB	250670	Imaculada
PB	250680	Ingá
PB	250690	Itabaiana
PB	250700	Itaporanga
PB	250710	Itapororoca
PB	250720	Itatuba
PB	250730	Jacaraú
PB	250740	Jericó
PB	250750	João Pessoa
PB	251365	Joca Claudino
PB	250760	Juarez Távora
PB	250770	Juazeirinho
PB	250780	Junco do Seridó
PB	250790	Juripiranga
PB	250800	Juru
PB	250810	Lagoa
PB	250820	Lagoa de Dentro
PB	250830	Lagoa Seca
PB	250840	Lastro
PB	250850	Livramento
PB	250855	Logradouro
PB	250860	Lucena
PB	250870	Mãe d'Água
PB	250880	Malta
PB	250890	Mamanguape
PB	250900	Manaíra
PB	250905	Marcação
PB	250910	Mari
PB	250915	Marizópolis
PB	250920	Massaranduba
PB	250930	Mataraca
PB	250933	Matinhas
PB	250937	Mato Grosso
PB	250939	Maturéia
PB	250940	Mogeiro
PB	250950	Montadas
PB	250960	Monte Horebe
PB	250970	Monteiro
PB	250980	Mulungu
PB	250990	Natuba
PB	251000	Nazarezinho
PB	251010	Nova Floresta
PB	251020	Nova Olinda
PB	251030	Nova Palmeira
PB	251040	Olho d'Água
PB	251050	Olivedos
PB	251060	Ouro Velho
PB	251065	Parari
PB	251070	Passagem
PB	251080	Patos
PB	251100	Pedra Branca
PB	251110	Pedra Lavrada
PB	251120	Pedras de Fogo
PB	251272	Pedro Régis
PB	251130	Piancó
PB	251140	Picuí
PB	251150	Pilar
PB	251160	Pilões
PB	251170	Pilõezinhos
PB	251180	Pirpirituba
PB	251190	Pitimbu
PB	251200	Pocinhos
PB	251203	Poço Dantas
PB	251207	Poço de José de Moura
PB	251210	Pombal
PB	251220	Prata
PB	251230	Princesa Isabel
PB	251240	Puxinanã
PB	251250	Queimadas
PB	251260	Quixaba
PB	251270	Remígio
PB	251274	Riachão
PB	251275	Riachão do Bacamarte
PB	251276	Riachão do Poço
PB	251278	Riacho de Santo Antônio
PB	251280	Riacho dos Cavalos
PB	251290	Rio Tinto
PB	251300	Salgadinho
PB	251310	Salgado de São Félix
PB	251315	Santa Cecília
PB	251320	Santa Cruz
PB	251330	Santa Helena
PB	251335	Santa Inês
PB	251340	Santa Luzia
PB	251370	Santa Rita
PB	251380	Santa Teresinha
PB	251350	Santana de Mangueira
PB	251360	Santana dos Garrotes
PB	251385	Santo André
PB	251392	São Bentinho
PB	251390	São Bento
PB	251396	São Domingos
PB	251394	São Domingos do Cariri
PB	251398	São Francisco
PB	251400	São João do Cariri
PB	250070	São João do Rio do Peixe
PB	251410	São João do Tigre
PB	251420	São José da Lagoa Tapada
PB	251430	São José de Caiana
PB	251440	São José de Espinharas
PB	251450	São José de Piranhas
PB	251455	São José de Princesa
PB	251460	São José do Bonfim
PB	251465	São José do Brejo do Cruz
PB	251470	São José do Sabugi
PB	251480	São José dos Cordeiros
PB	251445	São José dos Ramos
PB	251490	São Mamede
PB	251500	São Miguel de Taipu
PB	251510	São Sebastião de Lagoa de Roça
PB	251520	São Sebastião do Umbuzeiro
PB	251540	São Vicente do Seridó
PB	251530	Sapé
PB	251550	Serra Branca
PB	251560	Serra da Raiz
PB	251570	Serra Grande
PB	251580	Serra Redonda
PB	251590	Serraria
PB	251593	Sertãozinho
PB	251597	Sobrado
PB	251600	Solânea
PB	251610	Soledade
PB	251615	Sossêgo
PB	251620	Sousa
PB	251630	Sumé
PB	251640	Tacima
PB	251650	Taperoá
PB	251660	Tavares
PB	251670	Teixeira
PB	251675	Tenório
PB	251680	Triunfo
PB	251690	Uiraúna
PB	251700	Umbuzeiro
PB	251710	Várzea
PB	251720	Vieirópolis
PB	250550	Vista Serrana
PB	251740	Zabelê
PE	260005	Abreu e Lima
PE	260010	Afogados da Ingazeira
PE	260020	Afrânio
PE	260030	Agrestina
PE	260040	Água Preta
PE	260050	Águas Belas
PE	260060	Alagoinha
PE	260070	Aliança
PE	260080	Altinho
PE	260090	Amaraji
PE	260100	Angelim
PE	260105	Araçoiaba
PE	260110	Araripina
PE	260120	Arcoverde
PE	260130	Barra de Guabiraba
PE	260140	Barreiros
PE	260150	Belém de Maria
PE	260160	Belém do São Francisco
PE	260170	Belo Jardim
PE	260180	Betânia
PE	260190	Bezerros
PE	260200	Bodocó
PE	260210	Bom Conselho
PE	260220	Bom Jardim
PE	260230	Bonito
PE	260240	Brejão
PE	260250	Brejinho
PE	260260	Brejo da Madre de Deus
PE	260270	Buenos Aires
PE	260280	Buíque
PE	260290	Cabo de Santo Agostinho
PE	260300	Cabrobó
PE	260310	Cachoeirinha
PE	260320	Caetés
PE	260330	Calçado
PE	260340	Calumbi
PE	260345	Camaragibe
PE	260350	Camocim de São Félix
PE	260360	Camutanga
PE	260370	Canhotinho
PE	260380	Capoeiras
PE	260390	Carnaíba
PE	260392	Carnaubeira da Penha
PE	260400	Carpina
PE	260410	Caruaru
PE	260415	Casinhas
PE	260420	Catende
PE	260430	Cedro
PE	260440	Chã de Alegria
PE	260450	Chã Grande
PE	260460	Condado
PE	260470	Correntes
PE	260480	Cortês
PE	260490	Cumaru
PE	260500	Cupira
PE	260510	Custódia
PE	260515	Dormentes
PE	260520	Escada
PE	260530	Exu
PE	260540	Feira Nova
PE	260545	Fernando de Noronha
PE	260550	Ferreiros
PE	260560	Flores
PE	260570	Floresta
PE	260580	Frei Miguelinho
PE	260590	Gameleira
PE	260600	Garanhuns
PE	260610	Glória do Goitá
PE	260620	Goiana
PE	260630	Granito
PE	260640	Gravatá
PE	260650	Iati
PE	260660	Ibimirim
PE	260670	Ibirajuba
PE	260680	Igarassu
PE	260690	Iguaracy
PE	260760	Ilha de Itamaracá
PE	260700	Inajá
PE	260710	Ingazeira
PE	260720	Ipojuca
PE	260730	Ipubi
PE	260740	Itacuruba
PE	260750	Itaíba
PE	260765	Itambé
PE	260770	Itapetim
PE	260775	Itapissuma
PE	260780	Itaquitinga
PE	260790	Jaboatão dos Guararapes
PE	260795	Jaqueira
PE	260800	Jataúba
PE	260805	Jatobá
PE	260810	João Alfredo
PE	260820	Joaquim Nabuco
PE	260825	Jucati
PE	260830	Jupi
PE	260840	Jurema
PE	260850	Lagoa de Itaenga
PE	260845	Lagoa do Carro
PE	260860	Lagoa do Ouro
PE	260870	Lagoa dos Gatos
PE	260875	Lagoa Grande
PE	260880	Lajedo
PE	260890	Limoeiro
PE	260900	Macaparana
PE	260910	Machados
PE	260915	Manari
PE	260920	Maraial
PE	260930	Mirandiba
PE	261430	Moreilândia
PE	260940	Moreno
PE	260950	Nazaré da Mata
PE	260960	Olinda
PE	260970	Orobó
PE	260980	Orocó
PE	260990	Ouricuri
PE	261000	Palmares
PE	261010	Palmeirina
PE	261020	Panelas
PE	261030	Paranatama
PE	261040	Parnamirim
PE	261050	Passira
PE	261060	Paudalho
PE	261070	Paulista
PE	261080	Pedra
PE	261090	Pesqueira
PE	261100	Petrolândia
PE	261110	Petrolina
PE	261120	Poção
PE	261130	Pombos
PE	261140	Primavera
PE	261150	Quipapá
PE	261153	Quixaba
PE	261160	Recife
PE	261170	Riacho das Almas
PE	261180	Ribeirão
PE	261190	Rio Formoso
PE	261200	Sairé
PE	261210	Salgadinho
PE	261220	Salgueiro
PE	261230	Saloá
PE	261240	Sanharó
PE	261245	Santa Cruz
PE	261247	Santa Cruz da Baixa Verde
PE	261250	Santa Cruz do Capibaribe
PE	261255	Santa Filomena
PE	261260	Santa Maria da Boa Vista
PE	261270	Santa Maria do Cambucá
PE	261280	Santa Terezinha
PE	261290	São Benedito do Sul
PE	261300	São Bento do Una
PE	261310	São Caitano
PE	261320	São João
PE	261330	São Joaquim do Monte
PE	261340	São José da Coroa Grande
PE	261350	São José do Belmonte
PE	261360	São José do Egito
PE	261370	São Lourenço da Mata
PE	261380	São Vicente Férrer
PE	261390	Serra Talhada
PE	261400	Serrita
PE	261410	Sertânia
PE	261420	Sirinhaém
PE	261440	Solidão
PE	261450	Surubim
PE	261460	Tabira
PE	261470	Tacaimbó
PE	261480	Tacaratu
PE	261485	Tamandaré
PE	261500	Taquaritinga do Norte
PE	261510	Terezinha
PE	261520	Terra Nova
PE	261530	Timbaúba
PE	261540	Toritama
PE	261550	Tracunhaém
PE	261560	Trindade
PE	261570	Triunfo
PE	261580	Tupanatinga
PE	261590	Tuparetama
PE	261600	Venturosa
PE	261610	Verdejante
PE	261618	Vertente do Lério
PE	261620	Vertentes
PE	261630	Vicência
PE	261640	Vitória de Santo Antão
PE	261650	Xexéu
AL	270010	Água Branca
AL	270020	Anadia
AL	270030	Arapiraca
AL	270040	Atalaia
AL	270050	Barra de Santo Antônio
AL	270060	Barra de São Miguel
AL	270070	Batalha
AL	270080	Belém
AL	270090	Belo Monte
AL	270100	Boca da Mata
AL	270110	Branquinha
AL	270120	Cacimbinhas
AL	270130	Cajueiro
AL	270135	Campestre
AL	270140	Campo Alegre
AL	270150	Campo Grande
AL	270160	Canapi
AL	270170	Capela
AL	270180	Carneiros
AL	270190	Chã Preta
AL	270200	Coité do Nóia
AL	270210	Colônia Leopoldina
AL	270220	Coqueiro Seco
AL	270230	Coruripe
AL	270235	Craíbas
AL	270240	Delmiro Gouveia
AL	270250	Dois Riachos
AL	270255	Estrela de Alagoas
AL	270260	Feira Grande
AL	270270	Feliz Deserto
AL	270280	Flexeiras
AL	270290	Girau do Ponciano
AL	270300	Ibateguara
AL	270310	Igaci
AL	270320	Igreja Nova
AL	270330	Inhapi
AL	270340	Jacaré dos Homens
AL	270350	Jacuípe
AL	270360	Japaratinga
AL	270370	Jaramataia
AL	270375	Jequiá da Praia
AL	270380	Joaquim Gomes
AL	270390	Jundiá
AL	270400	Junqueiro
AL	270410	Lagoa da Canoa
AL	270420	Limoeiro de Anadia
AL	270430	Maceió
AL	270440	Major Isidoro
AL	270490	Mar Vermelho
AL	270450	Maragogi
AL	270460	Maravilha
AL	270470	Marechal Deodoro
AL	270480	Maribondo
AL	270500	Mata Grande
AL	270510	Matriz de Camaragibe
AL	270520	Messias
AL	270530	Minador do Negrão
AL	270540	Monteirópolis
AL	270550	Murici
AL	270560	Novo Lino
AL	270570	Olho d'Água das Flores
AL	270580	Olho d'Água do Casado
AL	270590	Olho d'Água Grande
AL	270600	Olivença
AL	270610	Ouro Branco
AL	270620	Palestina
AL	270630	Palmeira dos Índios
AL	270640	Pão de Açúcar
AL	270642	Pariconha
AL	270644	Paripueira
AL	270650	Passo de Camaragibe
AL	270660	Paulo Jacinto
AL	270670	Penedo
AL	270680	Piaçabuçu
AL	270690	Pilar
AL	270700	Pindoba
AL	270710	Piranhas
AL	270720	Poço das Trincheiras
AL	270730	Porto Calvo
AL	270740	Porto de Pedras
AL	270750	Porto Real do Colégio
AL	270760	Quebrangulo
AL	270770	Rio Largo
AL	270780	Roteiro
AL	270790	Santa Luzia do Norte
AL	270800	Santana do Ipanema
AL	270810	Santana do Mundaú
AL	270820	São Brás
AL	270830	São José da Laje
AL	270840	São José da Tapera
AL	270850	São Luís do Quitunde
AL	270860	São Miguel dos Campos
AL	270870	São Miguel dos Milagres
AL	270880	São Sebastião
AL	270890	Satuba
AL	270895	Senador Rui Palmeira
AL	270900	Tanque d'Arca
AL	270910	Taquarana
AL	270915	Teotônio Vilela
AL	270920	Traipu
AL	270930	União dos Palmares
AL	270940	Viçosa
SE	280010	Amparo do São Francisco
SE	280020	Aquidabã
SE	280030	Aracaju
SE	280040	Arauá
SE	280050	Areia Branca
SE	280060	Barra dos Coqueiros
SE	280067	Boquim
SE	280070	Brejo Grande
SE	280100	Campo do Brito
SE	280110	Canhoba
SE	280120	Canindé de São Francisco
SE	280130	Capela
SE	280140	Carira
SE	280150	Carmópolis
SE	280160	Cedro de São João
SE	280170	Cristinápolis
SE	280190	Cumbe
SE	280200	Divina Pastora
SE	280210	Estância
SE	280220	Feira Nova
SE	280230	Frei Paulo
SE	280240	Gararu
SE	280250	General Maynard
SE	280260	Gracho Cardoso
SE	280270	Ilha das Flores
SE	280280	Indiaroba
SE	280290	Itabaiana
SE	280300	Itabaianinha
SE	280310	Itabi
SE	280320	Itaporanga d'Ajuda
SE	280330	Japaratuba
SE	280340	Japoatã
SE	280350	Lagarto
SE	280360	Laranjeiras
SE	280370	Macambira
SE	280380	Malhada dos Bois
SE	280390	Malhador
SE	280400	Maruim
SE	280410	Moita Bonita
SE	280420	Monte Alegre de Sergipe
SE	280430	Muribeca
SE	280440	Neópolis
SE	280445	Nossa Senhora Aparecida
SE	280450	Nossa Senhora da Glória
SE	280460	Nossa Senhora das Dores
SE	280470	Nossa Senhora de Lourdes
SE	280480	Nossa Senhora do Socorro
SE	280490	Pacatuba
SE	280500	Pedra Mole
SE	280510	Pedrinhas
SE	280520	Pinhão
SE	280530	Pirambu
SE	280540	Poço Redondo
SE	280550	Poço Verde
SE	280560	Porto da Folha
SE	280570	Propriá
SE	280580	Riachão do Dantas
SE	280590	Riachuelo
SE	280600	Ribeirópolis
SE	280610	Rosário do Catete
SE	280620	Salgado
SE	280630	Santa Luzia do Itanhy
SE	280650	Santa Rosa de Lima
SE	280640	Santana do São Francisco
SE	280660	Santo Amaro das Brotas
SE	280670	São Cristóvão
SE	280680	São Domingos
SE	280690	São Francisco
SE	280700	São Miguel do Aleixo
SE	280710	Simão Dias
SE	280720	Siriri
SE	280730	Telha
SE	280740	Tobias Barreto
SE	280750	Tomar do Geru
SE	280760	Umbaúba
BA	290010	Abaíra
BA	290020	Abaré
BA	290030	Acajutiba
BA	290035	Adustina
BA	290040	Água Fria
BA	290060	Aiquara
BA	290070	Alagoinhas
BA	290080	Alcobaça
BA	290090	Almadina
BA	290100	Amargosa
BA	290110	Amélia Rodrigues
BA	290115	América Dourada
BA	290120	Anagé
BA	290130	Andaraí
BA	290135	Andorinha
BA	290140	Angical
BA	290150	Anguera
BA	290160	Antas
BA	290170	Antônio Cardoso
BA	290180	Antônio Gonçalves
BA	290190	Aporá
BA	290195	Apuarema
BA	290205	Araçás
BA	290200	Aracatu
BA	290210	Araci
BA	290220	Aramari
BA	290225	Arataca
BA	290230	Aratuípe
BA	290240	Aurelino Leal
BA	290250	Baianópolis
BA	290260	Baixa Grande
BA	290265	Banzaê
BA	290270	Barra
BA	290280	Barra da Estiva
BA	290290	Barra do Choça
BA	290300	Barra do Mendes
BA	290310	Barra do Rocha
BA	290320	Barreiras
BA	290323	Barro Alto
BA	290330	Barro Preto
BA	290327	Barrocas
BA	290340	Belmonte
BA	290350	Belo Campo
BA	290360	Biritinga
BA	290370	Boa Nova
BA	290380	Boa Vista do Tupim
BA	290390	Bom Jesus da Lapa
BA	290395	Bom Jesus da Serra
BA	290400	Boninal
BA	290405	Bonito
BA	290410	Boquira
BA	290420	Botuporã
BA	290430	Brejões
BA	290440	Brejolândia
BA	290450	Brotas de Macaúbas
BA	290460	Brumado
BA	290470	Buerarema
BA	290475	Buritirama
BA	290480	Caatiba
BA	290485	Cabaceiras do Paraguaçu
BA	290490	Cachoeira
BA	290500	Caculé
BA	290510	Caém
BA	290515	Caetanos
BA	290520	Caetité
BA	290530	Cafarnaum
BA	290540	Cairu
BA	290550	Caldeirão Grande
BA	290560	Camacan
BA	290570	Camaçari
BA	290580	Camamu
BA	290590	Campo Alegre de Lourdes
BA	290600	Campo Formoso
BA	290610	Canápolis
BA	290620	Canarana
BA	290630	Canavieiras
BA	290640	Candeal
BA	290650	Candeias
BA	290660	Candiba
BA	290670	Cândido Sales
BA	290680	Cansanção
BA	290682	Canudos
BA	290685	Capela do Alto Alegre
BA	290687	Capim Grosso
BA	290689	Caraíbas
BA	290690	Caravelas
BA	290700	Cardeal da Silva
BA	290710	Carinhanha
BA	290720	Casa Nova
BA	290730	Castro Alves
BA	290740	Catolândia
BA	290750	Catu
BA	290755	Caturama
BA	290760	Central
BA	290770	Chorrochó
BA	290780	Cícero Dantas
BA	290790	Cipó
BA	290800	Coaraci
BA	290810	Cocos
BA	290820	Conceição da Feira
BA	290830	Conceição do Almeida
BA	290840	Conceição do Coité
BA	290850	Conceição do Jacuípe
BA	290860	Conde
BA	290870	Condeúba
BA	290880	Contendas do Sincorá
BA	290890	Coração de Maria
BA	290900	Cordeiros
BA	290910	Coribe
BA	290920	Coronel João Sá
BA	290930	Correntina
BA	290940	Cotegipe
BA	290950	Cravolândia
BA	290960	Crisópolis
BA	290970	Cristópolis
BA	290980	Cruz das Almas
BA	290990	Curaçá
BA	291000	Dário Meira
BA	291005	Dias d'Ávila
BA	291010	Dom Basílio
BA	291020	Dom Macedo Costa
BA	291030	Elísio Medrado
BA	291040	Encruzilhada
BA	291050	Entre Rios
BA	290050	Érico Cardoso
BA	291060	Esplanada
BA	291070	Euclides da Cunha
BA	291072	Eunápolis
BA	291075	Fátima
BA	291077	Feira da Mata
BA	291080	Feira de Santana
BA	291085	Filadélfia
BA	291090	Firmino Alves
BA	291100	Floresta Azul
BA	291110	Formosa do Rio Preto
BA	291120	Gandu
BA	291125	Gavião
BA	291130	Gentio do Ouro
BA	291140	Glória
BA	291150	Gongogi
BA	291160	Governador Mangabeira
BA	291165	Guajeru
BA	291170	Guanambi
BA	291180	Guaratinga
BA	291185	Heliópolis
BA	291190	Iaçu
BA	291200	Ibiassucê
BA	291210	Ibicaraí
BA	291220	Ibicoara
BA	291230	Ibicuí
BA	291240	Ibipeba
BA	291250	Ibipitanga
BA	291260	Ibiquera
BA	291270	Ibirapitanga
BA	291280	Ibirapuã
BA	291290	Ibirataia
BA	291300	Ibitiara
BA	291310	Ibititá
BA	291320	Ibotirama
BA	291330	Ichu
BA	291340	Igaporã
BA	291345	Igrapiúna
BA	291350	Iguaí
BA	291360	Ilhéus
BA	291370	Inhambupe
BA	291380	Ipecaetá
BA	291390	Ipiaú
BA	291400	Ipirá
BA	291410	Ipupiara
BA	291420	Irajuba
BA	291430	Iramaia
BA	291440	Iraquara
BA	291450	Irará
BA	291460	Irecê
BA	291465	Itabela
BA	291470	Itaberaba
BA	291480	Itabuna
BA	291490	Itacaré
BA	291500	Itaeté
BA	291510	Itagi
BA	291520	Itagibá
BA	291530	Itagimirim
BA	291535	Itaguaçu da Bahia
BA	291540	Itaju do Colônia
BA	291550	Itajuípe
BA	291560	Itamaraju
BA	291570	Itamari
BA	291580	Itambé
BA	291590	Itanagra
BA	291600	Itanhém
BA	291610	Itaparica
BA	291620	Itapé
BA	291630	Itapebi
BA	291640	Itapetinga
BA	291650	Itapicuru
BA	291660	Itapitanga
BA	291670	Itaquara
BA	291680	Itarantim
BA	291685	Itatim
BA	291690	Itiruçu
BA	291700	Itiúba
BA	291710	Itororó
BA	291720	Ituaçu
BA	291730	Ituberá
BA	291733	Iuiu
BA	291735	Jaborandi
BA	291740	Jacaraci
BA	291750	Jacobina
BA	291760	Jaguaquara
BA	291770	Jaguarari
BA	291780	Jaguaripe
BA	291790	Jandaíra
BA	291800	Jequié
BA	291810	Jeremoabo
BA	291820	Jiquiriçá
BA	291830	Jitaúna
BA	291835	João Dourado
BA	291840	Juazeiro
BA	291845	Jucuruçu
BA	291850	Jussara
BA	291855	Jussari
BA	291860	Jussiape
BA	291870	Lafaiete Coutinho
BA	291875	Lagoa Real
BA	291880	Laje
BA	291890	Lajedão
BA	291900	Lajedinho
BA	291905	Lajedo do Tabocal
BA	291910	Lamarão
BA	291915	Lapão
BA	291920	Lauro de Freitas
BA	291930	Lençóis
BA	291940	Licínio de Almeida
BA	291950	Livramento de Nossa Senhora
BA	291955	Luís Eduardo Magalhães
BA	291960	Macajuba
BA	291970	Macarani
BA	291980	Macaúbas
BA	291990	Macururé
BA	291992	Madre de Deus
BA	291995	Maetinga
BA	292000	Maiquinique
BA	292010	Mairi
BA	292020	Malhada
BA	292030	Malhada de Pedras
BA	292040	Manoel Vitorino
BA	292045	Mansidão
BA	292050	Maracás
BA	292060	Maragogipe
BA	292070	Maraú
BA	292080	Marcionílio Souza
BA	292090	Mascote
BA	292100	Mata de São João
BA	292105	Matina
BA	292110	Medeiros Neto
BA	292120	Miguel Calmon
BA	292130	Milagres
BA	292140	Mirangaba
BA	292145	Mirante
BA	292150	Monte Santo
BA	292160	Morpará
BA	292170	Morro do Chapéu
BA	292180	Mortugaba
BA	292190	Mucugê
BA	292200	Mucuri
BA	292205	Mulungu do Morro
BA	292210	Mundo Novo
BA	292220	Muniz Ferreira
BA	292225	Muquém do São Francisco
BA	292230	Muritiba
BA	292240	Mutuípe
BA	292250	Nazaré
BA	292260	Nilo Peçanha
BA	292265	Nordestina
BA	292270	Nova Canaã
BA	292273	Nova Fátima
BA	292275	Nova Ibiá
BA	292280	Nova Itarana
BA	292285	Nova Redenção
BA	292290	Nova Soure
BA	292300	Nova Viçosa
BA	292303	Novo Horizonte
BA	292305	Novo Triunfo
BA	292310	Olindina
BA	292320	Oliveira dos Brejinhos
BA	292330	Ouriçangas
BA	292335	Ourolândia
BA	292340	Palmas de Monte Alto
BA	292350	Palmeiras
BA	292360	Paramirim
BA	292370	Paratinga
BA	292380	Paripiranga
BA	292390	Pau Brasil
BA	292400	Paulo Afonso
BA	292405	Pé de Serra
BA	292410	Pedrão
BA	292420	Pedro Alexandre
BA	292430	Piatã
BA	292440	Pilão Arcado
BA	292450	Pindaí
BA	292460	Pindobaçu
BA	292465	Pintadas
BA	292467	Piraí do Norte
BA	292470	Piripá
BA	292480	Piritiba
BA	292490	Planaltino
BA	292500	Planalto
BA	292510	Poções
BA	292520	Pojuca
BA	292525	Ponto Novo
BA	292530	Porto Seguro
BA	292540	Potiraguá
BA	292550	Prado
BA	292560	Presidente Dutra
BA	292570	Presidente Jânio Quadros
BA	292575	Presidente Tancredo Neves
BA	292580	Queimadas
BA	292590	Quijingue
BA	292593	Quixabeira
BA	292595	Rafael Jambeiro
BA	292600	Remanso
BA	292610	Retirolândia
BA	292620	Riachão das Neves
BA	292630	Riachão do Jacuípe
BA	292640	Riacho de Santana
BA	292650	Ribeira do Amparo
BA	292660	Ribeira do Pombal
BA	292665	Ribeirão do Largo
BA	292670	Rio de Contas
BA	292680	Rio do Antônio
BA	292690	Rio do Pires
BA	292700	Rio Real
BA	292710	Rodelas
BA	292720	Ruy Barbosa
BA	292730	Salinas da Margarida
BA	292740	Salvador
BA	292750	Santa Bárbara
BA	292760	Santa Brígida
BA	292770	Santa Cruz Cabrália
BA	292780	Santa Cruz da Vitória
BA	292790	Santa Inês
BA	292805	Santa Luzia
BA	292810	Santa Maria da Vitória
BA	292840	Santa Rita de Cássia
BA	292850	Santa Terezinha
BA	292800	Santaluz
BA	292820	Santana
BA	292830	Santanópolis
BA	292860	Santo Amaro
BA	292870	Santo Antônio de Jesus
BA	292880	Santo Estêvão
BA	292890	São Desidério
BA	292895	São Domingos
BA	292910	São Felipe
BA	292900	São Félix
BA	292905	São Félix do Coribe
BA	292920	São Francisco do Conde
BA	292925	São Gabriel
BA	292930	São Gonçalo dos Campos
BA	292935	São José da Vitória
BA	292937	São José do Jacuípe
BA	292940	São Miguel das Matas
BA	292950	São Sebastião do Passé
BA	292960	Sapeaçu
BA	292970	Sátiro Dias
BA	292975	Saubara
BA	292980	Saúde
BA	292990	Seabra
BA	293000	Sebastião Laranjeiras
BA	293010	Senhor do Bonfim
BA	293020	Sento Sé
BA	293015	Serra do Ramalho
BA	293030	Serra Dourada
BA	293040	Serra Preta
BA	293050	Serrinha
BA	293060	Serrolândia
BA	293070	Simões Filho
BA	293075	Sítio do Mato
BA	293076	Sítio do Quinto
BA	293077	Sobradinho
BA	293080	Souto Soares
BA	293090	Tabocas do Brejo Velho
BA	293100	Tanhaçu
BA	293105	Tanque Novo
BA	293110	Tanquinho
BA	293120	Taperoá
BA	293130	Tapiramutá
BA	293135	Teixeira de Freitas
BA	293140	Teodoro Sampaio
BA	293150	Teofilândia
BA	293160	Teolândia
BA	293170	Terra Nova
BA	293180	Tremedal
BA	293190	Tucano
BA	293200	Uauá
BA	293210	Ubaíra
BA	293220	Ubaitaba
BA	293230	Ubatã
BA	293240	Uibaí
BA	293245	Umburanas
BA	293250	Una
BA	293260	Urandi
BA	293270	Uruçuca
BA	293280	Utinga
BA	293290	Valença
BA	293300	Valente
BA	293305	Várzea da Roça
BA	293310	Várzea do Poço
BA	293315	Várzea Nova
BA	293317	Varzedo
BA	293320	Vera Cruz
BA	293325	Vereda
BA	293330	Vitória da Conquista
BA	293340	Wagner
BA	293345	Wanderley
BA	293350	Wenceslau Guimarães
BA	293360	Xique-Xique
MG	310010	Abadia dos Dourados
MG	310020	Abaeté
MG	310030	Abre Campo
MG	310040	Acaiaca
MG	310050	Açucena
MG	310060	Água Boa
MG	310070	Água Comprida
MG	310080	Aguanil
MG	310090	Águas Formosas
MG	310100	Águas Vermelhas
MG	310110	Aimorés
MG	310120	Aiuruoca
MG	310130	Alagoa
MG	310140	Albertina
MG	310150	Além Paraíba
MG	310160	Alfenas
MG	310163	Alfredo Vasconcelos
MG	310170	Almenara
MG	310180	Alpercata
MG	310190	Alpinópolis
MG	310200	Alterosa
MG	310205	Alto Caparaó
MG	315350	Alto Jequitibá
MG	310210	Alto Rio Doce
MG	310220	Alvarenga
MG	310230	Alvinópolis
MG	310240	Alvorada de Minas
MG	310250	Amparo do Serra
MG	310260	Andradas
MG	310280	Andrelândia
MG	310285	Angelândia
MG	310290	Antônio Carlos
MG	310300	Antônio Dias
MG	310310	Antônio Prado de Minas
MG	310320	Araçaí
MG	310330	Aracitaba
MG	310340	Araçuaí
MG	310350	Araguari
MG	310360	Arantina
MG	310370	Araponga
MG	310375	Araporã
MG	310380	Arapuá
MG	310390	Araújos
MG	310400	Araxá
MG	310410	Arceburgo
MG	310420	Arcos
MG	310430	Areado
MG	310440	Argirita
MG	310445	Aricanduva
MG	310450	Arinos
MG	310460	Astolfo Dutra
MG	310470	Ataléia
MG	310480	Augusto de Lima
MG	310490	Baependi
MG	310500	Baldim
MG	310510	Bambuí
MG	310520	Bandeira
MG	310530	Bandeira do Sul
MG	310540	Barão de Cocais
MG	310550	Barão de Monte Alto
MG	310560	Barbacena
MG	310570	Barra Longa
MG	310590	Barroso
MG	310600	Bela Vista de Minas
MG	310610	Belmiro Braga
MG	310620	Belo Horizonte
MG	310630	Belo Oriente
MG	310640	Belo Vale
MG	310650	Berilo
MG	310665	Berizal
MG	310660	Bertópolis
MG	310670	Betim
MG	310680	Bias Fortes
MG	310690	Bicas
MG	310700	Biquinhas
MG	310710	Boa Esperança
MG	310720	Bocaina de Minas
MG	310730	Bocaiúva
MG	310740	Bom Despacho
MG	310750	Bom Jardim de Minas
MG	310760	Bom Jesus da Penha
MG	310770	Bom Jesus do Amparo
MG	310780	Bom Jesus do Galho
MG	310790	Bom Repouso
MG	310800	Bom Sucesso
MG	310810	Bonfim
MG	310820	Bonfinópolis de Minas
MG	310825	Bonito de Minas
MG	310830	Borda da Mata
MG	310840	Botelhos
MG	310850	Botumirim
MG	310870	Brás Pires
MG	310855	Brasilândia de Minas
MG	310860	Brasília de Minas
MG	310880	Braúnas
MG	310890	Brazópolis
MG	310900	Brumadinho
MG	310910	Bueno Brandão
MG	310920	Buenópolis
MG	310925	Bugre
MG	310930	Buritis
MG	310940	Buritizeiro
MG	310945	Cabeceira Grande
MG	310950	Cabo Verde
MG	310960	Cachoeira da Prata
MG	310970	Cachoeira de Minas
MG	310270	Cachoeira de Pajeú
MG	310980	Cachoeira Dourada
MG	310990	Caetanópolis
MG	311000	Caeté
MG	311010	Caiana
MG	311020	Cajuri
MG	311030	Caldas
MG	311040	Camacho
MG	311050	Camanducaia
MG	311060	Cambuí
MG	311070	Cambuquira
MG	311080	Campanário
MG	311090	Campanha
MG	311100	Campestre
MG	311110	Campina Verde
MG	311115	Campo Azul
MG	311120	Campo Belo
MG	311130	Campo do Meio
MG	311140	Campo Florido
MG	311150	Campos Altos
MG	311160	Campos Gerais
MG	311190	Cana Verde
MG	311170	Canaã
MG	311180	Canápolis
MG	311200	Candeias
MG	311205	Cantagalo
MG	311210	Caparaó
MG	311220	Capela Nova
MG	311230	Capelinha
MG	311240	Capetinga
MG	311250	Capim Branco
MG	311260	Capinópolis
MG	311265	Capitão Andrade
MG	311270	Capitão Enéas
MG	311280	Capitólio
MG	311290	Caputira
MG	311300	Caraí
MG	311310	Caranaíba
MG	311320	Carandaí
MG	311330	Carangola
MG	311340	Caratinga
MG	311350	Carbonita
MG	311360	Careaçu
MG	311370	Carlos Chagas
MG	311380	Carmésia
MG	311390	Carmo da Cachoeira
MG	311400	Carmo da Mata
MG	311410	Carmo de Minas
MG	311420	Carmo do Cajuru
MG	311430	Carmo do Paranaíba
MG	311440	Carmo do Rio Claro
MG	311450	Carmópolis de Minas
MG	311455	Carneirinho
MG	311460	Carrancas
MG	311470	Carvalhópolis
MG	311480	Carvalhos
MG	311490	Casa Grande
MG	311500	Cascalho Rico
MG	311510	Cássia
MG	311530	Cataguases
MG	311535	Catas Altas
MG	311540	Catas Altas da Noruega
MG	311545	Catuji
MG	311547	Catuti
MG	311550	Caxambu
MG	311560	Cedro do Abaeté
MG	311570	Central de Minas
MG	311580	Centralina
MG	311590	Chácara
MG	311600	Chalé
MG	311610	Chapada do Norte
MG	311615	Chapada Gaúcha
MG	311620	Chiador
MG	311630	Cipotânea
MG	311640	Claraval
MG	311650	Claro dos Poções
MG	311660	Cláudio
MG	311670	Coimbra
MG	311680	Coluna
MG	311690	Comendador Gomes
MG	311700	Comercinho
MG	311710	Conceição da Aparecida
MG	311520	Conceição da Barra de Minas
MG	311730	Conceição das Alagoas
MG	311720	Conceição das Pedras
MG	311740	Conceição de Ipanema
MG	311750	Conceição do Mato Dentro
MG	311760	Conceição do Pará
MG	311770	Conceição do Rio Verde
MG	311780	Conceição dos Ouros
MG	311783	Cônego Marinho
MG	311787	Confins
MG	311790	Congonhal
MG	311800	Congonhas
MG	311810	Congonhas do Norte
MG	311820	Conquista
MG	311830	Conselheiro Lafaiete
MG	311840	Conselheiro Pena
MG	311850	Consolação
MG	311860	Contagem
MG	311870	Coqueiral
MG	311880	Coração de Jesus
MG	311890	Cordisburgo
MG	311900	Cordislândia
MG	311910	Corinto
MG	311920	Coroaci
MG	311930	Coromandel
MG	311940	Coronel Fabriciano
MG	311950	Coronel Murta
MG	311960	Coronel Pacheco
MG	311970	Coronel Xavier Chaves
MG	311980	Córrego Danta
MG	311990	Córrego do Bom Jesus
MG	311995	Córrego Fundo
MG	312000	Córrego Novo
MG	312010	Couto de Magalhães de Minas
MG	312015	Crisólita
MG	312020	Cristais
MG	312030	Cristália
MG	312040	Cristiano Otoni
MG	312050	Cristina
MG	312060	Crucilândia
MG	312070	Cruzeiro da Fortaleza
MG	312080	Cruzília
MG	312083	Cuparaque
MG	312087	Curral de Dentro
MG	312090	Curvelo
MG	312100	Datas
MG	312110	Delfim Moreira
MG	312120	Delfinópolis
MG	312125	Delta
MG	312130	Descoberto
MG	312140	Desterro de Entre Rios
MG	312150	Desterro do Melo
MG	312160	Diamantina
MG	312170	Diogo de Vasconcelos
MG	312180	Dionísio
MG	312190	Divinésia
MG	312200	Divino
MG	312210	Divino das Laranjeiras
MG	312220	Divinolândia de Minas
MG	312230	Divinópolis
MG	312235	Divisa Alegre
MG	312240	Divisa Nova
MG	312245	Divisópolis
MG	312247	Dom Bosco
MG	312250	Dom Cavati
MG	312260	Dom Joaquim
MG	312270	Dom Silvério
MG	312280	Dom Viçoso
MG	312290	Dona Euzébia
MG	312300	Dores de Campos
MG	312310	Dores de Guanhães
MG	312320	Dores do Indaiá
MG	312330	Dores do Turvo
MG	312340	Doresópolis
MG	312350	Douradoquara
MG	312352	Durandé
MG	312360	Elói Mendes
MG	312370	Engenheiro Caldas
MG	312380	Engenheiro Navarro
MG	312385	Entre Folhas
MG	312390	Entre Rios de Minas
MG	312400	Ervália
MG	312410	Esmeraldas
MG	312420	Espera Feliz
MG	312430	Espinosa
MG	312440	Espírito Santo do Dourado
MG	312450	Estiva
MG	312460	Estrela Dalva
MG	312470	Estrela do Indaiá
MG	312480	Estrela do Sul
MG	312490	Eugenópolis
MG	312500	Ewbank da Câmara
MG	312510	Extrema
MG	312520	Fama
MG	312530	Faria Lemos
MG	312540	Felício dos Santos
MG	312560	Felisburgo
MG	312570	Felixlândia
MG	312580	Fernandes Tourinho
MG	312590	Ferros
MG	312595	Fervedouro
MG	312600	Florestal
MG	312610	Formiga
MG	312620	Formoso
MG	312630	Fortaleza de Minas
MG	312640	Fortuna de Minas
MG	312650	Francisco Badaró
MG	312660	Francisco Dumont
MG	312670	Francisco Sá
MG	312675	Franciscópolis
MG	312680	Frei Gaspar
MG	312690	Frei Inocêncio
MG	312695	Frei Lagonegro
MG	312700	Fronteira
MG	312705	Fronteira dos Vales
MG	312707	Fruta de Leite
MG	312710	Frutal
MG	312720	Funilândia
MG	312730	Galiléia
MG	312733	Gameleiras
MG	312735	Glaucilândia
MG	312737	Goiabeira
MG	312738	Goianá
MG	312740	Gonçalves
MG	312750	Gonzaga
MG	312760	Gouveia
MG	312770	Governador Valadares
MG	312780	Grão Mogol
MG	312790	Grupiara
MG	312800	Guanhães
MG	312810	Guapé
MG	312820	Guaraciaba
MG	312825	Guaraciama
MG	312830	Guaranésia
MG	312840	Guarani
MG	312850	Guarará
MG	312860	Guarda-Mor
MG	312870	Guaxupé
MG	312880	Guidoval
MG	312890	Guimarânia
MG	312900	Guiricema
MG	312910	Gurinhatã
MG	312920	Heliodora
MG	312930	Iapu
MG	312940	Ibertioga
MG	312950	Ibiá
MG	312960	Ibiaí
MG	312965	Ibiracatu
MG	312970	Ibiraci
MG	312980	Ibirité
MG	312990	Ibitiúra de Minas
MG	313000	Ibituruna
MG	313005	Icaraí de Minas
MG	313010	Igarapé
MG	313020	Igaratinga
MG	313030	Iguatama
MG	313040	Ijaci
MG	313050	Ilicínea
MG	313055	Imbé de Minas
MG	313060	Inconfidentes
MG	313065	Indaiabira
MG	313070	Indianópolis
MG	313080	Ingaí
MG	313090	Inhapim
MG	313100	Inhaúma
MG	313110	Inimutaba
MG	313115	Ipaba
MG	313120	Ipanema
MG	313130	Ipatinga
MG	313140	Ipiaçu
MG	313150	Ipuiúna
MG	313160	Iraí de Minas
MG	313170	Itabira
MG	313180	Itabirinha
MG	313190	Itabirito
MG	313200	Itacambira
MG	313210	Itacarambi
MG	313220	Itaguara
MG	313230	Itaipé
MG	313240	Itajubá
MG	313250	Itamarandiba
MG	313260	Itamarati de Minas
MG	313270	Itambacuri
MG	313280	Itambé do Mato Dentro
MG	313290	Itamogi
MG	313300	Itamonte
MG	313310	Itanhandu
MG	313320	Itanhomi
MG	313330	Itaobim
MG	313340	Itapagipe
MG	313350	Itapecerica
MG	313360	Itapeva
MG	313370	Itatiaiuçu
MG	313375	Itaú de Minas
MG	313380	Itaúna
MG	313390	Itaverava
MG	313400	Itinga
MG	313410	Itueta
MG	313420	Ituiutaba
MG	313430	Itumirim
MG	313440	Iturama
MG	313450	Itutinga
MG	313460	Jaboticatubas
MG	313470	Jacinto
MG	313480	Jacuí
MG	313490	Jacutinga
MG	313500	Jaguaraçu
MG	313505	Jaíba
MG	313507	Jampruca
MG	313510	Janaúba
MG	313520	Januária
MG	313530	Japaraíba
MG	313535	Japonvar
MG	313540	Jeceaba
MG	313545	Jenipapo de Minas
MG	313550	Jequeri
MG	313560	Jequitaí
MG	313570	Jequitibá
MG	313580	Jequitinhonha
MG	313590	Jesuânia
MG	313600	Joaíma
MG	313610	Joanésia
MG	313620	João Monlevade
MG	313630	João Pinheiro
MG	313640	Joaquim Felício
MG	313650	Jordânia
MG	313652	José Gonçalves de Minas
MG	313655	José Raydan
MG	313657	Josenópolis
MG	313665	Juatuba
MG	313670	Juiz de Fora
MG	313680	Juramento
MG	313690	Juruaia
MG	313695	Juvenília
MG	313700	Ladainha
MG	313710	Lagamar
MG	313720	Lagoa da Prata
MG	313730	Lagoa dos Patos
MG	313740	Lagoa Dourada
MG	313750	Lagoa Formosa
MG	313753	Lagoa Grande
MG	313760	Lagoa Santa
MG	313770	Lajinha
MG	313780	Lambari
MG	313790	Lamim
MG	313800	Laranjal
MG	313810	Lassance
MG	313820	Lavras
MG	313830	Leandro Ferreira
MG	313835	Leme do Prado
MG	313840	Leopoldina
MG	313850	Liberdade
MG	313860	Lima Duarte
MG	313862	Limeira do Oeste
MG	313865	Lontra
MG	313867	Luisburgo
MG	313868	Luislândia
MG	313870	Luminárias
MG	313880	Luz
MG	313890	Machacalis
MG	313900	Machado
MG	313910	Madre de Deus de Minas
MG	313920	Malacacheta
MG	313925	Mamonas
MG	313930	Manga
MG	313940	Manhuaçu
MG	313950	Manhumirim
MG	313960	Mantena
MG	313980	Mar de Espanha
MG	313970	Maravilhas
MG	313990	Maria da Fé
MG	314000	Mariana
MG	314010	Marilac
MG	314015	Mário Campos
MG	314020	Maripá de Minas
MG	314030	Marliéria
MG	314040	Marmelópolis
MG	314050	Martinho Campos
MG	314053	Martins Soares
MG	314055	Mata Verde
MG	314060	Materlândia
MG	314070	Mateus Leme
MG	317150	Mathias Lobato
MG	314080	Matias Barbosa
MG	314085	Matias Cardoso
MG	314090	Matipó
MG	314100	Mato Verde
MG	314110	Matozinhos
MG	314120	Matutina
MG	314130	Medeiros
MG	314140	Medina
MG	314150	Mendes Pimentel
MG	314160	Mercês
MG	314170	Mesquita
MG	314180	Minas Novas
MG	314190	Minduri
MG	314200	Mirabela
MG	314210	Miradouro
MG	314220	Miraí
MG	314225	Miravânia
MG	314230	Moeda
MG	314240	Moema
MG	314250	Monjolos
MG	314260	Monsenhor Paulo
MG	314270	Montalvânia
MG	314280	Monte Alegre de Minas
MG	314290	Monte Azul
MG	314300	Monte Belo
MG	314310	Monte Carmelo
MG	314315	Monte Formoso
MG	314320	Monte Santo de Minas
MG	314340	Monte Sião
MG	314330	Montes Claros
MG	314345	Montezuma
MG	314350	Morada Nova de Minas
MG	314360	Morro da Garça
MG	314370	Morro do Pilar
MG	314380	Munhoz
MG	314390	Muriaé
MG	314400	Mutum
MG	314410	Muzambinho
MG	314420	Nacip Raydan
MG	314430	Nanuque
MG	314435	Naque
MG	314437	Natalândia
MG	314440	Natércia
MG	314450	Nazareno
MG	314460	Nepomuceno
MG	314465	Ninheira
MG	314467	Nova Belém
MG	314470	Nova Era
MG	314480	Nova Lima
MG	314490	Nova Módica
MG	314500	Nova Ponte
MG	314505	Nova Porteirinha
MG	314510	Nova Resende
MG	314520	Nova Serrana
MG	313660	Nova União
MG	314530	Novo Cruzeiro
MG	314535	Novo Oriente de Minas
MG	314537	Novorizonte
MG	314540	Olaria
MG	314545	Olhos-d'Água
MG	314550	Olímpio Noronha
MG	314560	Oliveira
MG	314570	Oliveira Fortes
MG	314580	Onça de Pitangui
MG	314585	Oratórios
MG	314587	Orizânia
MG	314590	Ouro Branco
MG	314600	Ouro Fino
MG	314610	Ouro Preto
MG	314620	Ouro Verde de Minas
MG	314625	Padre Carvalho
MG	314630	Padre Paraíso
MG	314655	Pai Pedro
MG	314640	Paineiras
MG	314650	Pains
MG	314660	Paiva
MG	314670	Palma
MG	314675	Palmópolis
MG	314690	Papagaios
MG	314710	Pará de Minas
MG	314700	Paracatu
MG	314720	Paraguaçu
MG	314730	Paraisópolis
MG	314740	Paraopeba
MG	314760	Passa Quatro
MG	314770	Passa Tempo
MG	314780	Passa Vinte
MG	314750	Passabém
MG	314790	Passos
MG	314795	Patis
MG	314800	Patos de Minas
MG	314810	Patrocínio
MG	314820	Patrocínio do Muriaé
MG	314830	Paula Cândido
MG	314840	Paulistas
MG	314850	Pavão
MG	314860	Peçanha
MG	314870	Pedra Azul
MG	314875	Pedra Bonita
MG	314880	Pedra do Anta
MG	314890	Pedra do Indaiá
MG	314900	Pedra Dourada
MG	314910	Pedralva
MG	314915	Pedras de Maria da Cruz
MG	314920	Pedrinópolis
MG	314930	Pedro Leopoldo
MG	314940	Pedro Teixeira
MG	314950	Pequeri
MG	314960	Pequi
MG	314970	Perdigão
MG	314980	Perdizes
MG	314990	Perdões
MG	314995	Periquito
MG	315000	Pescador
MG	315010	Piau
MG	315015	Piedade de Caratinga
MG	315020	Piedade de Ponte Nova
MG	315030	Piedade do Rio Grande
MG	315040	Piedade dos Gerais
MG	315050	Pimenta
MG	315053	Pingo-d'Água
MG	315057	Pintópolis
MG	315060	Piracema
MG	315070	Pirajuba
MG	315080	Piranga
MG	315090	Piranguçu
MG	315100	Piranguinho
MG	315110	Pirapetinga
MG	315120	Pirapora
MG	315130	Piraúba
MG	315140	Pitangui
MG	315150	Piumhi
MG	315160	Planura
MG	315170	Poço Fundo
MG	315180	Poços de Caldas
MG	315190	Pocrane
MG	315200	Pompéu
MG	315210	Ponte Nova
MG	315213	Ponto Chique
MG	315217	Ponto dos Volantes
MG	315220	Porteirinha
MG	315230	Porto Firme
MG	315240	Poté
MG	315250	Pouso Alegre
MG	315260	Pouso Alto
MG	315270	Prados
MG	315280	Prata
MG	315290	Pratápolis
MG	315300	Pratinha
MG	315310	Presidente Bernardes
MG	315320	Presidente Juscelino
MG	315330	Presidente Kubitschek
MG	315340	Presidente Olegário
MG	315360	Prudente de Morais
MG	315370	Quartel Geral
MG	315380	Queluzito
MG	315390	Raposos
MG	315400	Raul Soares
MG	315410	Recreio
MG	315415	Reduto
MG	315420	Resende Costa
MG	315430	Resplendor
MG	315440	Ressaquinha
MG	315445	Riachinho
MG	315450	Riacho dos Machados
MG	315460	Ribeirão das Neves
MG	315470	Ribeirão Vermelho
MG	315480	Rio Acima
MG	315490	Rio Casca
MG	315510	Rio do Prado
MG	315500	Rio Doce
MG	315520	Rio Espera
MG	315530	Rio Manso
MG	315540	Rio Novo
MG	315550	Rio Paranaíba
MG	315560	Rio Pardo de Minas
MG	315570	Rio Piracicaba
MG	315580	Rio Pomba
MG	315590	Rio Preto
MG	315600	Rio Vermelho
MG	315610	Ritápolis
MG	315620	Rochedo de Minas
MG	315630	Rodeiro
MG	315640	Romaria
MG	315645	Rosário da Limeira
MG	315650	Rubelita
MG	315660	Rubim
MG	315670	Sabará
MG	315680	Sabinópolis
MG	315690	Sacramento
MG	315700	Salinas
MG	315710	Salto da Divisa
MG	315720	Santa Bárbara
MG	315725	Santa Bárbara do Leste
MG	315727	Santa Bárbara do Monte Verde
MG	315730	Santa Bárbara do Tugúrio
MG	315733	Santa Cruz de Minas
MG	315737	Santa Cruz de Salinas
MG	315740	Santa Cruz do Escalvado
MG	315750	Santa Efigênia de Minas
MG	315760	Santa Fé de Minas
MG	315765	Santa Helena de Minas
MG	315770	Santa Juliana
MG	315780	Santa Luzia
MG	315790	Santa Margarida
MG	315800	Santa Maria de Itabira
MG	315810	Santa Maria do Salto
MG	315820	Santa Maria do Suaçuí
MG	315920	Santa Rita de Caldas
MG	315940	Santa Rita de Ibitipoca
MG	315930	Santa Rita de Jacutinga
MG	315935	Santa Rita de Minas
MG	315950	Santa Rita do Itueto
MG	315960	Santa Rita do Sapucaí
MG	315970	Santa Rosa da Serra
MG	315980	Santa Vitória
MG	315830	Santana da Vargem
MG	315840	Santana de Cataguases
MG	315850	Santana de Pirapama
MG	315860	Santana do Deserto
MG	315870	Santana do Garambéu
MG	315880	Santana do Jacaré
MG	315890	Santana do Manhuaçu
MG	315895	Santana do Paraíso
MG	315900	Santana do Riacho
MG	315910	Santana dos Montes
MG	315990	Santo Antônio do Amparo
MG	316000	Santo Antônio do Aventureiro
MG	316010	Santo Antônio do Grama
MG	316020	Santo Antônio do Itambé
MG	316030	Santo Antônio do Jacinto
MG	316040	Santo Antônio do Monte
MG	316045	Santo Antônio do Retiro
MG	316050	Santo Antônio do Rio Abaixo
MG	316060	Santo Hipólito
MG	316070	Santos Dumont
MG	316080	São Bento Abade
MG	316090	São Brás do Suaçuí
MG	316095	São Domingos das Dores
MG	316100	São Domingos do Prata
MG	316105	São Félix de Minas
MG	316110	São Francisco
MG	316120	São Francisco de Paula
MG	316130	São Francisco de Sales
MG	316140	São Francisco do Glória
MG	316150	São Geraldo
MG	316160	São Geraldo da Piedade
MG	316165	São Geraldo do Baixio
MG	316170	São Gonçalo do Abaeté
MG	316180	São Gonçalo do Pará
MG	316190	São Gonçalo do Rio Abaixo
MG	312550	São Gonçalo do Rio Preto
MG	316200	São Gonçalo do Sapucaí
MG	316210	São Gotardo
MG	316220	São João Batista do Glória
MG	316225	São João da Lagoa
MG	316230	São João da Mata
MG	316240	São João da Ponte
MG	316245	São João das Missões
MG	316250	São João del Rei
MG	316255	São João do Manhuaçu
MG	316257	São João do Manteninha
MG	316260	São João do Oriente
MG	316265	São João do Pacuí
MG	316270	São João do Paraíso
MG	316280	São João Evangelista
MG	316290	São João Nepomuceno
MG	316292	São Joaquim de Bicas
MG	316294	São José da Barra
MG	316295	São José da Lapa
MG	316300	São José da Safira
MG	316310	São José da Varginha
MG	316320	São José do Alegre
MG	316330	São José do Divino
MG	316340	São José do Goiabal
MG	316350	São José do Jacuri
MG	316360	São José do Mantimento
MG	316370	São Lourenço
MG	316380	São Miguel do Anta
MG	316390	São Pedro da União
MG	316410	São Pedro do Suaçuí
MG	316400	São Pedro dos Ferros
MG	316420	São Romão
MG	316430	São Roque de Minas
MG	316440	São Sebastião da Bela Vista
MG	316443	São Sebastião da Vargem Alegre
MG	316447	São Sebastião do Anta
MG	316450	São Sebastião do Maranhão
MG	316460	São Sebastião do Oeste
MG	316470	São Sebastião do Paraíso
MG	316480	São Sebastião do Rio Preto
MG	316490	São Sebastião do Rio Verde
MG	316500	São Tiago
MG	316510	São Tomás de Aquino
MG	316520	São Tomé das Letras
MG	316530	São Vicente de Minas
MG	316540	Sapucaí-Mirim
MG	316550	Sardoá
MG	316553	Sarzedo
MG	316556	Sem-Peixe
MG	316557	Senador Amaral
MG	316560	Senador Cortes
MG	316570	Senador Firmino
MG	316580	Senador José Bento
MG	316590	Senador Modestino Gonçalves
MG	316600	Senhora de Oliveira
MG	316610	Senhora do Porto
MG	316620	Senhora dos Remédios
MG	316630	Sericita
MG	316640	Seritinga
MG	316650	Serra Azul de Minas
MG	316660	Serra da Saudade
MG	316680	Serra do Salitre
MG	316670	Serra dos Aimorés
MG	316690	Serrania
MG	316695	Serranópolis de Minas
MG	316700	Serranos
MG	316710	Serro
MG	316720	Sete Lagoas
MG	316555	Setubinha
MG	316730	Silveirânia
MG	316740	Silvianópolis
MG	316750	Simão Pereira
MG	316760	Simonésia
MG	316770	Sobrália
MG	316780	Soledade de Minas
MG	316790	Tabuleiro
MG	316800	Taiobeiras
MG	316805	Taparuba
MG	316810	Tapira
MG	316820	Tapiraí
MG	316830	Taquaraçu de Minas
MG	316840	Tarumirim
MG	316850	Teixeiras
MG	316860	Teófilo Otoni
MG	316870	Timóteo
MG	316880	Tiradentes
MG	316890	Tiros
MG	316900	Tocantins
MG	316905	Tocos do Moji
MG	316910	Toledo
MG	316920	Tombos
MG	316930	Três Corações
MG	316935	Três Marias
MG	316940	Três Pontas
MG	316950	Tumiritinga
MG	316960	Tupaciguara
MG	316970	Turmalina
MG	316980	Turvolândia
MG	316990	Ubá
MG	317000	Ubaí
MG	317005	Ubaporanga
MG	317010	Uberaba
MG	317020	Uberlândia
MG	317030	Umburatiba
MG	317040	Unaí
MG	317043	União de Minas
MG	317047	Uruana de Minas
MG	317050	Urucânia
MG	317052	Urucuia
MG	317057	Vargem Alegre
MG	317060	Vargem Bonita
MG	317065	Vargem Grande do Rio Pardo
MG	317070	Varginha
MG	317075	Varjão de Minas
MG	317080	Várzea da Palma
MG	317090	Varzelândia
MG	317100	Vazante
MG	317103	Verdelândia
MG	317107	Veredinha
MG	317110	Veríssimo
MG	317115	Vermelho Novo
MG	317120	Vespasiano
MG	317130	Viçosa
MG	317140	Vieiras
MG	317160	Virgem da Lapa
MG	317170	Virgínia
MG	317180	Virginópolis
MG	317190	Virgolândia
MG	317200	Visconde do Rio Branco
MG	317210	Volta Grande
MG	317220	Wenceslau Braz
ES	320010	Afonso Cláudio
ES	320016	Água Doce do Norte
ES	320013	Águia Branca
ES	320020	Alegre
ES	320030	Alfredo Chaves
ES	320035	Alto Rio Novo
ES	320040	Anchieta
ES	320050	Apiacá
ES	320060	Aracruz
ES	320070	Atílio Vivácqua
ES	320080	Baixo Guandu
ES	320090	Barra de São Francisco
ES	320100	Boa Esperança
ES	320110	Bom Jesus do Norte
ES	320115	Brejetuba
ES	320120	Cachoeiro de Itapemirim
ES	320130	Cariacica
ES	320140	Castelo
ES	320150	Colatina
ES	320160	Conceição da Barra
ES	320170	Conceição do Castelo
ES	320180	Divino de São Lourenço
ES	320190	Domingos Martins
ES	320200	Dores do Rio Preto
ES	320210	Ecoporanga
ES	320220	Fundão
ES	320225	Governador Lindenberg
ES	320230	Guaçuí
ES	320240	Guarapari
ES	320245	Ibatiba
ES	320250	Ibiraçu
ES	320255	Ibitirama
ES	320260	Iconha
ES	320265	Irupi
ES	320270	Itaguaçu
ES	320280	Itapemirim
ES	320290	Itarana
ES	320300	Iúna
ES	320305	Jaguaré
ES	320310	Jerônimo Monteiro
ES	320313	João Neiva
ES	320316	Laranja da Terra
ES	320320	Linhares
ES	320330	Mantenópolis
ES	320332	Marataízes
ES	320334	Marechal Floriano
ES	320335	Marilândia
ES	320340	Mimoso do Sul
ES	320350	Montanha
ES	320360	Mucurici
ES	320370	Muniz Freire
ES	320380	Muqui
ES	320390	Nova Venécia
ES	320400	Pancas
ES	320405	Pedro Canário
ES	320410	Pinheiros
ES	320420	Piúma
ES	320425	Ponto Belo
ES	320430	Presidente Kennedy
ES	320435	Rio Bananal
ES	320440	Rio Novo do Sul
ES	320450	Santa Leopoldina
ES	320455	Santa Maria de Jetibá
ES	320460	Santa Teresa
ES	320465	São Domingos do Norte
ES	320470	São Gabriel da Palha
ES	320480	São José do Calçado
ES	320490	São Mateus
ES	320495	São Roque do Canaã
ES	320500	Serra
ES	320501	Sooretama
ES	320503	Vargem Alta
ES	320506	Venda Nova do Imigrante
ES	320510	Viana
ES	320515	Vila Pavão
ES	320517	Vila Valério
ES	320520	Vila Velha
ES	320530	Vitória
RJ	330010	Angra dos Reis
RJ	330015	Aperibé
RJ	330020	Araruama
RJ	330022	Areal
RJ	330023	Armação dos Búzios
RJ	330025	Arraial do Cabo
RJ	330030	Barra do Piraí
RJ	330040	Barra Mansa
RJ	330045	Belford Roxo
RJ	330050	Bom Jardim
RJ	330060	Bom Jesus do Itabapoana
RJ	330070	Cabo Frio
RJ	330080	Cachoeiras de Macacu
RJ	330090	Cambuci
RJ	330100	Campos dos Goytacazes
RJ	330110	Cantagalo
RJ	330093	Carapebus
RJ	330115	Cardoso Moreira
RJ	330120	Carmo
RJ	330130	Casimiro de Abreu
RJ	330095	Comendador Levy Gasparian
RJ	330140	Conceição de Macabu
RJ	330150	Cordeiro
RJ	330160	Duas Barras
RJ	330170	Duque de Caxias
RJ	330180	Engenheiro Paulo de Frontin
RJ	330185	Guapimirim
RJ	330187	Iguaba Grande
RJ	330190	Itaboraí
RJ	330200	Itaguaí
RJ	330205	Italva
RJ	330210	Itaocara
RJ	330220	Itaperuna
RJ	330225	Itatiaia
RJ	330227	Japeri
RJ	330230	Laje do Muriaé
RJ	330240	Macaé
RJ	330245	Macuco
RJ	330250	Magé
RJ	330260	Mangaratiba
RJ	330270	Maricá
RJ	330280	Mendes
RJ	330285	Mesquita
RJ	330290	Miguel Pereira
RJ	330300	Miracema
RJ	330310	Natividade
RJ	330320	Nilópolis
RJ	330330	Niterói
RJ	330340	Nova Friburgo
RJ	330350	Nova Iguaçu
RJ	330360	Paracambi
RJ	330370	Paraíba do Sul
RJ	330380	Paraty
RJ	330385	Paty do Alferes
RJ	330390	Petrópolis
RJ	330395	Pinheiral
RJ	330400	Piraí
RJ	330410	Porciúncula
RJ	330411	Porto Real
RJ	330412	Quatis
RJ	330414	Queimados
RJ	330415	Quissamã
RJ	330420	Resende
RJ	330430	Rio Bonito
RJ	330440	Rio Claro
RJ	330450	Rio das Flores
RJ	330452	Rio das Ostras
RJ	330455	Rio de Janeiro
RJ	330460	Santa Maria Madalena
RJ	330470	Santo Antônio de Pádua
RJ	330480	São Fidélis
RJ	330475	São Francisco de Itabapoana
RJ	330490	São Gonçalo
RJ	330500	São João da Barra
RJ	330510	São João de Meriti
RJ	330513	São José de Ubá
RJ	330515	São José do Vale do Rio Preto
RJ	330520	São Pedro da Aldeia
RJ	330530	São Sebastião do Alto
RJ	330540	Sapucaia
RJ	330550	Saquarema
RJ	330555	Seropédica
RJ	330560	Silva Jardim
RJ	330570	Sumidouro
RJ	330575	Tanguá
RJ	330580	Teresópolis
RJ	330590	Trajano de Moraes
RJ	330600	Três Rios
RJ	330610	Valença
RJ	330615	Varre-Sai
RJ	330620	Vassouras
RJ	330630	Volta Redonda
SP	350010	Adamantina
SP	350020	Adolfo
SP	350030	Aguaí
SP	350040	Águas da Prata
SP	350050	Águas de Lindóia
SP	350055	Águas de Santa Bárbara
SP	350060	Águas de São Pedro
SP	350070	Agudos
SP	350075	Alambari
SP	350080	Alfredo Marcondes
SP	350090	Altair
SP	350100	Altinópolis
SP	350110	Alto Alegre
SP	350115	Alumínio
SP	350120	Álvares Florence
SP	350130	Álvares Machado
SP	350140	Álvaro de Carvalho
SP	350150	Alvinlândia
SP	350160	Americana
SP	350170	Américo Brasiliense
SP	350180	Américo de Campos
SP	350190	Amparo
SP	350200	Analândia
SP	350210	Andradina
SP	350220	Angatuba
SP	350230	Anhembi
SP	350240	Anhumas
SP	350250	Aparecida
SP	350260	Aparecida d'Oeste
SP	350270	Apiaí
SP	350275	Araçariguama
SP	350280	Araçatuba
SP	350290	Araçoiaba da Serra
SP	350300	Aramina
SP	350310	Arandu
SP	350315	Arapeí
SP	350320	Araraquara
SP	350330	Araras
SP	350335	Arco-Íris
SP	350340	Arealva
SP	350350	Areias
SP	350360	Areiópolis
SP	350370	Ariranha
SP	350380	Artur Nogueira
SP	350390	Arujá
SP	350395	Aspásia
SP	350400	Assis
SP	350410	Atibaia
SP	350420	Auriflama
SP	350430	Avaí
SP	350440	Avanhandava
SP	350450	Avaré
SP	350460	Bady Bassitt
SP	350470	Balbinos
SP	350480	Bálsamo
SP	350490	Bananal
SP	350500	Barão de Antonina
SP	350510	Barbosa
SP	350520	Bariri
SP	350530	Barra Bonita
SP	350535	Barra do Chapéu
SP	350540	Barra do Turvo
SP	350550	Barretos
SP	350560	Barrinha
SP	350570	Barueri
SP	350580	Bastos
SP	350590	Batatais
SP	350600	Bauru
SP	350610	Bebedouro
SP	350620	Bento de Abreu
SP	350630	Bernardino de Campos
SP	350635	Bertioga
SP	350640	Bilac
SP	350650	Birigui
SP	350660	Biritiba Mirim
SP	350670	Boa Esperança do Sul
SP	350680	Bocaina
SP	350690	Bofete
SP	350700	Boituva
SP	350710	Bom Jesus dos Perdões
SP	350715	Bom Sucesso de Itararé
SP	350720	Borá
SP	350730	Boracéia
SP	350740	Borborema
SP	350745	Borebi
SP	350750	Botucatu
SP	350760	Bragança Paulista
SP	350770	Braúna
SP	350775	Brejo Alegre
SP	350780	Brodowski
SP	350790	Brotas
SP	350800	Buri
SP	350810	Buritama
SP	350820	Buritizal
SP	350830	Cabrália Paulista
SP	350840	Cabreúva
SP	350850	Caçapava
SP	350860	Cachoeira Paulista
SP	350870	Caconde
SP	350880	Cafelândia
SP	350890	Caiabu
SP	350900	Caieiras
SP	350910	Caiuá
SP	350920	Cajamar
SP	350925	Cajati
SP	350930	Cajobi
SP	350940	Cajuru
SP	350945	Campina do Monte Alegre
SP	350950	Campinas
SP	350960	Campo Limpo Paulista
SP	350970	Campos do Jordão
SP	350980	Campos Novos Paulista
SP	350990	Cananéia
SP	350995	Canas
SP	351000	Cândido Mota
SP	351010	Cândido Rodrigues
SP	351015	Canitar
SP	351020	Capão Bonito
SP	351030	Capela do Alto
SP	351040	Capivari
SP	351050	Caraguatatuba
SP	351060	Carapicuíba
SP	351070	Cardoso
SP	351080	Casa Branca
SP	351090	Cássia dos Coqueiros
SP	351100	Castilho
SP	351110	Catanduva
SP	351120	Catiguá
SP	351130	Cedral
SP	351140	Cerqueira César
SP	351150	Cerquilho
SP	351160	Cesário Lange
SP	351170	Charqueada
SP	355720	Chavantes
SP	351190	Clementina
SP	351210	Colômbia
SP	351220	Conchal
SP	351230	Conchas
SP	351240	Cordeirópolis
SP	351250	Coroados
SP	351260	Coronel Macedo
SP	351270	Corumbataí
SP	351280	Cosmópolis
SP	351290	Cosmorama
SP	351300	Cotia
SP	351310	Cravinhos
SP	351320	Cristais Paulista
SP	351330	Cruzália
SP	351340	Cruzeiro
SP	351350	Cubatão
SP	351360	Cunha
SP	351370	Descalvado
SP	351380	Diadema
SP	351385	Dirce Reis
SP	351390	Divinolândia
SP	351400	Dobrada
SP	351410	Dois Córregos
SP	351420	Dolcinópolis
SP	351430	Dourado
SP	351440	Dracena
SP	351450	Duartina
SP	351460	Dumont
SP	351470	Echaporã
SP	351480	Eldorado
SP	351490	Elias Fausto
SP	351492	Elisiário
SP	351495	Embaúba
SP	351500	Embu das Artes
SP	351510	Embu-Guaçu
SP	351512	Emilianópolis
SP	351515	Engenheiro Coelho
SP	351518	Espírito Santo do Pinhal
SP	351519	Espírito Santo do Turvo
SP	355730	Estiva Gerbi
SP	351530	Estrela do Norte
SP	351520	Estrela d'Oeste
SP	351535	Euclides da Cunha Paulista
SP	351540	Fartura
SP	351560	Fernando Prestes
SP	351550	Fernandópolis
SP	351565	Fernão
SP	351570	Ferraz de Vasconcelos
SP	351580	Flora Rica
SP	351590	Floreal
SP	351600	Flórida Paulista
SP	351610	Florínea
SP	351620	Franca
SP	351630	Francisco Morato
SP	351640	Franco da Rocha
SP	351650	Gabriel Monteiro
SP	351660	Gália
SP	351670	Garça
SP	351680	Gastão Vidigal
SP	351685	Gavião Peixoto
SP	351690	General Salgado
SP	351700	Getulina
SP	351710	Glicério
SP	351720	Guaiçara
SP	351730	Guaimbê
SP	351740	Guaíra
SP	351750	Guapiaçu
SP	351760	Guapiara
SP	351770	Guará
SP	351780	Guaraçaí
SP	351790	Guaraci
SP	351800	Guarani d'Oeste
SP	351810	Guarantã
SP	351820	Guararapes
SP	351830	Guararema
SP	351840	Guaratinguetá
SP	351850	Guareí
SP	351860	Guariba
SP	351870	Guarujá
SP	351880	Guarulhos
SP	351885	Guatapará
SP	351890	Guzolândia
SP	351900	Herculândia
SP	351905	Holambra
SP	351907	Hortolândia
SP	351910	Iacanga
SP	351920	Iacri
SP	351925	Iaras
SP	351930	Ibaté
SP	351940	Ibirá
SP	351950	Ibirarema
SP	351960	Ibitinga
SP	351970	Ibiúna
SP	351980	Icém
SP	351990	Iepê
SP	352000	Igaraçu do Tietê
SP	352010	Igarapava
SP	352020	Igaratá
SP	352030	Iguape
SP	352042	Ilha Comprida
SP	352044	Ilha Solteira
SP	352040	Ilhabela
SP	352050	Indaiatuba
SP	352060	Indiana
SP	352070	Indiaporã
SP	352080	Inúbia Paulista
SP	352090	Ipaussu
SP	352100	Iperó
SP	352110	Ipeúna
SP	352115	Ipiguá
SP	352120	Iporanga
SP	352130	Ipuã
SP	352140	Iracemápolis
SP	352150	Irapuã
SP	352160	Irapuru
SP	352170	Itaberá
SP	352180	Itaí
SP	352190	Itajobi
SP	352200	Itaju
SP	352210	Itanhaém
SP	352215	Itaoca
SP	352220	Itapecerica da Serra
SP	352230	Itapetininga
SP	352240	Itapeva
SP	352250	Itapevi
SP	352260	Itapira
SP	352265	Itapirapuã Paulista
SP	352270	Itápolis
SP	352280	Itaporanga
SP	352290	Itapuí
SP	352300	Itapura
SP	352310	Itaquaquecetuba
SP	352320	Itararé
SP	352330	Itariri
SP	352340	Itatiba
SP	352350	Itatinga
SP	352360	Itirapina
SP	352370	Itirapuã
SP	352380	Itobi
SP	352390	Itu
SP	352400	Itupeva
SP	352410	Ituverava
SP	352420	Jaborandi
SP	352430	Jaboticabal
SP	352440	Jacareí
SP	352450	Jaci
SP	352460	Jacupiranga
SP	352470	Jaguariúna
SP	352480	Jales
SP	352490	Jambeiro
SP	352500	Jandira
SP	352510	Jardinópolis
SP	352520	Jarinu
SP	352530	Jaú
SP	352540	Jeriquara
SP	352550	Joanópolis
SP	352560	João Ramalho
SP	352570	José Bonifácio
SP	352580	Júlio Mesquita
SP	352590	Jundiaí
SP	352600	Junqueirópolis
SP	352610	Juquiá
SP	352620	Juquitiba
SP	352630	Lagoinha
SP	352640	Laranjal Paulista
SP	352650	Lavínia
SP	352660	Lavrinhas
SP	352670	Leme
SP	352680	Lençóis Paulista
SP	352690	Limeira
SP	352700	Lindóia
SP	352710	Lins
SP	352720	Lorena
SP	352725	Lourdes
SP	352730	Louveira
SP	352740	Lucélia
SP	352750	Lucianópolis
SP	352760	Luís Antônio
SP	352770	Luiziânia
SP	352780	Lupércio
SP	352790	Lutécia
SP	352800	Macatuba
SP	352810	Macaubal
SP	352820	Macedônia
SP	352830	Magda
SP	352840	Mairinque
SP	352850	Mairiporã
SP	352860	Manduri
SP	352870	Marabá Paulista
SP	352880	Maracaí
SP	352885	Marapoama
SP	352890	Mariápolis
SP	352900	Marília
SP	352910	Marinópolis
SP	352920	Martinópolis
SP	352930	Matão
SP	352940	Mauá
SP	352950	Mendonça
SP	352960	Meridiano
SP	352965	Mesópolis
SP	352970	Miguelópolis
SP	352980	Mineiros do Tietê
SP	353000	Mira Estrela
SP	352990	Miracatu
SP	353010	Mirandópolis
SP	353020	Mirante do Paranapanema
SP	353030	Mirassol
SP	353040	Mirassolândia
SP	353050	Mococa
SP	353060	Mogi das Cruzes
SP	353070	Mogi Guaçu
SP	353080	Mogi Mirim
SP	353090	Mombuca
SP	353100	Monções
SP	353110	Mongaguá
SP	353120	Monte Alegre do Sul
SP	353130	Monte Alto
SP	353140	Monte Aprazível
SP	353150	Monte Azul Paulista
SP	353160	Monte Castelo
SP	353180	Monte Mor
SP	353170	Monteiro Lobato
SP	353190	Morro Agudo
SP	353200	Morungaba
SP	353205	Motuca
SP	353210	Murutinga do Sul
SP	353215	Nantes
SP	353220	Narandiba
SP	353230	Natividade da Serra
SP	353240	Nazaré Paulista
SP	353250	Neves Paulista
SP	353260	Nhandeara
SP	353270	Nipoã
SP	353280	Nova Aliança
SP	353282	Nova Campina
SP	353284	Nova Canaã Paulista
SP	353286	Nova Castilho
SP	353290	Nova Europa
SP	353300	Nova Granada
SP	353310	Nova Guataporanga
SP	353320	Nova Independência
SP	353330	Nova Luzitânia
SP	353340	Nova Odessa
SP	353325	Novais
SP	353350	Novo Horizonte
SP	353360	Nuporanga
SP	353370	Ocauçu
SP	353380	Óleo
SP	353390	Olímpia
SP	353400	Onda Verde
SP	353410	Oriente
SP	353420	Orindiúva
SP	353430	Orlândia
SP	353440	Osasco
SP	353450	Oscar Bressane
SP	353460	Osvaldo Cruz
SP	353470	Ourinhos
SP	353480	Ouro Verde
SP	353475	Ouroeste
SP	353490	Pacaembu
SP	353500	Palestina
SP	353510	Palmares Paulista
SP	353520	Palmeira d'Oeste
SP	353530	Palmital
SP	353540	Panorama
SP	353550	Paraguaçu Paulista
SP	353560	Paraibuna
SP	353570	Paraíso
SP	353580	Paranapanema
SP	353590	Paranapuã
SP	353600	Parapuã
SP	353610	Pardinho
SP	353620	Pariquera-Açu
SP	353625	Parisi
SP	353630	Patrocínio Paulista
SP	353640	Paulicéia
SP	353650	Paulínia
SP	353657	Paulistânia
SP	353660	Paulo de Faria
SP	353670	Pederneiras
SP	353680	Pedra Bela
SP	353690	Pedranópolis
SP	353700	Pedregulho
SP	353710	Pedreira
SP	353715	Pedrinhas Paulista
SP	353720	Pedro de Toledo
SP	353730	Penápolis
SP	353740	Pereira Barreto
SP	353750	Pereiras
SP	353760	Peruíbe
SP	353770	Piacatu
SP	353780	Piedade
SP	353790	Pilar do Sul
SP	353800	Pindamonhangaba
SP	353810	Pindorama
SP	353820	Pinhalzinho
SP	353830	Piquerobi
SP	353850	Piquete
SP	353860	Piracaia
SP	353870	Piracicaba
SP	353880	Piraju
SP	353890	Pirajuí
SP	353900	Pirangi
SP	353910	Pirapora do Bom Jesus
SP	353920	Pirapozinho
SP	353930	Pirassununga
SP	353940	Piratininga
SP	353950	Pitangueiras
SP	353960	Planalto
SP	353970	Platina
SP	353980	Poá
SP	353990	Poloni
SP	354000	Pompéia
SP	354010	Pongaí
SP	354020	Pontal
SP	354025	Pontalinda
SP	354030	Pontes Gestal
SP	354040	Populina
SP	354050	Porangaba
SP	354060	Porto Feliz
SP	354070	Porto Ferreira
SP	354080	Potirendaba
SP	354085	Pracinha
SP	354090	Pradópolis
SP	354100	Praia Grande
SP	354105	Pratânia
SP	354110	Presidente Alves
SP	354120	Presidente Bernardes
SP	354130	Presidente Epitácio
SP	354140	Presidente Prudente
SP	354150	Presidente Venceslau
SP	354160	Promissão
SP	354165	Quadra
SP	354170	Quatá
SP	354180	Queiroz
SP	354190	Queluz
SP	354200	Quintana
SP	354210	Rafard
SP	354220	Rancharia
SP	354230	Redenção da Serra
SP	354240	Regente Feijó
SP	354250	Reginópolis
SP	354260	Registro
SP	354270	Restinga
SP	354280	Ribeira
SP	354290	Ribeirão Bonito
SP	354300	Ribeirão Branco
SP	354310	Ribeirão Corrente
SP	354320	Ribeirão do Sul
SP	354323	Ribeirão dos Índios
SP	354325	Ribeirão Grande
SP	354330	Ribeirão Pires
SP	354340	Ribeirão Preto
SP	354360	Rifaina
SP	354370	Rincão
SP	354380	Rinópolis
SP	354390	Rio Claro
SP	354400	Rio das Pedras
SP	354410	Rio Grande da Serra
SP	354420	Riolândia
SP	354350	Riversul
SP	354425	Rosana
SP	354430	Roseira
SP	354440	Rubiácea
SP	354450	Rubinéia
SP	354460	Sabino
SP	354470	Sagres
SP	354480	Sales
SP	354490	Sales Oliveira
SP	354500	Salesópolis
SP	354510	Salmourão
SP	354515	Saltinho
SP	354520	Salto
SP	354530	Salto de Pirapora
SP	354540	Salto Grande
SP	354550	Sandovalina
SP	354560	Santa Adélia
SP	354570	Santa Albertina
SP	354580	Santa Bárbara d'Oeste
SP	354600	Santa Branca
SP	354610	Santa Clara d'Oeste
SP	354620	Santa Cruz da Conceição
SP	354625	Santa Cruz da Esperança
SP	354630	Santa Cruz das Palmeiras
SP	354640	Santa Cruz do Rio Pardo
SP	354650	Santa Ernestina
SP	354660	Santa Fé do Sul
SP	354670	Santa Gertrudes
SP	354680	Santa Isabel
SP	354690	Santa Lúcia
SP	354700	Santa Maria da Serra
SP	354710	Santa Mercedes
SP	354750	Santa Rita do Passa Quatro
SP	354740	Santa Rita d'Oeste
SP	354760	Santa Rosa de Viterbo
SP	354765	Santa Salete
SP	354720	Santana da Ponte Pensa
SP	354730	Santana de Parnaíba
SP	354770	Santo Anastácio
SP	354780	Santo André
SP	354790	Santo Antônio da Alegria
SP	354800	Santo Antônio de Posse
SP	354805	Santo Antônio do Aracanguá
SP	354810	Santo Antônio do Jardim
SP	354820	Santo Antônio do Pinhal
SP	354830	Santo Expedito
SP	354840	Santópolis do Aguapeí
SP	354850	Santos
SP	354860	São Bento do Sapucaí
SP	354870	São Bernardo do Campo
SP	354880	São Caetano do Sul
SP	354890	São Carlos
SP	354900	São Francisco
SP	354910	São João da Boa Vista
SP	354920	São João das Duas Pontes
SP	354925	São João de Iracema
SP	354930	São João do Pau d'Alho
SP	354940	São Joaquim da Barra
SP	354950	São José da Bela Vista
SP	354960	São José do Barreiro
SP	354970	São José do Rio Pardo
SP	354980	São José do Rio Preto
SP	354990	São José dos Campos
SP	354995	São Lourenço da Serra
SP	355000	São Luiz do Paraitinga
SP	355010	São Manuel
SP	355020	São Miguel Arcanjo
SP	355030	São Paulo
SP	355040	São Pedro
SP	355050	São Pedro do Turvo
SP	355060	São Roque
SP	355070	São Sebastião
SP	355080	São Sebastião da Grama
SP	355090	São Simão
SP	355100	São Vicente
SP	355110	Sarapuí
SP	355120	Sarutaiá
SP	355130	Sebastianópolis do Sul
SP	355140	Serra Azul
SP	355160	Serra Negra
SP	355150	Serrana
SP	355170	Sertãozinho
SP	355180	Sete Barras
SP	355190	Severínia
SP	355200	Silveiras
SP	355210	Socorro
SP	355220	Sorocaba
SP	355230	Sud Mennucci
SP	355240	Sumaré
SP	355255	Suzanápolis
SP	355250	Suzano
SP	355260	Tabapuã
SP	355270	Tabatinga
SP	355280	Taboão da Serra
SP	355290	Taciba
SP	355300	Taguaí
SP	355310	Taiaçu
SP	355320	Taiúva
SP	355330	Tambaú
SP	355340	Tanabi
SP	355350	Tapiraí
SP	355360	Tapiratiba
SP	355365	Taquaral
SP	355370	Taquaritinga
SP	355380	Taquarituba
SP	355385	Taquarivaí
SP	355390	Tarabai
SP	355395	Tarumã
SP	355400	Tatuí
SP	355410	Taubaté
SP	355420	Tejupá
SP	355430	Teodoro Sampaio
SP	355440	Terra Roxa
SP	355450	Tietê
SP	355460	Timburi
SP	355465	Torre de Pedra
SP	355470	Torrinha
SP	355475	Trabiju
SP	355480	Tremembé
SP	355490	Três Fronteiras
SP	355495	Tuiuti
SP	355500	Tupã
SP	355510	Tupi Paulista
SP	355520	Turiúba
SP	355530	Turmalina
SP	355535	Ubarana
SP	355540	Ubatuba
SP	355550	Ubirajara
SP	355560	Uchoa
SP	355570	União Paulista
SP	355580	Urânia
SP	355590	Uru
SP	355600	Urupês
SP	355610	Valentim Gentil
SP	355620	Valinhos
SP	355630	Valparaíso
SP	355635	Vargem
SP	355640	Vargem Grande do Sul
SP	355645	Vargem Grande Paulista
SP	355650	Várzea Paulista
SP	355660	Vera Cruz
SP	355670	Vinhedo
SP	355680	Viradouro
SP	355690	Vista Alegre do Alto
SP	355695	Vitória Brasil
SP	355700	Votorantim
SP	355710	Votuporanga
SP	355715	Zacarias
PR	410010	Abatiá
PR	410020	Adrianópolis
PR	410030	Agudos do Sul
PR	410040	Almirante Tamandaré
PR	410045	Altamira do Paraná
PR	412862	Alto Paraíso
PR	410060	Alto Paraná
PR	410070	Alto Piquiri
PR	410050	Altônia
PR	410080	Alvorada do Sul
PR	410090	Amaporã
PR	410100	Ampére
PR	410105	Anahy
PR	410110	Andirá
PR	410115	Ângulo
PR	410120	Antonina
PR	410130	Antônio Olinto
PR	410140	Apucarana
PR	410150	Arapongas
PR	410160	Arapoti
PR	410165	Arapuã
PR	410170	Araruna
PR	410180	Araucária
PR	410185	Ariranha do Ivaí
PR	410190	Assaí
PR	410200	Assis Chateaubriand
PR	410210	Astorga
PR	410220	Atalaia
PR	410230	Balsa Nova
PR	410240	Bandeirantes
PR	410250	Barbosa Ferraz
PR	410270	Barra do Jacaré
PR	410260	Barracão
PR	410275	Bela Vista da Caroba
PR	410280	Bela Vista do Paraíso
PR	410290	Bituruna
PR	410300	Boa Esperança
PR	410302	Boa Esperança do Iguaçu
PR	410304	Boa Ventura de São Roque
PR	410305	Boa Vista da Aparecida
PR	410310	Bocaiúva do Sul
PR	410315	Bom Jesus do Sul
PR	410320	Bom Sucesso
PR	410322	Bom Sucesso do Sul
PR	410330	Borrazópolis
PR	410335	Braganey
PR	410337	Brasilândia do Sul
PR	410340	Cafeara
PR	410345	Cafelândia
PR	410347	Cafezal do Sul
PR	410350	Califórnia
PR	410360	Cambará
PR	410370	Cambé
PR	410380	Cambira
PR	410390	Campina da Lagoa
PR	410395	Campina do Simão
PR	410400	Campina Grande do Sul
PR	410405	Campo Bonito
PR	410410	Campo do Tenente
PR	410420	Campo Largo
PR	410425	Campo Magro
PR	410430	Campo Mourão
PR	410440	Cândido de Abreu
PR	410442	Candói
PR	410445	Cantagalo
PR	410450	Capanema
PR	410460	Capitão Leônidas Marques
PR	410465	Carambeí
PR	410470	Carlópolis
PR	410480	Cascavel
PR	410490	Castro
PR	410500	Catanduvas
PR	410510	Centenário do Sul
PR	410520	Cerro Azul
PR	410530	Céu Azul
PR	410540	Chopinzinho
PR	410550	Cianorte
PR	410560	Cidade Gaúcha
PR	410570	Clevelândia
PR	410580	Colombo
PR	410590	Colorado
PR	410600	Congonhinhas
PR	410610	Conselheiro Mairinck
PR	410620	Contenda
PR	410630	Corbélia
PR	410640	Cornélio Procópio
PR	410645	Coronel Domingos Soares
PR	410650	Coronel Vivida
PR	410655	Corumbataí do Sul
PR	410680	Cruz Machado
PR	410657	Cruzeiro do Iguaçu
PR	410660	Cruzeiro do Oeste
PR	410670	Cruzeiro do Sul
PR	410685	Cruzmaltina
PR	410690	Curitiba
PR	410700	Curiúva
PR	410710	Diamante do Norte
PR	410712	Diamante do Sul
PR	410715	Diamante D'Oeste
PR	410720	Dois Vizinhos
PR	410725	Douradina
PR	410730	Doutor Camargo
PR	412863	Doutor Ulysses
PR	410740	Enéas Marques
PR	410750	Engenheiro Beltrão
PR	410753	Entre Rios do Oeste
PR	410752	Esperança Nova
PR	410754	Espigão Alto do Iguaçu
PR	410755	Farol
PR	410760	Faxinal
PR	410765	Fazenda Rio Grande
PR	410770	Fênix
PR	410773	Fernandes Pinheiro
PR	410775	Figueira
PR	410785	Flor da Serra do Sul
PR	410780	Floraí
PR	410790	Floresta
PR	410800	Florestópolis
PR	410810	Flórida
PR	410820	Formosa do Oeste
PR	410830	Foz do Iguaçu
PR	410845	Foz do Jordão
PR	410832	Francisco Alves
PR	410840	Francisco Beltrão
PR	410850	General Carneiro
PR	410855	Godoy Moreira
PR	410860	Goioerê
PR	410865	Goioxim
PR	410870	Grandes Rios
PR	410880	Guaíra
PR	410890	Guairaçá
PR	410895	Guamiranga
PR	410900	Guapirama
PR	410910	Guaporema
PR	410920	Guaraci
PR	410930	Guaraniaçu
PR	410940	Guarapuava
PR	410950	Guaraqueçaba
PR	410960	Guaratuba
PR	410965	Honório Serpa
PR	410970	Ibaiti
PR	410975	Ibema
PR	410980	Ibiporã
PR	410990	Icaraíma
PR	411000	Iguaraçu
PR	411005	Iguatu
PR	411007	Imbaú
PR	411010	Imbituva
PR	411020	Inácio Martins
PR	411030	Inajá
PR	411040	Indianópolis
PR	411050	Ipiranga
PR	411060	Iporã
PR	411065	Iracema do Oeste
PR	411070	Irati
PR	411080	Iretama
PR	411090	Itaguajé
PR	411095	Itaipulândia
PR	411100	Itambaracá
PR	411110	Itambé
PR	411120	Itapejara d'Oeste
PR	411125	Itaperuçu
PR	411130	Itaúna do Sul
PR	411140	Ivaí
PR	411150	Ivaiporã
PR	411155	Ivaté
PR	411160	Ivatuba
PR	411170	Jaboti
PR	411180	Jacarezinho
PR	411190	Jaguapitã
PR	411200	Jaguariaíva
PR	411210	Jandaia do Sul
PR	411220	Janiópolis
PR	411230	Japira
PR	411240	Japurá
PR	411250	Jardim Alegre
PR	411260	Jardim Olinda
PR	411270	Jataizinho
PR	411275	Jesuítas
PR	411280	Joaquim Távora
PR	411290	Jundiaí do Sul
PR	411295	Juranda
PR	411300	Jussara
PR	411310	Kaloré
PR	411320	Lapa
PR	411325	Laranjal
PR	411330	Laranjeiras do Sul
PR	411340	Leópolis
PR	411342	Lidianópolis
PR	411345	Lindoeste
PR	411350	Loanda
PR	411360	Lobato
PR	411370	Londrina
PR	411373	Luiziana
PR	411375	Lunardelli
PR	411380	Lupionópolis
PR	411390	Mallet
PR	411400	Mamborê
PR	411410	Mandaguaçu
PR	411420	Mandaguari
PR	411430	Mandirituba
PR	411435	Manfrinópolis
PR	411440	Mangueirinha
PR	411450	Manoel Ribas
PR	411460	Marechal Cândido Rondon
PR	411470	Maria Helena
PR	411480	Marialva
PR	411490	Marilândia do Sul
PR	411500	Marilena
PR	411510	Mariluz
PR	411520	Maringá
PR	411530	Mariópolis
PR	411535	Maripá
PR	411540	Marmeleiro
PR	411545	Marquinho
PR	411550	Marumbi
PR	411560	Matelândia
PR	411570	Matinhos
PR	411573	Mato Rico
PR	411575	Mauá da Serra
PR	411580	Medianeira
PR	411585	Mercedes
PR	411590	Mirador
PR	411600	Miraselva
PR	411605	Missal
PR	411610	Moreira Sales
PR	411620	Morretes
PR	411630	Munhoz de Melo
PR	411640	Nossa Senhora das Graças
PR	411650	Nova Aliança do Ivaí
PR	411660	Nova América da Colina
PR	411670	Nova Aurora
PR	411680	Nova Cantu
PR	411690	Nova Esperança
PR	411695	Nova Esperança do Sudoeste
PR	411700	Nova Fátima
PR	411705	Nova Laranjeiras
PR	411710	Nova Londrina
PR	411720	Nova Olímpia
PR	411725	Nova Prata do Iguaçu
PR	411721	Nova Santa Bárbara
PR	411722	Nova Santa Rosa
PR	411727	Nova Tebas
PR	411729	Novo Itacolomi
PR	411730	Ortigueira
PR	411740	Ourizona
PR	411745	Ouro Verde do Oeste
PR	411750	Paiçandu
PR	411760	Palmas
PR	411770	Palmeira
PR	411780	Palmital
PR	411790	Palotina
PR	411800	Paraíso do Norte
PR	411810	Paranacity
PR	411820	Paranaguá
PR	411830	Paranapoema
PR	411840	Paranavaí
PR	411845	Pato Bragado
PR	411850	Pato Branco
PR	411860	Paula Freitas
PR	411870	Paulo Frontin
PR	411880	Peabiru
PR	411885	Perobal
PR	411890	Pérola
PR	411900	Pérola d'Oeste
PR	411910	Piên
PR	411915	Pinhais
PR	411925	Pinhal de São Bento
PR	411920	Pinhalão
PR	411930	Pinhão
PR	411940	Piraí do Sul
PR	411950	Piraquara
PR	411965	Pitangueiras
PR	411970	Planaltina do Paraná
PR	411980	Planalto
PR	411990	Ponta Grossa
PR	411995	Pontal do Paraná
PR	412000	Porecatu
PR	412010	Porto Amazonas
PR	412015	Porto Barreiro
PR	412020	Porto Rico
PR	412030	Porto Vitória
PR	412033	Prado Ferreira
PR	412035	Pranchita
PR	412040	Presidente Castelo Branco
PR	412050	Primeiro de Maio
PR	412060	Prudentópolis
PR	412065	Quarto Centenário
PR	412070	Quatiguá
PR	412080	Quatro Barras
PR	412085	Quatro Pontes
PR	412090	Quedas do Iguaçu
PR	412100	Querência do Norte
PR	412110	Quinta do Sol
PR	412120	Quitandinha
PR	412125	Ramilândia
PR	412130	Rancho Alegre
PR	412135	Rancho Alegre D'Oeste
PR	412140	Realeza
PR	412150	Rebouças
PR	412160	Renascença
PR	412170	Reserva
PR	412175	Reserva do Iguaçu
PR	412180	Ribeirão Claro
PR	412190	Ribeirão do Pinhal
PR	412200	Rio Azul
PR	412210	Rio Bom
PR	412215	Rio Bonito do Iguaçu
PR	412217	Rio Branco do Ivaí
PR	412220	Rio Branco do Sul
PR	412230	Rio Negro
PR	412240	Rolândia
PR	412250	Roncador
PR	412260	Rondon
PR	412265	Rosário do Ivaí
PR	412270	Sabáudia
PR	412280	Salgado Filho
PR	412290	Salto do Itararé
PR	412300	Salto do Lontra
PR	412310	Santa Amélia
PR	412320	Santa Cecília do Pavão
PR	412330	Santa Cruz de Monte Castelo
PR	412340	Santa Fé
PR	412350	Santa Helena
PR	412360	Santa Inês
PR	412370	Santa Isabel do Ivaí
PR	412380	Santa Izabel do Oeste
PR	412382	Santa Lúcia
PR	412385	Santa Maria do Oeste
PR	412390	Santa Mariana
PR	412395	Santa Mônica
PR	412402	Santa Tereza do Oeste
PR	412405	Santa Terezinha de Itaipu
PR	412400	Santana do Itararé
PR	412410	Santo Antônio da Platina
PR	412420	Santo Antônio do Caiuá
PR	412430	Santo Antônio do Paraíso
PR	412440	Santo Antônio do Sudoeste
PR	412450	Santo Inácio
PR	412460	São Carlos do Ivaí
PR	412470	São Jerônimo da Serra
PR	412480	São João
PR	412490	São João do Caiuá
PR	412500	São João do Ivaí
PR	412510	São João do Triunfo
PR	412530	São Jorge do Ivaí
PR	412535	São Jorge do Patrocínio
PR	412520	São Jorge d'Oeste
PR	412540	São José da Boa Vista
PR	412545	São José das Palmeiras
PR	412550	São José dos Pinhais
PR	412555	São Manoel do Paraná
PR	412560	São Mateus do Sul
PR	412570	São Miguel do Iguaçu
PR	412575	São Pedro do Iguaçu
PR	412580	São Pedro do Ivaí
PR	412590	São Pedro do Paraná
PR	412600	São Sebastião da Amoreira
PR	412610	São Tomé
PR	412620	Sapopema
PR	412625	Sarandi
PR	412627	Saudade do Iguaçu
PR	412630	Sengés
PR	412635	Serranópolis do Iguaçu
PR	412640	Sertaneja
PR	412650	Sertanópolis
PR	412660	Siqueira Campos
PR	412665	Sulina
PR	412667	Tamarana
PR	412670	Tamboara
PR	412680	Tapejara
PR	412690	Tapira
PR	412700	Teixeira Soares
PR	412710	Telêmaco Borba
PR	412720	Terra Boa
PR	412730	Terra Rica
PR	412740	Terra Roxa
PR	412750	Tibagi
PR	412760	Tijucas do Sul
PR	412770	Toledo
PR	412780	Tomazina
PR	412785	Três Barras do Paraná
PR	412788	Tunas do Paraná
PR	412790	Tuneiras do Oeste
PR	412795	Tupãssi
PR	412796	Turvo
PR	412800	Ubiratã
PR	412810	Umuarama
PR	412820	União da Vitória
PR	412830	Uniflor
PR	412840	Uraí
PR	412853	Ventania
PR	412855	Vera Cruz do Oeste
PR	412860	Verê
PR	412865	Virmond
PR	412870	Vitorino
PR	412850	Wenceslau Braz
PR	412880	Xambrê
SC	420005	Abdon Batista
SC	420010	Abelardo Luz
SC	420020	Agrolândia
SC	420030	Agronômica
SC	420040	Água Doce
SC	420050	Águas de Chapecó
SC	420055	Águas Frias
SC	420060	Águas Mornas
SC	420070	Alfredo Wagner
SC	420075	Alto Bela Vista
SC	420080	Anchieta
SC	420090	Angelina
SC	420100	Anita Garibaldi
SC	420110	Anitápolis
SC	420120	Antônio Carlos
SC	420125	Apiúna
SC	420127	Arabutã
SC	420130	Araquari
SC	420140	Araranguá
SC	420150	Armazém
SC	420160	Arroio Trinta
SC	420165	Arvoredo
SC	420170	Ascurra
SC	420180	Atalanta
SC	420190	Aurora
SC	420195	Balneário Arroio do Silva
SC	420205	Balneário Barra do Sul
SC	420200	Balneário Camboriú
SC	420207	Balneário Gaivota
SC	421280	Balneário Piçarras
SC	422000	Balneário Rincão
SC	420208	Bandeirante
SC	420209	Barra Bonita
SC	420210	Barra Velha
SC	420213	Bela Vista do Toldo
SC	420215	Belmonte
SC	420220	Benedito Novo
SC	420230	Biguaçu
SC	420240	Blumenau
SC	420243	Bocaina do Sul
SC	420250	Bom Jardim da Serra
SC	420253	Bom Jesus
SC	420257	Bom Jesus do Oeste
SC	420260	Bom Retiro
SC	420245	Bombinhas
SC	420270	Botuverá
SC	420280	Braço do Norte
SC	420285	Braço do Trombudo
SC	420287	Brunópolis
SC	420290	Brusque
SC	420300	Caçador
SC	420310	Caibi
SC	420315	Calmon
SC	420320	Camboriú
SC	420330	Campo Alegre
SC	420340	Campo Belo do Sul
SC	420350	Campo Erê
SC	420360	Campos Novos
SC	420370	Canelinha
SC	420380	Canoinhas
SC	420325	Capão Alto
SC	420390	Capinzal
SC	420395	Capivari de Baixo
SC	420400	Catanduvas
SC	420410	Caxambu do Sul
SC	420415	Celso Ramos
SC	420417	Cerro Negro
SC	420419	Chapadão do Lageado
SC	420420	Chapecó
SC	420425	Cocal do Sul
SC	420430	Concórdia
SC	420435	Cordilheira Alta
SC	420440	Coronel Freitas
SC	420445	Coronel Martins
SC	420455	Correia Pinto
SC	420450	Corupá
SC	420460	Criciúma
SC	420470	Cunha Porã
SC	420475	Cunhataí
SC	420480	Curitibanos
SC	420490	Descanso
SC	420500	Dionísio Cerqueira
SC	420510	Dona Emma
SC	420515	Doutor Pedrinho
SC	420517	Entre Rios
SC	420519	Ermo
SC	420520	Erval Velho
SC	420530	Faxinal dos Guedes
SC	420535	Flor do Sertão
SC	420540	Florianópolis
SC	420543	Formosa do Sul
SC	420545	Forquilhinha
SC	420550	Fraiburgo
SC	420555	Frei Rogério
SC	420560	Galvão
SC	420570	Garopaba
SC	420580	Garuva
SC	420590	Gaspar
SC	420600	Governador Celso Ramos
SC	420610	Grão-Pará
SC	420620	Gravatal
SC	420630	Guabiruba
SC	420640	Guaraciaba
SC	420650	Guaramirim
SC	420660	Guarujá do Sul
SC	420665	Guatambú
SC	420670	Herval d'Oeste
SC	420675	Ibiam
SC	420680	Ibicaré
SC	420690	Ibirama
SC	420700	Içara
SC	420710	Ilhota
SC	420720	Imaruí
SC	420730	Imbituba
SC	420740	Imbuia
SC	420750	Indaial
SC	420757	Iomerê
SC	420760	Ipira
SC	420765	Iporã do Oeste
SC	420768	Ipuaçu
SC	420770	Ipumirim
SC	420775	Iraceminha
SC	420780	Irani
SC	420785	Irati
SC	420790	Irineópolis
SC	420800	Itá
SC	420810	Itaiópolis
SC	420820	Itajaí
SC	420830	Itapema
SC	420840	Itapiranga
SC	420845	Itapoá
SC	420850	Ituporanga
SC	420860	Jaborá
SC	420870	Jacinto Machado
SC	420880	Jaguaruna
SC	420890	Jaraguá do Sul
SC	420895	Jardinópolis
SC	420900	Joaçaba
SC	420910	Joinville
SC	420915	José Boiteux
SC	420917	Jupiá
SC	420920	Lacerdópolis
SC	420930	Lages
SC	420940	Laguna
SC	420945	Lajeado Grande
SC	420950	Laurentino
SC	420960	Lauro Müller
SC	420970	Lebon Régis
SC	420980	Leoberto Leal
SC	420985	Lindóia do Sul
SC	420990	Lontras
SC	421000	Luiz Alves
SC	421003	Luzerna
SC	421005	Macieira
SC	421010	Mafra
SC	421020	Major Gercino
SC	421030	Major Vieira
SC	421040	Maracajá
SC	421050	Maravilha
SC	421055	Marema
SC	421060	Massaranduba
SC	421070	Matos Costa
SC	421080	Meleiro
SC	421085	Mirim Doce
SC	421090	Modelo
SC	421100	Mondaí
SC	421105	Monte Carlo
SC	421110	Monte Castelo
SC	421120	Morro da Fumaça
SC	421125	Morro Grande
SC	421130	Navegantes
SC	421140	Nova Erechim
SC	421145	Nova Itaberaba
SC	421150	Nova Trento
SC	421160	Nova Veneza
SC	421165	Novo Horizonte
SC	421170	Orleans
SC	421175	Otacílio Costa
SC	421180	Ouro
SC	421185	Ouro Verde
SC	421187	Paial
SC	421189	Painel
SC	421190	Palhoça
SC	421200	Palma Sola
SC	421205	Palmeira
SC	421210	Palmitos
SC	421220	Papanduva
SC	421223	Paraíso
SC	421225	Passo de Torres
SC	421227	Passos Maia
SC	421230	Paulo Lopes
SC	421240	Pedras Grandes
SC	421250	Penha
SC	421260	Peritiba
SC	421265	Pescaria Brava
SC	421270	Petrolândia
SC	421290	Pinhalzinho
SC	421300	Pinheiro Preto
SC	421310	Piratuba
SC	421315	Planalto Alegre
SC	421320	Pomerode
SC	421330	Ponte Alta
SC	421335	Ponte Alta do Norte
SC	421340	Ponte Serrada
SC	421350	Porto Belo
SC	421360	Porto União
SC	421370	Pouso Redondo
SC	421380	Praia Grande
SC	421390	Presidente Castello Branco
SC	421400	Presidente Getúlio
SC	421410	Presidente Nereu
SC	421415	Princesa
SC	421420	Quilombo
SC	421430	Rancho Queimado
SC	421440	Rio das Antas
SC	421450	Rio do Campo
SC	421460	Rio do Oeste
SC	421480	Rio do Sul
SC	421470	Rio dos Cedros
SC	421490	Rio Fortuna
SC	421500	Rio Negrinho
SC	421505	Rio Rufino
SC	421507	Riqueza
SC	421510	Rodeio
SC	421520	Romelândia
SC	421530	Salete
SC	421535	Saltinho
SC	421540	Salto Veloso
SC	421545	Sangão
SC	421550	Santa Cecília
SC	421555	Santa Helena
SC	421560	Santa Rosa de Lima
SC	421565	Santa Rosa do Sul
SC	421567	Santa Terezinha
SC	421568	Santa Terezinha do Progresso
SC	421569	Santiago do Sul
SC	421570	Santo Amaro da Imperatriz
SC	421580	São Bento do Sul
SC	421575	São Bernardino
SC	421590	São Bonifácio
SC	421600	São Carlos
SC	421605	São Cristóvão do Sul
SC	421610	São Domingos
SC	421620	São Francisco do Sul
SC	421630	São João Batista
SC	421635	São João do Itaperiú
SC	421625	São João do Oeste
SC	421640	São João do Sul
SC	421650	São Joaquim
SC	421660	São José
SC	421670	São José do Cedro
SC	421680	São José do Cerrito
SC	421690	São Lourenço do Oeste
SC	421700	São Ludgero
SC	421710	São Martinho
SC	421715	São Miguel da Boa Vista
SC	421720	São Miguel do Oeste
SC	421725	São Pedro de Alcântara
SC	421730	Saudades
SC	421740	Schroeder
SC	421750	Seara
SC	421755	Serra Alta
SC	421760	Siderópolis
SC	421770	Sombrio
SC	421775	Sul Brasil
SC	421780	Taió
SC	421790	Tangará
SC	421795	Tigrinhos
SC	421800	Tijucas
SC	421810	Timbé do Sul
SC	421820	Timbó
SC	421825	Timbó Grande
SC	421830	Três Barras
SC	421835	Treviso
SC	421840	Treze de Maio
SC	421850	Treze Tílias
SC	421860	Trombudo Central
SC	421870	Tubarão
SC	421875	Tunápolis
SC	421880	Turvo
SC	421885	União do Oeste
SC	421890	Urubici
SC	421895	Urupema
SC	421900	Urussanga
SC	421910	Vargeão
SC	421915	Vargem
SC	421917	Vargem Bonita
SC	421920	Vidal Ramos
SC	421930	Videira
SC	421935	Vitor Meireles
SC	421940	Witmarsum
SC	421950	Xanxerê
SC	421960	Xavantina
SC	421970	Xaxim
SC	421985	Zortéa
RS	430003	Aceguá
RS	430005	Água Santa
RS	430010	Agudo
RS	430020	Ajuricaba
RS	430030	Alecrim
RS	430040	Alegrete
RS	430045	Alegria
RS	430047	Almirante Tamandaré do Sul
RS	430050	Alpestre
RS	430055	Alto Alegre
RS	430057	Alto Feliz
RS	430060	Alvorada
RS	430063	Amaral Ferrador
RS	430064	Ametista do Sul
RS	430066	André da Rocha
RS	430070	Anta Gorda
RS	430080	Antônio Prado
RS	430085	Arambaré
RS	430087	Araricá
RS	430090	Aratiba
RS	430100	Arroio do Meio
RS	430107	Arroio do Padre
RS	430105	Arroio do Sal
RS	430120	Arroio do Tigre
RS	430110	Arroio dos Ratos
RS	430130	Arroio Grande
RS	430140	Arvorezinha
RS	430150	Augusto Pestana
RS	430155	Áurea
RS	430160	Bagé
RS	430163	Balneário Pinhal
RS	430165	Barão
RS	430170	Barão de Cotegipe
RS	430175	Barão do Triunfo
RS	430185	Barra do Guarita
RS	430187	Barra do Quaraí
RS	430190	Barra do Ribeiro
RS	430192	Barra do Rio Azul
RS	430195	Barra Funda
RS	430180	Barracão
RS	430200	Barros Cassal
RS	430205	Benjamin Constant do Sul
RS	430210	Bento Gonçalves
RS	430215	Boa Vista das Missões
RS	430220	Boa Vista do Buricá
RS	430222	Boa Vista do Cadeado
RS	430223	Boa Vista do Incra
RS	430225	Boa Vista do Sul
RS	430230	Bom Jesus
RS	430235	Bom Princípio
RS	430237	Bom Progresso
RS	430240	Bom Retiro do Sul
RS	430245	Boqueirão do Leão
RS	430250	Bossoroca
RS	430258	Bozano
RS	430260	Braga
RS	430265	Brochier
RS	430270	Butiá
RS	430280	Caçapava do Sul
RS	430290	Cacequi
RS	430300	Cachoeira do Sul
RS	430310	Cachoeirinha
RS	430320	Cacique Doble
RS	430330	Caibaté
RS	430340	Caiçara
RS	430350	Camaquã
RS	430355	Camargo
RS	430360	Cambará do Sul
RS	430367	Campestre da Serra
RS	430370	Campina das Missões
RS	430380	Campinas do Sul
RS	430390	Campo Bom
RS	430400	Campo Novo
RS	430410	Campos Borges
RS	430420	Candelária
RS	430430	Cândido Godói
RS	430435	Candiota
RS	430440	Canela
RS	430450	Canguçu
RS	430460	Canoas
RS	430461	Canudos do Vale
RS	430462	Capão Bonito do Sul
RS	430463	Capão da Canoa
RS	430465	Capão do Cipó
RS	430466	Capão do Leão
RS	430468	Capela de Santana
RS	430469	Capitão
RS	430467	Capivari do Sul
RS	430471	Caraá
RS	430470	Carazinho
RS	430480	Carlos Barbosa
RS	430485	Carlos Gomes
RS	430490	Casca
RS	430495	Caseiros
RS	430500	Catuípe
RS	430510	Caxias do Sul
RS	430511	Centenário
RS	430512	Cerrito
RS	430513	Cerro Branco
RS	430515	Cerro Grande
RS	430517	Cerro Grande do Sul
RS	430520	Cerro Largo
RS	430530	Chapada
RS	430535	Charqueadas
RS	430537	Charrua
RS	430540	Chiapetta
RS	430543	Chuí
RS	430544	Chuvisca
RS	430545	Cidreira
RS	430550	Ciríaco
RS	430558	Colinas
RS	430560	Colorado
RS	430570	Condor
RS	430580	Constantina
RS	430583	Coqueiro Baixo
RS	430585	Coqueiros do Sul
RS	430587	Coronel Barros
RS	430590	Coronel Bicaco
RS	430593	Coronel Pilar
RS	430595	Cotiporã
RS	430597	Coxilha
RS	430600	Crissiumal
RS	430605	Cristal
RS	430607	Cristal do Sul
RS	430610	Cruz Alta
RS	430613	Cruzaltense
RS	430620	Cruzeiro do Sul
RS	430630	David Canabarro
RS	430632	Derrubadas
RS	430635	Dezesseis de Novembro
RS	430637	Dilermando de Aguiar
RS	430640	Dois Irmãos
RS	430642	Dois Irmãos das Missões
RS	430645	Dois Lajeados
RS	430650	Dom Feliciano
RS	430660	Dom Pedrito
RS	430655	Dom Pedro de Alcântara
RS	430670	Dona Francisca
RS	430673	Doutor Maurício Cardoso
RS	430675	Doutor Ricardo
RS	430676	Eldorado do Sul
RS	430680	Encantado
RS	430690	Encruzilhada do Sul
RS	430692	Engenho Velho
RS	430695	Entre Rios do Sul
RS	430693	Entre-Ijuís
RS	430697	Erebango
RS	430700	Erechim
RS	430705	Ernestina
RS	430720	Erval Grande
RS	430730	Erval Seco
RS	430740	Esmeralda
RS	430745	Esperança do Sul
RS	430750	Espumoso
RS	430755	Estação
RS	430760	Estância Velha
RS	430770	Esteio
RS	430780	Estrela
RS	430781	Estrela Velha
RS	430783	Eugênio de Castro
RS	430786	Fagundes Varela
RS	430790	Farroupilha
RS	430800	Faxinal do Soturno
RS	430805	Faxinalzinho
RS	430807	Fazenda Vilanova
RS	430810	Feliz
RS	430820	Flores da Cunha
RS	430825	Floriano Peixoto
RS	430830	Fontoura Xavier
RS	430840	Formigueiro
RS	430843	Forquetinha
RS	430845	Fortaleza dos Valos
RS	430850	Frederico Westphalen
RS	430860	Garibaldi
RS	430865	Garruchos
RS	430870	Gaurama
RS	430880	General Câmara
RS	430885	Gentil
RS	430890	Getúlio Vargas
RS	430900	Giruá
RS	430905	Glorinha
RS	430910	Gramado
RS	430912	Gramado dos Loureiros
RS	430915	Gramado Xavier
RS	430920	Gravataí
RS	430925	Guabiju
RS	430930	Guaíba
RS	430940	Guaporé
RS	430950	Guarani das Missões
RS	430955	Harmonia
RS	430710	Herval
RS	430957	Herveiras
RS	430960	Horizontina
RS	430965	Hulha Negra
RS	430970	Humaitá
RS	430975	Ibarama
RS	430980	Ibiaçá
RS	430990	Ibiraiaras
RS	430995	Ibirapuitã
RS	431000	Ibirubá
RS	431010	Igrejinha
RS	431020	Ijuí
RS	431030	Ilópolis
RS	431033	Imbé
RS	431036	Imigrante
RS	431040	Independência
RS	431041	Inhacorá
RS	431043	Ipê
RS	431046	Ipiranga do Sul
RS	431050	Iraí
RS	431053	Itaara
RS	431055	Itacurubi
RS	431057	Itapuca
RS	431060	Itaqui
RS	431065	Itati
RS	431070	Itatiba do Sul
RS	431075	Ivorá
RS	431080	Ivoti
RS	431085	Jaboticaba
RS	431087	Jacuizinho
RS	431090	Jacutinga
RS	431100	Jaguarão
RS	431110	Jaguari
RS	431112	Jaquirana
RS	431113	Jari
RS	431115	Jóia
RS	431120	Júlio de Castilhos
RS	431123	Lagoa Bonita do Sul
RS	431127	Lagoa dos Três Cantos
RS	431130	Lagoa Vermelha
RS	431125	Lagoão
RS	431140	Lajeado
RS	431142	Lajeado do Bugre
RS	431150	Lavras do Sul
RS	431160	Liberato Salzano
RS	431162	Lindolfo Collor
RS	431164	Linha Nova
RS	431171	Maçambará
RS	431170	Machadinho
RS	431173	Mampituba
RS	431175	Manoel Viana
RS	431177	Maquiné
RS	431179	Maratá
RS	431180	Marau
RS	431190	Marcelino Ramos
RS	431198	Mariana Pimentel
RS	431200	Mariano Moro
RS	431205	Marques de Souza
RS	431210	Mata
RS	431213	Mato Castelhano
RS	431215	Mato Leitão
RS	431217	Mato Queimado
RS	431220	Maximiliano de Almeida
RS	431225	Minas do Leão
RS	431230	Miraguaí
RS	431235	Montauri
RS	431237	Monte Alegre dos Campos
RS	431238	Monte Belo do Sul
RS	431240	Montenegro
RS	431242	Mormaço
RS	431244	Morrinhos do Sul
RS	431245	Morro Redondo
RS	431247	Morro Reuter
RS	431250	Mostardas
RS	431260	Muçum
RS	431261	Muitos Capões
RS	431262	Muliterno
RS	431265	Não-Me-Toque
RS	431267	Nicolau Vergueiro
RS	431270	Nonoai
RS	431275	Nova Alvorada
RS	431280	Nova Araçá
RS	431290	Nova Bassano
RS	431295	Nova Boa Vista
RS	431300	Nova Bréscia
RS	431301	Nova Candelária
RS	431303	Nova Esperança do Sul
RS	431306	Nova Hartz
RS	431308	Nova Pádua
RS	431310	Nova Palma
RS	431320	Nova Petrópolis
RS	431330	Nova Prata
RS	431333	Nova Ramada
RS	431335	Nova Roma do Sul
RS	431337	Nova Santa Rita
RS	431349	Novo Barreiro
RS	431339	Novo Cabrais
RS	431340	Novo Hamburgo
RS	431342	Novo Machado
RS	431344	Novo Tiradentes
RS	431346	Novo Xingu
RS	431350	Osório
RS	431360	Paim Filho
RS	431365	Palmares do Sul
RS	431370	Palmeira das Missões
RS	431380	Palmitinho
RS	431390	Panambi
RS	431395	Pantano Grande
RS	431400	Paraí
RS	431402	Paraíso do Sul
RS	431403	Pareci Novo
RS	431405	Parobé
RS	431406	Passa Sete
RS	431407	Passo do Sobrado
RS	431410	Passo Fundo
RS	431413	Paulo Bento
RS	431415	Paverama
RS	431417	Pedras Altas
RS	431420	Pedro Osório
RS	431430	Pejuçara
RS	431440	Pelotas
RS	431442	Picada Café
RS	431445	Pinhal
RS	431446	Pinhal da Serra
RS	431447	Pinhal Grande
RS	431449	Pinheirinho do Vale
RS	431450	Pinheiro Machado
RS	431454	Pinto Bandeira
RS	431455	Pirapó
RS	431460	Piratini
RS	431470	Planalto
RS	431475	Poço das Antas
RS	431477	Pontão
RS	431478	Ponte Preta
RS	431480	Portão
RS	431490	Porto Alegre
RS	431500	Porto Lucena
RS	431505	Porto Mauá
RS	431507	Porto Vera Cruz
RS	431510	Porto Xavier
RS	431513	Pouso Novo
RS	431514	Presidente Lucena
RS	431515	Progresso
RS	431517	Protásio Alves
RS	431520	Putinga
RS	431530	Quaraí
RS	431531	Quatro Irmãos
RS	431532	Quevedos
RS	431535	Quinze de Novembro
RS	431540	Redentora
RS	431545	Relvado
RS	431550	Restinga Sêca
RS	431555	Rio dos Índios
RS	431560	Rio Grande
RS	431570	Rio Pardo
RS	431575	Riozinho
RS	431580	Roca Sales
RS	431590	Rodeio Bonito
RS	431595	Rolador
RS	431600	Rolante
RS	431610	Ronda Alta
RS	431620	Rondinha
RS	431630	Roque Gonzales
RS	431640	Rosário do Sul
RS	431642	Sagrada Família
RS	431643	Saldanha Marinho
RS	431645	Salto do Jacuí
RS	431647	Salvador das Missões
RS	431650	Salvador do Sul
RS	431660	Sananduva
RS	431670	Santa Bárbara do Sul
RS	431673	Santa Cecília do Sul
RS	431675	Santa Clara do Sul
RS	431680	Santa Cruz do Sul
RS	431697	Santa Margarida do Sul
RS	431690	Santa Maria
RS	431695	Santa Maria do Herval
RS	431720	Santa Rosa
RS	431725	Santa Tereza
RS	431730	Santa Vitória do Palmar
RS	431700	Santana da Boa Vista
RS	431710	Sant'Ana do Livramento
RS	431740	Santiago
RS	431750	Santo Ângelo
RS	431760	Santo Antônio da Patrulha
RS	431770	Santo Antônio das Missões
RS	431755	Santo Antônio do Palma
RS	431775	Santo Antônio do Planalto
RS	431780	Santo Augusto
RS	431790	Santo Cristo
RS	431795	Santo Expedito do Sul
RS	431800	São Borja
RS	431805	São Domingos do Sul
RS	431810	São Francisco de Assis
RS	431820	São Francisco de Paula
RS	431830	São Gabriel
RS	431840	São Jerônimo
RS	431842	São João da Urtiga
RS	431843	São João do Polêsine
RS	431844	São Jorge
RS	431845	São José das Missões
RS	431846	São José do Herval
RS	431848	São José do Hortêncio
RS	431849	São José do Inhacorá
RS	431850	São José do Norte
RS	431860	São José do Ouro
RS	431861	São José do Sul
RS	431862	São José dos Ausentes
RS	431870	São Leopoldo
RS	431880	São Lourenço do Sul
RS	431890	São Luiz Gonzaga
RS	431900	São Marcos
RS	431910	São Martinho
RS	431912	São Martinho da Serra
RS	431915	São Miguel das Missões
RS	431920	São Nicolau
RS	431930	São Paulo das Missões
RS	431935	São Pedro da Serra
RS	431936	São Pedro das Missões
RS	431937	São Pedro do Butiá
RS	431940	São Pedro do Sul
RS	431950	São Sebastião do Caí
RS	431960	São Sepé
RS	431970	São Valentim
RS	431971	São Valentim do Sul
RS	431973	São Valério do Sul
RS	431975	São Vendelino
RS	431980	São Vicente do Sul
RS	431990	Sapiranga
RS	432000	Sapucaia do Sul
RS	432020	Seberi
RS	432023	Sede Nova
RS	432026	Segredo
RS	432030	Selbach
RS	432032	Senador Salgado Filho
RS	432035	Sentinela do Sul
RS	432040	Serafina Corrêa
RS	432045	Sério
RS	432050	Sertão
RS	432055	Sertão Santana
RS	432057	Sete de Setembro
RS	432060	Severiano de Almeida
RS	432065	Silveira Martins
RS	432067	Sinimbu
RS	432070	Sobradinho
RS	432080	Soledade
RS	432085	Tabaí
RS	432090	Tapejara
RS	432100	Tapera
RS	432110	Tapes
RS	432120	Taquara
RS	432130	Taquari
RS	432132	Taquaruçu do Sul
RS	432135	Tavares
RS	432140	Tenente Portela
RS	432143	Terra de Areia
RS	432145	Teutônia
RS	432146	Tio Hugo
RS	432147	Tiradentes do Sul
RS	432149	Toropi
RS	432150	Torres
RS	432160	Tramandaí
RS	432162	Travesseiro
RS	432163	Três Arroios
RS	432166	Três Cachoeiras
RS	432170	Três Coroas
RS	432180	Três de Maio
RS	432183	Três Forquilhas
RS	432185	Três Palmeiras
RS	432190	Três Passos
RS	432195	Trindade do Sul
RS	432200	Triunfo
RS	432210	Tucunduva
RS	432215	Tunas
RS	432218	Tupanci do Sul
RS	432220	Tupanciretã
RS	432225	Tupandi
RS	432230	Tuparendi
RS	432232	Turuçu
RS	432234	Ubiretama
RS	432235	União da Serra
RS	432237	Unistalda
RS	432240	Uruguaiana
RS	432250	Vacaria
RS	432253	Vale do Sol
RS	432254	Vale Real
RS	432252	Vale Verde
RS	432255	Vanini
RS	432260	Venâncio Aires
RS	432270	Vera Cruz
RS	432280	Veranópolis
RS	432285	Vespasiano Corrêa
RS	432290	Viadutos
RS	432300	Viamão
RS	432310	Vicente Dutra
RS	432320	Victor Graeff
RS	432330	Vila Flores
RS	432335	Vila Lângaro
RS	432340	Vila Maria
RS	432345	Vila Nova do Sul
RS	432350	Vista Alegre
RS	432360	Vista Alegre do Prata
RS	432370	Vista Gaúcha
RS	432375	Vitória das Missões
RS	432377	Westfália
RS	432380	Xangri-lá
MS	500020	Água Clara
MS	500025	Alcinópolis
MS	500060	Amambai
MS	500070	Anastácio
MS	500080	Anaurilândia
MS	500085	Angélica
MS	500090	Antônio João
MS	500100	Aparecida do Taboado
MS	500110	Aquidauana
MS	500124	Aral Moreira
MS	500150	Bandeirantes
MS	500190	Bataguassu
MS	500200	Batayporã
MS	500210	Bela Vista
MS	500215	Bodoquena
MS	500220	Bonito
MS	500230	Brasilândia
MS	500240	Caarapó
MS	500260	Camapuã
MS	500270	Campo Grande
MS	500280	Caracol
MS	500290	Cassilândia
MS	500295	Chapadão do Sul
MS	500310	Corguinho
MS	500315	Coronel Sapucaia
MS	500320	Corumbá
MS	500325	Costa Rica
MS	500330	Coxim
MS	500345	Deodápolis
MS	500348	Dois Irmãos do Buriti
MS	500350	Douradina
MS	500370	Dourados
MS	500375	Eldorado
MS	500380	Fátima do Sul
MS	500390	Figueirão
MS	500400	Glória de Dourados
MS	500410	Guia Lopes da Laguna
MS	500430	Iguatemi
MS	500440	Inocência
MS	500450	Itaporã
MS	500460	Itaquiraí
MS	500470	Ivinhema
MS	500480	Japorã
MS	500490	Jaraguari
MS	500500	Jardim
MS	500510	Jateí
MS	500515	Juti
MS	500520	Ladário
MS	500525	Laguna Carapã
MS	500540	Maracaju
MS	500560	Miranda
MS	500568	Mundo Novo
MS	500570	Naviraí
MS	500580	Nioaque
MS	500600	Nova Alvorada do Sul
MS	500620	Nova Andradina
MS	500625	Novo Horizonte do Sul
MS	500627	Paraíso das Águas
MS	500630	Paranaíba
MS	500635	Paranhos
MS	500640	Pedro Gomes
MS	500660	Ponta Porã
MS	500690	Porto Murtinho
MS	500710	Ribas do Rio Pardo
MS	500720	Rio Brilhante
MS	500730	Rio Negro
MS	500740	Rio Verde de Mato Grosso
MS	500750	Rochedo
MS	500755	Santa Rita do Pardo
MS	500769	São Gabriel do Oeste
MS	500780	Selvíria
MS	500770	Sete Quedas
MS	500790	Sidrolândia
MS	500793	Sonora
MS	500795	Tacuru
MS	500797	Taquarussu
MS	500800	Terenos
MS	500830	Três Lagoas
MS	500840	Vicentina
MT	510010	Acorizal
MT	510020	Água Boa
MT	510025	Alta Floresta
MT	510030	Alto Araguaia
MT	510035	Alto Boa Vista
MT	510040	Alto Garças
MT	510050	Alto Paraguai
MT	510060	Alto Taquari
MT	510080	Apiacás
MT	510100	Araguaiana
MT	510120	Araguainha
MT	510125	Araputanga
MT	510130	Arenápolis
MT	510140	Aripuanã
MT	510160	Barão de Melgaço
MT	510170	Barra do Bugres
MT	510180	Barra do Garças
MT	510185	Bom Jesus do Araguaia
MT	510190	Brasnorte
MT	510250	Cáceres
MT	510260	Campinápolis
MT	510263	Campo Novo do Parecis
MT	510267	Campo Verde
MT	510268	Campos de Júlio
MT	510269	Canabrava do Norte
MT	510270	Canarana
MT	510279	Carlinda
MT	510285	Castanheira
MT	510300	Chapada dos Guimarães
MT	510305	Cláudia
MT	510310	Cocalinho
MT	510320	Colíder
MT	510325	Colniza
MT	510330	Comodoro
MT	510335	Confresa
MT	510336	Conquista D'Oeste
MT	510337	Cotriguaçu
MT	510340	Cuiabá
MT	510343	Curvelândia
MT	510345	Denise
MT	510350	Diamantino
MT	510360	Dom Aquino
MT	510370	Feliz Natal
MT	510380	Figueirópolis D'Oeste
MT	510385	Gaúcha do Norte
MT	510390	General Carneiro
MT	510395	Glória D'Oeste
MT	510410	Guarantã do Norte
MT	510420	Guiratinga
MT	510450	Indiavaí
MT	510452	Ipiranga do Norte
MT	510454	Itanhangá
MT	510455	Itaúba
MT	510460	Itiquira
MT	510480	Jaciara
MT	510490	Jangada
MT	510500	Jauru
MT	510510	Juara
MT	510515	Juína
MT	510517	Juruena
MT	510520	Juscimeira
MT	510523	Lambari D'Oeste
MT	510525	Lucas do Rio Verde
MT	510530	Luciara
MT	510558	Marcelândia
MT	510560	Matupá
MT	510562	Mirassol d'Oeste
MT	510590	Nobres
MT	510600	Nortelândia
MT	510610	Nossa Senhora do Livramento
MT	510615	Nova Bandeirantes
MT	510620	Nova Brasilândia
MT	510621	Nova Canaã do Norte
MT	510880	Nova Guarita
MT	510618	Nova Lacerda
MT	510885	Nova Marilândia
MT	510890	Nova Maringá
MT	510895	Nova Monte Verde
MT	510622	Nova Mutum
MT	510617	Nova Nazaré
MT	510623	Nova Olímpia
MT	510619	Nova Santa Helena
MT	510624	Nova Ubiratã
MT	510625	Nova Xavantina
MT	510627	Novo Horizonte do Norte
MT	510626	Novo Mundo
MT	510631	Novo Santo Antônio
MT	510628	Novo São Joaquim
MT	510629	Paranaíta
MT	510630	Paranatinga
MT	510637	Pedra Preta
MT	510642	Peixoto de Azevedo
MT	510645	Planalto da Serra
MT	510650	Poconé
MT	510665	Pontal do Araguaia
MT	510670	Ponte Branca
MT	510675	Pontes e Lacerda
MT	510677	Porto Alegre do Norte
MT	510680	Porto dos Gaúchos
MT	510682	Porto Esperidião
MT	510685	Porto Estrela
MT	510700	Poxoréu
MT	510704	Primavera do Leste
MT	510706	Querência
MT	510715	Reserva do Cabaçal
MT	510718	Ribeirão Cascalheira
MT	510719	Ribeirãozinho
MT	510720	Rio Branco
MT	510757	Rondolândia
MT	510760	Rondonópolis
MT	510770	Rosário Oeste
MT	510775	Salto do Céu
MT	510724	Santa Carmem
MT	510774	Santa Cruz do Xingu
MT	510776	Santa Rita do Trivelato
MT	510777	Santa Terezinha
MT	510726	Santo Afonso
MT	510780	Santo Antônio de Leverger
MT	510779	Santo Antônio do Leste
MT	510785	São Félix do Araguaia
MT	510729	São José do Povo
MT	510730	São José do Rio Claro
MT	510735	São José do Xingu
MT	510710	São José dos Quatro Marcos
MT	510740	São Pedro da Cipa
MT	510787	Sapezal
MT	510788	Serra Nova Dourada
MT	510790	Sinop
MT	510792	Sorriso
MT	510794	Tabaporã
MT	510795	Tangará da Serra
MT	510800	Tapurah
MT	510805	Terra Nova do Norte
MT	510810	Tesouro
MT	510820	Torixoréu
MT	510830	União do Sul
MT	510835	Vale de São Domingos
MT	510840	Várzea Grande
MT	510850	Vera
MT	510550	Vila Bela da Santíssima Trindade
MT	510860	Vila Rica
GO	520005	Abadia de Goiás
GO	520010	Abadiânia
GO	520013	Acreúna
GO	520015	Adelândia
GO	520017	Água Fria de Goiás
GO	520020	Água Limpa
GO	520025	Águas Lindas de Goiás
GO	520030	Alexânia
GO	520050	Aloândia
GO	520055	Alto Horizonte
GO	520060	Alto Paraíso de Goiás
GO	520080	Alvorada do Norte
GO	520082	Amaralina
GO	520085	Americano do Brasil
GO	520090	Amorinópolis
GO	520110	Anápolis
GO	520120	Anhanguera
GO	520130	Anicuns
GO	520140	Aparecida de Goiânia
GO	520145	Aparecida do Rio Doce
GO	520150	Aporé
GO	520160	Araçu
GO	520170	Aragarças
GO	520180	Aragoiânia
GO	520215	Araguapaz
GO	520235	Arenópolis
GO	520250	Aruanã
GO	520260	Aurilândia
GO	520280	Avelinópolis
GO	520310	Baliza
GO	520320	Barro Alto
GO	520330	Bela Vista de Goiás
GO	520340	Bom Jardim de Goiás
GO	520350	Bom Jesus de Goiás
GO	520355	Bonfinópolis
GO	520357	Bonópolis
GO	520360	Brazabrantes
GO	520380	Britânia
GO	520390	Buriti Alegre
GO	520393	Buriti de Goiás
GO	520396	Buritinópolis
GO	520400	Cabeceiras
GO	520410	Cachoeira Alta
GO	520420	Cachoeira de Goiás
GO	520425	Cachoeira Dourada
GO	520430	Caçu
GO	520440	Caiapônia
GO	520450	Caldas Novas
GO	520455	Caldazinha
GO	520460	Campestre de Goiás
GO	520465	Campinaçu
GO	520470	Campinorte
GO	520480	Campo Alegre de Goiás
GO	520485	Campo Limpo de Goiás
GO	520490	Campos Belos
GO	520495	Campos Verdes
GO	520500	Carmo do Rio Verde
GO	520505	Castelândia
GO	520510	Catalão
GO	520520	Caturaí
GO	520530	Cavalcante
GO	520540	Ceres
GO	520545	Cezarina
GO	520547	Chapadão do Céu
GO	520549	Cidade Ocidental
GO	520551	Cocalzinho de Goiás
GO	520552	Colinas do Sul
GO	520570	Córrego do Ouro
GO	520580	Corumbá de Goiás
GO	520590	Corumbaíba
GO	520620	Cristalina
GO	520630	Cristianópolis
GO	520640	Crixás
GO	520650	Cromínia
GO	520660	Cumari
GO	520670	Damianópolis
GO	520680	Damolândia
GO	520690	Davinópolis
GO	520710	Diorama
GO	520830	Divinópolis de Goiás
GO	520725	Doverlândia
GO	520735	Edealina
GO	520740	Edéia
GO	520750	Estrela do Norte
GO	520753	Faina
GO	520760	Fazenda Nova
GO	520780	Firminópolis
GO	520790	Flores de Goiás
GO	520800	Formosa
GO	520810	Formoso
GO	520815	Gameleira de Goiás
GO	520840	Goianápolis
GO	520850	Goiandira
GO	520860	Goianésia
GO	520870	Goiânia
GO	520880	Goianira
GO	520890	Goiás
GO	520910	Goiatuba
GO	520915	Gouvelândia
GO	520920	Guapó
GO	520929	Guaraíta
GO	520940	Guarani de Goiás
GO	520945	Guarinos
GO	520960	Heitoraí
GO	520970	Hidrolândia
GO	520980	Hidrolina
GO	520990	Iaciara
GO	520993	Inaciolândia
GO	520995	Indiara
GO	521000	Inhumas
GO	521010	Ipameri
GO	521015	Ipiranga de Goiás
GO	521020	Iporá
GO	521030	Israelândia
GO	521040	Itaberaí
GO	521056	Itaguari
GO	521060	Itaguaru
GO	521080	Itajá
GO	521090	Itapaci
GO	521100	Itapirapuã
GO	521120	Itapuranga
GO	521130	Itarumã
GO	521140	Itauçu
GO	521150	Itumbiara
GO	521160	Ivolândia
GO	521170	Jandaia
GO	521180	Jaraguá
GO	521190	Jataí
GO	521200	Jaupaci
GO	521205	Jesúpolis
GO	521210	Joviânia
GO	521220	Jussara
GO	521225	Lagoa Santa
GO	521230	Leopoldo de Bulhões
GO	521250	Luziânia
GO	521260	Mairipotaba
GO	521270	Mambaí
GO	521280	Mara Rosa
GO	521290	Marzagão
GO	521295	Matrinchã
GO	521300	Maurilândia
GO	521305	Mimoso de Goiás
GO	521308	Minaçu
GO	521310	Mineiros
GO	521340	Moiporá
GO	521350	Monte Alegre de Goiás
GO	521370	Montes Claros de Goiás
GO	521375	Montividiu
GO	521377	Montividiu do Norte
GO	521380	Morrinhos
GO	521385	Morro Agudo de Goiás
GO	521390	Mossâmedes
GO	521400	Mozarlândia
GO	521405	Mundo Novo
GO	521410	Mutunópolis
GO	521440	Nazário
GO	521450	Nerópolis
GO	521460	Niquelândia
GO	521470	Nova América
GO	521480	Nova Aurora
GO	521483	Nova Crixás
GO	521486	Nova Glória
GO	521487	Nova Iguaçu de Goiás
GO	521490	Nova Roma
GO	521500	Nova Veneza
GO	521520	Novo Brasil
GO	521523	Novo Gama
GO	521525	Novo Planalto
GO	521530	Orizona
GO	521540	Ouro Verde de Goiás
GO	521550	Ouvidor
GO	521560	Padre Bernardo
GO	521565	Palestina de Goiás
GO	521570	Palmeiras de Goiás
GO	521580	Palmelo
GO	521590	Palminópolis
GO	521600	Panamá
GO	521630	Paranaiguara
GO	521640	Paraúna
GO	521645	Perolândia
GO	521680	Petrolina de Goiás
GO	521690	Pilar de Goiás
GO	521710	Piracanjuba
GO	521720	Piranhas
GO	521730	Pirenópolis
GO	521740	Pires do Rio
GO	521760	Planaltina
GO	521770	Pontalina
GO	521800	Porangatu
GO	521805	Porteirão
GO	521810	Portelândia
GO	521830	Posse
GO	521839	Professor Jamil
GO	521850	Quirinópolis
GO	521860	Rialma
GO	521870	Rianápolis
GO	521878	Rio Quente
GO	521880	Rio Verde
GO	521890	Rubiataba
GO	521900	Sanclerlândia
GO	521910	Santa Bárbara de Goiás
GO	521920	Santa Cruz de Goiás
GO	521925	Santa Fé de Goiás
GO	521930	Santa Helena de Goiás
GO	521935	Santa Isabel
GO	521940	Santa Rita do Araguaia
GO	521945	Santa Rita do Novo Destino
GO	521950	Santa Rosa de Goiás
GO	521960	Santa Tereza de Goiás
GO	521970	Santa Terezinha de Goiás
GO	521971	Santo Antônio da Barra
GO	521973	Santo Antônio de Goiás
GO	521975	Santo Antônio do Descoberto
GO	521980	São Domingos
GO	521990	São Francisco de Goiás
GO	522005	São João da Paraúna
GO	522000	São João d'Aliança
GO	522010	São Luís de Montes Belos
GO	522015	São Luiz do Norte
GO	522020	São Miguel do Araguaia
GO	522026	São Miguel do Passa Quatro
GO	522028	São Patrício
GO	522040	São Simão
GO	522045	Senador Canedo
GO	522050	Serranópolis
GO	522060	Silvânia
GO	522068	Simolândia
GO	522070	Sítio d'Abadia
GO	522100	Taquaral de Goiás
GO	522108	Teresina de Goiás
GO	522119	Terezópolis de Goiás
GO	522130	Três Ranchos
GO	522140	Trindade
GO	522145	Trombas
GO	522150	Turvânia
GO	522155	Turvelândia
GO	522157	Uirapuru
GO	522160	Uruaçu
GO	522170	Uruana
GO	522180	Urutaí
GO	522185	Valparaíso de Goiás
GO	522190	Varjão
GO	522200	Vianópolis
GO	522205	Vicentinópolis
GO	522220	Vila Boa
GO	522230	Vila Propício
DF	530010	Brasília
\.

ALTER TABLE ONLY grl.tb_cidades
    ADD CONSTRAINT pk_tb_cidades PRIMARY KEY (cd_ibge);