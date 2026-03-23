.class public Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/http/HttpConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$RequestTask;
    }
.end annotation


# instance fields
.field private mLogger:Lmicrosoft/aspnet/signalr/client/Logger;


# direct methods
.method public constructor <init>(Lmicrosoft/aspnet/signalr/client/Logger;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "logger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;->mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

    .line 54
    return-void
.end method

.method static synthetic access$100(Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;)Lmicrosoft/aspnet/signalr/client/Logger;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;->mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lmicrosoft/aspnet/signalr/client/http/Request;)Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {p0}, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;->createRealRequest(Lmicrosoft/aspnet/signalr/client/http/Request;)Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;Landroid/os/AsyncTask;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;->executeTask(Landroid/os/AsyncTask;)V

    return-void
.end method

.method private static createRealRequest(Lmicrosoft/aspnet/signalr/client/http/Request;)Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 194
    new-instance v2, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/http/Request;->getVerb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/http/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/http/Request;->getContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/http/Request;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 200
    :cond_0
    invoke-virtual {p0}, Lmicrosoft/aspnet/signalr/client/http/Request;->getHeaders()Ljava/util/Map;

    move-result-object v3

    .line 202
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_1
    return-object v2
.end method

.method private executeTask(Landroid/os/AsyncTask;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 169
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public execute(Lmicrosoft/aspnet/signalr/client/http/Request;Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;)Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;->mLogger:Lmicrosoft/aspnet/signalr/client/Logger;

    const-string v1, "Create new AsyncTask for HTTP Connection"

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-interface {v0, v1, v2}, Lmicrosoft/aspnet/signalr/client/Logger;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 61
    new-instance v0, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;

    invoke-direct {v0}, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;-><init>()V

    .line 63
    new-instance v1, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;

    invoke-direct {v1, p0, p1, v0, p2}, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$1;-><init>(Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;Lmicrosoft/aspnet/signalr/client/http/Request;Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;)V

    .line 143
    new-instance v2, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$2;

    invoke-direct {v2, p0, v1}, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$2;-><init>(Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection$RequestTask;)V

    invoke-virtual {v0, v2}, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->onCancelled(Ljava/lang/Runnable;)V

    .line 159
    invoke-direct {p0, v1}, Lmicrosoft/aspnet/signalr/client/http/android/AndroidHttpConnection;->executeTask(Landroid/os/AsyncTask;)V

    .line 161
    return-object v0
.end method
