.class Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->poll(Lmicrosoft/aspnet/signalr/client/ConnectionBase;Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;

.field final synthetic val$callback:Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;

.field final synthetic val$connection:Lmicrosoft/aspnet/signalr/client/ConnectionBase;

.field final synthetic val$connectionUrl:Ljava/lang/String;

.field final synthetic val$future:Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/ConnectionBase;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$2;->this$0:Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;

    iput-object p2, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$2;->val$connectionUrl:Ljava/lang/String;

    iput-object p3, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$2;->val$connection:Lmicrosoft/aspnet/signalr/client/ConnectionBase;

    iput-object p4, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$2;->val$callback:Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;

    iput-object p5, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$2;->val$future:Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 133
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$2;->this$0:Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->access$000(Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$2;->val$connectionUrl:Ljava/lang/String;

    const-string v2, "poll"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$2;->this$0:Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->access$100(Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;)Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;

    move-result-object v0

    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$2;->this$0:Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;

    iget-object v3, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$2;->val$connection:Lmicrosoft/aspnet/signalr/client/ConnectionBase;

    const-string v4, "poll"

    iget-object v5, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$2;->val$callback:Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;

    invoke-static {v2, v3, v4, v5}, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->access$200(Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;Lmicrosoft/aspnet/signalr/client/ConnectionBase;Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;->setFuture(Lmicrosoft/aspnet/signalr/client/SignalRFuture;)V

    .line 140
    :goto_0
    monitor-exit v1

    .line 141
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$2;->val$future:Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;

    invoke-virtual {v0, p1}, Lmicrosoft/aspnet/signalr/client/http/HttpConnectionFuture;->triggerError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
