.class Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->start(Lmicrosoft/aspnet/signalr/client/ConnectionBase;Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;)Lmicrosoft/aspnet/signalr/client/SignalRFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$2;->this$0:Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$2;->this$0:Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;

    iget-object v0, v0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->mWebSocketClient:Lorg/a/a/a;

    invoke-virtual {v0}, Lorg/a/a/a;->close()V

    .line 211
    return-void
.end method
