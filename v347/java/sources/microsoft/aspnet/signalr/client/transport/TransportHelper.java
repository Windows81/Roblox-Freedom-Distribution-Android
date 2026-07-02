package microsoft.aspnet.signalr.client.transport;

import com.google.gson.h;
import com.google.gson.k;
import com.google.gson.n;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import microsoft.aspnet.signalr.client.Connection;
import microsoft.aspnet.signalr.client.ConnectionBase;
import microsoft.aspnet.signalr.client.Constants;
import microsoft.aspnet.signalr.client.LogLevel;
import microsoft.aspnet.signalr.client.Logger;
import microsoft.aspnet.signalr.client.MessageResult;

/* JADX INFO: loaded from: classes.dex */
public class TransportHelper {
    public static MessageResult processReceivedData(String str, ConnectionBase connectionBase) {
        Logger logger = connectionBase.getLogger();
        MessageResult messageResult = new MessageResult();
        if (str != null) {
            String strTrim = str.trim();
            if (!"".equals(strTrim)) {
                try {
                    n nVarL = connectionBase.getJsonParser().a(strTrim).l();
                    if (nVarL.a().size() != 0) {
                        if (nVarL.b("I") != null) {
                            logger.log("Invoking message received with: " + nVarL.toString(), LogLevel.Verbose);
                            connectionBase.onReceived(nVarL);
                        } else if (nVarL.b("D") != null && nVarL.b("D").f() == 1) {
                            logger.log("Disconnect message received", LogLevel.Verbose);
                            messageResult.setDisconnect(true);
                        } else {
                            if (nVarL.b("T") != null && nVarL.b("T").f() == 1) {
                                logger.log("Reconnect message received", LogLevel.Verbose);
                                messageResult.setReconnect(true);
                            }
                            if (nVarL.b("G") != null) {
                                String strC = nVarL.b("G").c();
                                logger.log("Group token received: " + strC, LogLevel.Verbose);
                                connectionBase.setGroupsToken(strC);
                            }
                            k kVarB = nVarL.b("M");
                            if (kVarB != null && kVarB.h()) {
                                if (nVarL.b("C") != null) {
                                    String strC2 = nVarL.b("C").c();
                                    logger.log("MessageId received: " + strC2, LogLevel.Verbose);
                                    connectionBase.setMessageId(strC2);
                                }
                                h hVarM = kVarB.m();
                                int iA = hVarM.a();
                                for (int i = 0; i < iA; i++) {
                                    k kVarA = hVarM.a(i);
                                    logger.log("Invoking OnReceived with: " + ((Object) null), LogLevel.Verbose);
                                    connectionBase.onReceived(kVarA);
                                }
                            }
                            if (nVarL.b("S") != null && nVarL.b("S").f() == 1) {
                                logger.log("Initialization message received", LogLevel.Information);
                                messageResult.setInitialize(true);
                            }
                        }
                    }
                } catch (Exception e) {
                    connectionBase.onError(e, false);
                }
            }
        }
        return messageResult;
    }

    public static String getReceiveQueryString(ClientTransport clientTransport, ConnectionBase connectionBase) {
        StringBuilder sb = new StringBuilder();
        sb.append("?transport=" + clientTransport.getName()).append("&connectionToken=" + urlEncode(connectionBase.getConnectionToken()));
        sb.append("&connectionId=" + urlEncode(connectionBase.getConnectionId()));
        if (connectionBase.getMessageId() != null) {
            sb.append("&messageId=" + urlEncode(connectionBase.getMessageId()));
        }
        if (connectionBase.getGroupsToken() != null) {
            sb.append("&groupsToken=" + urlEncode(connectionBase.getGroupsToken()));
        }
        String connectionData = connectionBase.getConnectionData();
        if (connectionData != null) {
            sb.append("&connectionData=" + urlEncode(connectionData));
        }
        String queryString = connectionBase.getQueryString();
        if (queryString != null) {
            sb.append("&").append(queryString);
        }
        return sb.toString();
    }

    public static String getNegotiateQueryString(ConnectionBase connectionBase) {
        StringBuilder sb = new StringBuilder();
        sb.append("?clientProtocol=" + urlEncode(Connection.PROTOCOL_VERSION.toString()));
        if (connectionBase.getConnectionData() != null) {
            sb.append("&").append("connectionData=" + urlEncode(connectionBase.getConnectionData()));
        }
        if (connectionBase.getQueryString() != null) {
            sb.append("&").append(connectionBase.getQueryString());
        }
        return sb.toString();
    }

    public static String getSendQueryString(ClientTransport clientTransport, ConnectionBase connectionBase) {
        StringBuilder sb = new StringBuilder();
        sb.append("?transport=" + urlEncode(clientTransport.getName()));
        sb.append("&connectionToken=" + urlEncode(connectionBase.getConnectionToken()));
        sb.append("&connectionId=" + urlEncode(connectionBase.getConnectionId()));
        if (connectionBase.getConnectionData() != null) {
            sb.append("&connectionData=" + urlEncode(connectionBase.getConnectionData()));
        }
        if (connectionBase.getQueryString() != null) {
            sb.append("&").append(connectionBase.getQueryString());
        }
        return sb.toString();
    }

    public static String urlEncode(String str) {
        if (str == null) {
            return "";
        }
        try {
            return URLEncoder.encode(str, Constants.UTF8_NAME);
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }
}
