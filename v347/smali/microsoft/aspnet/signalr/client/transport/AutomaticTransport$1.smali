.class Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmicrosoft/aspnet/signalr/client/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;->resolveTransport(Lmicrosoft/aspnet/signalr/client/ConnectionBase;Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;ILmicrosoft/aspnet/signalr/client/SignalRFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmicrosoft/aspnet/signalr/client/Action",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;

.field final synthetic val$currentTransport:Lmicrosoft/aspnet/signalr/client/transport/ClientTransport;

.field final synthetic val$startFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;Lmicrosoft/aspnet/signalr/client/transport/ClientTransport;Lmicrosoft/aspnet/signalr/client/SignalRFuture;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;

    iput-object p2, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$1;->val$currentTransport:Lmicrosoft/aspnet/signalr/client/transport/ClientTransport;

    iput-object p3, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$1;->val$startFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$1;->run(Ljava/lang/Void;)V

    return-void
.end method

.method public run(Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;

    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$1;->val$currentTransport:Lmicrosoft/aspnet/signalr/client/transport/ClientTransport;

    invoke-static {v0, v1}, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;->access$002(Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport;Lmicrosoft/aspnet/signalr/client/transport/ClientTransport;)Lmicrosoft/aspnet/signalr/client/transport/ClientTransport;

    .line 97
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/AutomaticTransport$1;->val$startFuture:Lmicrosoft/aspnet/signalr/client/SignalRFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/SignalRFuture;->setResult(Ljava/lang/Object;)V

    .line 98
    return-void
.end method
