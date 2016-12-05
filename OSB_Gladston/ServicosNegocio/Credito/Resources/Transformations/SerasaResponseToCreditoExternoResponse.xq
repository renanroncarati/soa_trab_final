(:: pragma bea:global-element-parameter parameter="$resultadoSerasa1" element="ns1:ResultadoSerasa" location="../Interfaces/Schemas/Serasa.xsd" ::)
(:: pragma bea:global-element-return element="ns2:resultadoVerificaCreditoExterno" location="../../../../EBS/Credito/xsd/ParametrosCredito.xsd" ::)

declare namespace ns2 = "http://pucminas.br/SN/Credito";
declare namespace ns1 = "http://serasa.com.br/SN/Serasa";
declare namespace ns0 = "http://pucminas.br/MC/SOA/Gladston";
declare namespace xf = "http://tempuri.org/OSB_Gladston/ServicosNegocio/Credito/Resources/Transformations/SerasaResponseToCreditoExternoResponse/";

declare function xf:SerasaResponseToCreditoExternoResponse($resultadoSerasa1 as element(ns1:ResultadoSerasa))
    as element(ns2:resultadoVerificaCreditoExterno) {
        <ns2:resultadoVerificaCreditoExterno>
            <ns2:credito>
                <ns0:pessoa>
                    <ns0:cnpj>{ data($resultadoSerasa1/ns1:num_documento) }</ns0:cnpj>
                </ns0:pessoa>
            </ns2:credito>
        </ns2:resultadoVerificaCreditoExterno>
};

declare variable $resultadoSerasa1 as element(ns1:ResultadoSerasa) external;

xf:SerasaResponseToCreditoExternoResponse($resultadoSerasa1)
