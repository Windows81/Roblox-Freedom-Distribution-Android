.class public Linsecuritise;
.super Ljava/lang/Object;
.source "insecuritise"

.method public static process(Ljava/net/HttpURLConnection;)V
    .locals 4

    const-string v1, "ROOM"
    const-string v2, "database is not initialized even though it is open"
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1}, Ldebug;->show(Ljava/lang/Object;)V

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Linsecuritise$1;

    invoke-direct {v1}, Linsecuritise$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 19
    .local v0, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 20
    .local v1, "sc":Ljavax/net/ssl/SSLContext;
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 23
    new-instance v2, Linsecuritise$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Linsecuritise$$ExternalSyntheticLambda0;-><init>()V

    .line 26
    .local v2, "allHostsValid":Ljavax/net/ssl/HostnameVerifier;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 27
    invoke-virtual {p0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 28
    return-void
.end method

.method static synthetic lambda$insecuritise$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 3
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;

    .line 23
    const/4 v0, 0x1

    return v0
.end method

# This Smali script takes a `HttpsURLConnection` object and bypasses TLS verification therefor.
# This script depends on `./insecuritise$$ExternalSyntheticLambda0.smali` and `./insecuritise$1.smali`.
# Credit to @Itzfb2 on Twitch for swearing on my livestream!!!

# import javax.net.ssl.*;
# import javax.net.HttpURLConnection;
# import java.net.URL;
# import java.security.SecureRandom;
# import java.security.cert.X509Certificate;
#
# public class insecuritise {
#     public static void process(HttpsURLConnection conn) throws Exception {

#         // 1. Creates a TrustManager that accepts all certificates
#         TrustManager[] trustAllCerts = new TrustManager[]{
#             new X509TrustManager() {
#                 public X509Certificate[] getAcceptedIssuers() { return null; }
#                 public void checkClientTrusted(X509Certificate[] certs, String authType) {}
#                 public void checkServerTrusted(X509Certificate[] certs, String authType) {}
#                 public boolean isClientTrusted(X509Certificate[] chain) { return true; }
#                 public boolean isServerTrusted(X509Certificate[] chain) { return true; }
#             }
#         };
#
#         // 2. Initialises SSLContext with the permissive TrustManager
#         SSLContext sc = SSLContext.getInstance("TLS");
#         sc.init(null, trustAllCerts, new SecureRandom());
#
#         // 3. Creates a HostnameVerifier that skips hostname validation
#         HostnameVerifier allHostsValid = (hostname, session) -> true;
#
#         // 4. Applies per-connection TLS bypass
#         conn.setSSLSocketFactory(sc.getSocketFactory());
#         conn.setHostnameVerifier(allHostsValid);
#     }
# }