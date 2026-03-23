.class Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$3;
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


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$3;->this$0:Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$3;->this$0:Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->access$000(Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport$3;->this$0:Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;->access$100(Lmicrosoft/aspnet/signalr/client/transport/LongPollingTransport;)Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;->triggerError(Ljava/lang/Throwable;)V

    .line 150
    monitor-exit v1

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
