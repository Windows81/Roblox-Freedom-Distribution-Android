.class Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mCallback:Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;

.field mCloseLock:Ljava/lang/Object;

.field mConnection:Ljava/net/HttpURLConnection;

.field mFuture:Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;

.field mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

.field mRequest:Lmicrosoft/aspnet/signalr/client/http/Request;

.field mResponseStream:Ljava/io/InputStream;

.field mSkipCookie:Z


# direct methods
.method public constructor <init>(Lmicrosoft/aspnet/signalr/client/Logger;Lmicrosoft/aspnet/signalr/client/http/Request;Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mConnection:Ljava/net/HttpURLConnection;

    .line 29
    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mResponseStream:Ljava/io/InputStream;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mCloseLock:Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

    .line 52
    iput-object p2, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mRequest:Lmicrosoft/aspnet/signalr/client/http/Request;

    .line 53
    iput-object p3, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mFuture:Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;

    .line 54
    iput-object p4, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mCallback:Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;

    .line 55
    iput-boolean p5, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mSkipCookie:Z

    .line 56
    return-void
.end method

.method static createHttpURLConnection(Lmicrosoft/aspnet/signalr/client/http/Request;Lmicrosoft/aspnet/signalr/client/Logger;Z)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/http/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 130
    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 131
    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/http/Request;->getVerb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/http/Request;->getHeaders()Ljava/util/Map;

    move-result-object v3

    .line 134
    const-string v2, "User-Agent"

    const-string v1, "User-Agent"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    const-string v2, "Cookie"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 141
    const-string v1, "NR.createHttpURLConnection() skipping duplicate cookies"

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Information:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-interface {p1, v1, v2}, Lmicrosoft/aspnet/signalr/client/Logger;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/http/Request;->getContent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 148
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 149
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 150
    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/http/Request;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 155
    :cond_2
    return-object v0
.end method


# virtual methods
.method closeStreamAndConnection()V
    .locals 1

    .prologue
    .line 107
    :try_start_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 111
    :cond_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mResponseStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mResponseStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_1
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 61
    const/4 v0, -0x1

    .line 62
    :try_start_0
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mFuture:Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;

    invoke-virtual {v1}, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mRequest:Lmicrosoft/aspnet/signalr/client/http/Request;

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mFuture:Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "request"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->triggerError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->closeStreamAndConnection()V

    .line 99
    :goto_0
    return-void

    .line 68
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

    const-string v1, "Execute the HTTP Request"

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-interface {v0, v1, v2}, Lmicrosoft/aspnet/signalr/client/Logger;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 69
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mRequest:Lmicrosoft/aspnet/signalr/client/http/Request;

    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/http/Request;->log(Lmicrosoft/aspnet/signalr/client/Logger;)V

    .line 70
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mRequest:Lmicrosoft/aspnet/signalr/client/http/Request;

    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

    iget-boolean v2, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mSkipCookie:Z

    invoke-static {v0, v1, v2}, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->createHttpURLConnection(Lmicrosoft/aspnet/signalr/client/http/Request;Lmicrosoft/aspnet/signalr/client/Logger;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mConnection:Ljava/net/HttpURLConnection;

    .line 72
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

    const-string v1, "Request executed"

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-interface {v0, v1, v2}, Lmicrosoft/aspnet/signalr/client/Logger;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 74
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 76
    const/16 v1, 0x190

    if-ge v0, v1, :cond_3

    .line 77
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mResponseStream:Ljava/io/InputStream;

    .line 83
    :cond_1
    :goto_1
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mResponseStream:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mFuture:Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;

    invoke-virtual {v1}, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 84
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mCallback:Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;

    new-instance v2, Lmicrosoft/aspnet/signalr/client/http/StreamResponse;

    iget-object v3, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mResponseStream:Ljava/io/InputStream;

    iget-object v4, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lmicrosoft/aspnet/signalr/client/http/StreamResponse;-><init>(Ljava/io/InputStream;ILjava/util/Map;)V

    invoke-interface {v1, v2}, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;->onResponse(Lmicrosoft/aspnet/signalr/client/http/Response;)V

    .line 85
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mFuture:Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->setResult(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :cond_2
    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->closeStreamAndConnection()V

    goto :goto_0

    .line 79
    :cond_3
    :try_start_2
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mResponseStream:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    :try_start_3
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mFuture:Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;

    invoke-virtual {v1}, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 89
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_4

    .line 90
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 93
    :cond_4
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error executing request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lmicrosoft/aspnet/signalr/client/LogLevel;->Critical:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-interface {v1, v2, v3}, Lmicrosoft/aspnet/signalr/client/Logger;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 94
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->mFuture:Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;

    invoke-virtual {v1, v0}, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->triggerError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    :cond_5
    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->closeStreamAndConnection()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->closeStreamAndConnection()V

    .line 98
    throw v0
.end method
