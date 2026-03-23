.class Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;
.super Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$RequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;->execute(Lmicrosoft/aspnet/signalr/client/http/Request;Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;)Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mClient:Landroid/net/http/AndroidHttpClient;

.field mResponseStream:Ljava/io/InputStream;

.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;

.field final synthetic val$future:Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;

.field final synthetic val$request:Lmicrosoft/aspnet/signalr/client/http/Request;

.field final synthetic val$responseCallback:Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;Lmicrosoft/aspnet/signalr/client/http/Request;Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;)V
    .locals 1

    .prologue
    .line 63
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->this$0:Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;

    iput-object p2, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->val$request:Lmicrosoft/aspnet/signalr/client/http/Request;

    iput-object p3, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->val$future:Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;

    iput-object p4, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->val$responseCallback:Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$RequestTask;-><init>(Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;)V

    return-void
.end method


# virtual methods
.method protected closeStreamAndClient()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->mResponseStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 132
    :try_start_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->mResponseStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->mClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 140
    :cond_1
    return-void

    .line 133
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 70
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->val$request:Lmicrosoft/aspnet/signalr/client/http/Request;

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->val$future:Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "request"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->triggerError(Ljava/lang/Throwable;)V

    .line 74
    :cond_0
    invoke-static {}, Lmicrosoft/aspnet/signalr/client/Platform;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->mClient:Landroid/net/http/AndroidHttpClient;

    .line 75
    iput-object v8, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->mResponseStream:Ljava/io/InputStream;

    .line 79
    :try_start_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->this$0:Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;->access$100(Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;)Lmicrosoft/aspnet/signalr/client/Logger;

    move-result-object v0

    const-string v1, "Create an Android-specific request"

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-interface {v0, v1, v2}, Lmicrosoft/aspnet/signalr/client/Logger;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 80
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->val$request:Lmicrosoft/aspnet/signalr/client/http/Request;

    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->this$0:Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;

    invoke-static {v1}, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;->access$100(Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;)Lmicrosoft/aspnet/signalr/client/Logger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/http/Request;->log(Lmicrosoft/aspnet/signalr/client/Logger;)V

    .line 81
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->val$request:Lmicrosoft/aspnet/signalr/client/http/Request;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;->access$200(Lmicrosoft/aspnet/signalr/client/http/Request;)Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/net/URI;

    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->val$request:Lmicrosoft/aspnet/signalr/client/http/Request;

    invoke-virtual {v2}, Lmicrosoft/aspnet/signalr/client/http/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 84
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v4

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 86
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->this$0:Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;

    invoke-static {v1}, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;->access$100(Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;)Lmicrosoft/aspnet/signalr/client/Logger;

    move-result-object v1

    const-string v3, "Execute the HTTP Request"

    sget-object v4, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-interface {v1, v3, v4}, Lmicrosoft/aspnet/signalr/client/Logger;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    :try_start_1
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v1, v2, v0}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 100
    :try_start_2
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->this$0:Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;->access$100(Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;)Lmicrosoft/aspnet/signalr/client/Logger;

    move-result-object v0

    const-string v1, "Request executed"

    sget-object v3, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-interface {v0, v1, v3}, Lmicrosoft/aspnet/signalr/client/Logger;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 102
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->mResponseStream:Ljava/io/InputStream;

    .line 103
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    .line 104
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 105
    array-length v5, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_2

    aget-object v6, v3, v1

    .line 106
    invoke-interface {v6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 108
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->closeStreamAndClient()V

    .line 93
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->this$0:Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;

    invoke-static {v1}, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;->access$100(Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;)Lmicrosoft/aspnet/signalr/client/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout executing request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lmicrosoft/aspnet/signalr/client/LogLevel;->Information:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-interface {v1, v2, v3}, Lmicrosoft/aspnet/signalr/client/Logger;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 95
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->val$future:Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;

    invoke-virtual {v1, v0}, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->triggerTimeout(Ljava/lang/Throwable;)V

    .line 126
    :goto_2
    return-object v8

    .line 110
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 119
    :catch_1
    move-exception v0

    .line 120
    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->closeStreamAndClient()V

    .line 121
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->this$0:Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;

    invoke-static {v1}, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;->access$100(Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;)Lmicrosoft/aspnet/signalr/client/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error executing request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lmicrosoft/aspnet/signalr/client/LogLevel;->Critical:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-interface {v1, v2, v3}, Lmicrosoft/aspnet/signalr/client/Logger;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 123
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->val$future:Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;

    invoke-virtual {v1, v0}, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->triggerError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 116
    :cond_2
    :try_start_3
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->val$responseCallback:Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;

    new-instance v1, Lmicrosoft/aspnet/signalr/client/http/StreamResponse;

    iget-object v3, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->mResponseStream:Ljava/io/InputStream;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-direct {v1, v3, v2, v4}, Lmicrosoft/aspnet/signalr/client/http/StreamResponse;-><init>(Ljava/io/InputStream;ILjava/util/Map;)V

    invoke-interface {v0, v1}, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;->onResponse(Lmicrosoft/aspnet/signalr/client/http/Response;)V

    .line 117
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->val$future:Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->setResult(Ljava/lang/Object;)V

    .line 118
    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;->closeStreamAndClient()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method
