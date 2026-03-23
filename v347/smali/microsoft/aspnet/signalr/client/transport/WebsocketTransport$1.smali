.class Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;
.super Lorg/a/a/a;
.source "SourceFile"


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

.field final synthetic val$callback:Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;

.field final synthetic val$connection:Lmicrosoft/aspnet/signalr/client/ConnectionBase;


# direct methods
.method constructor <init>(Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;Ljava/net/URI;Lorg/a/b/a;Ljava/util/Map;ILmicrosoft/aspnet/signalr/client/ConnectionBase;Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;

    iput-object p6, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;->val$connection:Lmicrosoft/aspnet/signalr/client/ConnectionBase;

    iput-object p7, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;->val$callback:Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/a/a/a;-><init>(Ljava/net/URI;Lorg/a/b/a;Ljava/util/Map;I)V

    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebSocketClient.onClose() code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " remote:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->rblog(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;

    iget-object v0, v0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->mWebSocketClient:Lorg/a/a/a;

    invoke-virtual {v0}, Lorg/a/a/a;->close()V

    .line 151
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebSocketClient.onError() e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->rblog(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;

    iget-object v0, v0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->mWebSocketClient:Lorg/a/a/a;

    const/16 v1, 0x3ee

    const-string v2, "Exception"

    invoke-virtual {v0, v1, v2}, Lorg/a/a/a;->closeConnection(ILjava/lang/String;)V

    .line 160
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->access$000(Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;)Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;->triggerError(Ljava/lang/Throwable;)V

    .line 161
    return-void
.end method

.method public onFragment(Lorg/a/d/d;)V
    .locals 4

    .prologue
    .line 166
    :try_start_0
    invoke-interface {p1}, Lorg/a/d/d;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lorg/a/f/b;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 168
    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 172
    :cond_0
    const-string v1, ":["

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;

    invoke-static {v1}, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->access$100(Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 173
    :cond_1
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;

    invoke-static {v1, v0}, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->access$102(Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/a/c/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    invoke-virtual {v0}, Lorg/a/c/b;->printStackTrace()V

    goto :goto_0

    .line 177
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;

    invoke-static {v2}, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->access$100(Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;

    invoke-static {v2, v1}, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->access$200(Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 180
    invoke-virtual {p0, v1}, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;->onMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;

    invoke-static {v2, v1}, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->access$200(Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 184
    invoke-virtual {p0, v1}, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;->onMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_4
    iget-object v1, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid json received:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lmicrosoft/aspnet/signalr/client/LogLevel;->Critical:Lmicrosoft/aspnet/signalr/client/LogLevel;

    invoke-virtual {v1, v0, v2}, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->log(Ljava/lang/String;Lmicrosoft/aspnet/signalr/client/LogLevel;)V
    :try_end_1
    .catch Lorg/a/c/b; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;->val$connection:Lmicrosoft/aspnet/signalr/client/ConnectionBase;

    invoke-interface {v0}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getConnectionId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;

    const-string v1, "WebSocketClient.onMessage() connection ID null: closing"

    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->rblog(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;

    iget-object v0, v0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->mWebSocketClient:Lorg/a/a/a;

    const/16 v1, 0x3ee

    const-string v2, "No Connection ID"

    invoke-virtual {v0, v1, v2}, Lorg/a/a/a;->closeConnection(ILjava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebSocketClient.onMessage() id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;->val$connection:Lmicrosoft/aspnet/signalr/client/ConnectionBase;

    invoke-interface {v2}, Lmicrosoft/aspnet/signalr/client/ConnectionBase;->getConnectionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->rblog(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;->val$callback:Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;

    invoke-interface {v0, p1}, Lmicrosoft/aspnet/signalr/client/transport/DataResultCallback;->onData(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOpen(Lorg/a/e/h;)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;

    const-string v1, "WebSocketClient.onOpen()"

    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->rblog(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport$1;->this$0:Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;

    invoke-static {v0}, Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;->access$000(Lmicrosoft/aspnet/signalr/client/transport/WebsocketTransport;)Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmicrosoft/aspnet/signalr/client/UpdateableCancellableFuture;->setResult(Ljava/lang/Object;)V

    .line 132
    return-void
.end method
