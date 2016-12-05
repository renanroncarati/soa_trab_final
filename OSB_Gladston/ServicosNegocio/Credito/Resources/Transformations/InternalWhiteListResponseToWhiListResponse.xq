(:: pragma bea:global-element-parameter parameter="$resultadoWhiteList" element="ns2:ResultadoWhiteList" location="../Interfaces/Schemas/InternalWhiteList.xsd" ::)
(:: pragma bea:global-element-return element="ns1:resultadoVerificaWhiteList" location="../../../../EBS/Credito/xsd/ParametrosCredito.xsd" ::)

declare namespace ns2 = "http://whitelist.com.br/SN/WhiteList";
declare namespace ns1 = "http://pucminas.br/SN/Credito";
declare namespace ns0 = "http://pucminas.br/MC/SOA/Gladston";
declare namespace xf = "http://tempuri.org/OSB_Gladston/ServicosNegocio/Credito/Resources/Transformations/InternalWhiteListResponseToWhiListResponse/";

declare function xf:InternalWhiteListResponseToWhiListResponse($resultadoWhiteList as element(ns2:ResultadoWhiteList))
    as element(ns1:resultadoVerificaWhiteList) {
        <ns1:resultadoVerificaWhiteList>
            <ns1:mensagemRetorno>
                <ns0:descricao>{ data($resultadoWhiteList/ns2:num_documento) }</ns0:descricao>
                <ns0:isAtivo>{ data($resultadoWhiteList/ns2:indica_white_list) }</ns0:isAtivo>
            </ns1:mensagemRetorno>
        </ns1:resultadoVerificaWhiteList>
};

declare variable $resultadoWhiteList as element(ns2:ResultadoWhiteList) external;

xf:InternalWhiteListResponseToWhiListResponse($resultadoWhiteList)
