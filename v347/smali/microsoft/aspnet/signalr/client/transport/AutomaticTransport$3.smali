.class Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$handleError:Lmicrosoft/aspnet/signalr/client/ErrorCallback;

.field final synthetic val$transportStart:Lmicrosoft/aspnet/signalr/client/SignalRFuture;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;Lmicrosoft/aspnet/signalr/client/SignalRFuture;Lmicrosoft/aspnet/signalr/client/ErrorCallback;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$3;->this$0:Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;

    iput-object p2, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$3;->val$transportStart:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    iput-object p3, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$3;->val$handleError:Lmicrosoft/aspnet/signalr/client/ErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$3;->this$0:Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;->access$000(Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;)Lmicrosoft/aspnet/signalr/client/transport/ClientTransport;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$3;->val$transportStart:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    invoke-virtual {v0}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->cancel()V

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$3;->val$handleError:Lmicrosoft/aspnet/signalr/client/ErrorCallback;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Operation cancelled"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lmicrosoft/aspnet/signalr/client/ErrorCallback;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
