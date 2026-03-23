.class Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;->resolveTransport(Lmicrosoft/aspnet/signalr/client/ConnectionBase;Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;ILmicrosoft/aspnet/signalr/client/SignalRFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;

.field final synthetic val$callback:Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;

.field final synthetic val$connection:Lmicrosoft/aspnet/signalr/client/ConnectionBase;

.field final synthetic val$connectionType:Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;

.field final synthetic val$currentTransport:Lmicrosoft/aspnet/signalr/client/transport/ClientTransport;

.field final synthetic val$currentTransportIndex:I

.field final synthetic val$startFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;Lmicrosoft/aspnet/signalr/client/SignalRFuture;Lmicrosoft/aspnet/signalr/client/transport/ClientTransport;ILmicrosoft/aspnet/signalr/client/ConnectionBase;Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$2;->this$0:Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;

    iput-object p2, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$2;->val$startFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    iput-object p3, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$2;->val$currentTransport:Lmicrosoft/aspnet/signalr/client/transport/ClientTransport;

    iput p4, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$2;->val$currentTransportIndex:I

    iput-object p5, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$2;->val$connection:Lmicrosoft/aspnet/signalr/client/ConnectionBase;

    iput-object p6, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$2;->val$connectionType:Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;

    iput-object p7, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$2;->val$callback:Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 107
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$2;->this$0:Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;->access$000(Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;)Lmicrosoft/aspnet/signalr/client/transport/ClientTransport;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$2;->val$startFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    invoke-virtual {v0, p1}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->triggerError(Ljava/lang/Throwable;)V

    .line 119
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$2;->this$0:Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;

    const-string v1, "Auto: Faild to connect using transport %s. %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$2;->val$currentTransport:Lmicrosoft/aspnet/signalr/client/transport/ClientTransport;

    invoke-interface {v4}, Lmicrosoft/aspnet/signalr/client/transport/ClientTransport;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Information:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v0, v1, v2}, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V

    .line 113
    iget v0, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$2;->val$currentTransportIndex:I

    add-int/lit8 v4, v0, 0x1

    .line 114
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$2;->this$0:Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;->access$100(Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 115
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$2;->this$0:Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;

    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$2;->val$connection:Lmicrosoft/aspnet/signalr/client/ConnectionBase;

    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$2;->val$connectionType:Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;

    iget-object v3, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$2;->val$callback:Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;

    iget-object v5, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$2;->val$startFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    invoke-static/range {v0 .. v5}, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;->access$200(Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;Lmicrosoft/aspnet/signalr/client/ConnectionBase;Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;ILmicrosoft/aspnet/signalr/client/SignalRFuture;)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$2;->val$startFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    invoke-virtual {v0, p1}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->triggerError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
