.class Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection$1;
.super Lmicrosoft/aspnet/signalr/client/http/java/NetworkThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;->execute(Lmicrosoft/aspnet/signalr/client/http/Request;Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture$ResponseCallback;)Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;

.field final synthetic val$target:Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;Ljava/lang/Runnable;Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection$1;->this$0:Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;

    iput-object p3, p0, Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection$1;->val$target:Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;

    invoke-direct {p0, p2}, Lmicrosoft/aspnet/signalr/client/http/java/NetworkThread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method releaseAndStop()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection$1;->this$0:Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;->access$000(Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection;)Lmicrosoft/aspnet/signalr/client/Logger;

    move-result-object v0

    const-string v1, "JavaHttpConnection NetworkThread.releaseAndStop()"

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Verbose:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-interface {v0, v1, v2}, Lmicrosoft/aspnet/signalr/client/Logger;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 56
    :try_start_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/http/java/JavaHttpConnection$1;->val$target:Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;

    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/http/java/NetworkRunnable;->closeStreamAndConnection()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    goto :goto_0
.end method
