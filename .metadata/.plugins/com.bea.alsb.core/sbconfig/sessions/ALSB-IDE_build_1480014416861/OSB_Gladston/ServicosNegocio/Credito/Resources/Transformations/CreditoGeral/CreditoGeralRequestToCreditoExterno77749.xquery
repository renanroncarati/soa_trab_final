<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$parametrosVerificaCreditoCliente1" element="ns1:parametrosVerificaCreditoCliente" location="../../../../../EBS/Credito/xsd/ParametrosCreditoGeral.xsd" ::)
(:: pragma bea:global-element-return element="ns1:parametrosVerificaCreditoExterno" location="../../../../../EBS/Credito/xsd/ParametrosCredito.xsd" ::)

declare namespace ns1 = "http://pucminas.br/SN/Credito";
declare namespace ns0 = "http://pucminas.br/MC/SOA/Gladston";
declare namespace xf = "http://tempuri.org/OSB_Gladston/ServicosNegocio/Credito/Resources/Transformations/CreditoGeral/CreditoGeralRequestToCreditoExternoRequest/";

declare function xf:CreditoGeralRequestToCreditoExternoRequest($parametrosVerificaCreditoCliente1 as element(ns1:parametrosVerificaCreditoCliente))
    as element(ns1:parametrosVerificaCreditoExterno) {
        <ns1:parametrosVerificaCreditoExterno>
            <ns1:pessoa>
                <ns0:id>{ data($parametrosVerificaCreditoCliente1/ns1:pessoa/ns0:id) }</ns0:id>
                <ns0:nome>{ data($parametrosVerificaCreditoCliente1/ns1:pessoa/ns0:nome) }</ns0:nome>
                <ns0:dataNascimento>{ data($parametrosVerificaCreditoCliente1/ns1:pessoa/ns0:dataNascimento) }</ns0:dataNascimento>
                <ns0:cnpj>{ data($parametrosVerificaCreditoCliente1/ns1:pessoa/ns0:cnpj) }</ns0:cnpj>
                <ns0:telefone>{ data($parametrosVerificaCreditoCliente1/ns1:pessoa/ns0:telefone) }</ns0:telefone>
            </ns1:pessoa>
        </ns1:parametrosVerificaCreditoExterno>
};

declare variable $parametrosVerificaCreditoCliente1 as element(ns1:parametrosVerificaCreditoCliente) external;

xf:CreditoGeralRequestToCreditoExternoRequest($parametrosVerificaCreditoCliente1)]]></con:xquery>
    <con:dependency location="../../../../../EBS/Credito/xsd/ParametrosCreditoGeral.xsd">
        <con:schema ref="OSB_Gladston/EBS/Credito/xsd/ParametrosCreditoGeral"/>
    </con:dependency>
    <con:dependency location="../../../../../EBS/Credito/xsd/ParametrosCredito.xsd">
        <con:schema ref="OSB_Gladston/EBS/Credito/xsd/ParametrosCredito"/>
    </con:dependency>
</con:xqueryEntry>