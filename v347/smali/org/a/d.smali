.class public interface abstract Lorg/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getFlashPolicy(Lorg/a/a;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/c/b;
        }
    .end annotation
.end method

.method public abstract getLocalSocketAddress(Lorg/a/a;)Ljava/net/InetSocketAddress;
.end method

.method public abstract getRemoteSocketAddress(Lorg/a/a;)Ljava/net/InetSocketAddress;
.end method

.method public abstract onWebsocketClose(Lorg/a/a;ILjava/lang/String;Z)V
.end method

.method public abstract onWebsocketCloseInitiated(Lorg/a/a;ILjava/lang/String;)V
.end method

.method public abstract onWebsocketClosing(Lorg/a/a;ILjava/lang/String;Z)V
.end method

.method public abstract onWebsocketError(Lorg/a/a;Ljava/lang/Exception;)V
.end method

.method public abstract onWebsocketHandshakeReceivedAsClient(Lorg/a/a;Lorg/a/e/a;Lorg/a/e/h;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/c/b;
        }
    .end annotation
.end method

.method public abstract onWebsocketHandshakeReceivedAsServer(Lorg/a/a;Lorg/a/b/a;Lorg/a/e/a;)Lorg/a/e/i;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/c/b;
        }
    .end annotation
.end method

.method public abstract onWebsocketHandshakeSentAsClient(Lorg/a/a;Lorg/a/e/a;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/c/b;
        }
    .end annotation
.end method

.method public abstract onWebsocketMessage(Lorg/a/a;Ljava/lang/String;)V
.end method

.method public abstract onWebsocketMessage(Lorg/a/a;Ljava/nio/ByteBuffer;)V
.end method

.method public abstract onWebsocketMessageFragment(Lorg/a/a;Lorg/a/d/d;)V
.end method

.method public abstract onWebsocketOpen(Lorg/a/a;Lorg/a/e/f;)V
.end method

.method public abstract onWebsocketPing(Lorg/a/a;Lorg/a/d/d;)V
.end method

.method public abstract onWebsocketPong(Lorg/a/a;Lorg/a/d/d;)V
.end method

.method public abstract onWriteDemand(Lorg/a/a;)V
.end method
