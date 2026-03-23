.class public abstract Lorg/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlashPolicy(Lorg/a/a;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/c/b;
        }
    .end annotation

    .prologue
    .line 91
    invoke-interface {p1}, Lorg/a/a;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 92
    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lorg/a/c/d;

    const-string v1, "socket not bound"

    invoke-direct {v0, v1}, Lorg/a/c/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x5a

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 97
    const-string v2, "<cross-domain-policy><allow-access-from domain=\"*\" to-ports=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 99
    const-string v0, "\" /></cross-domain-policy>\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onWebsocketHandshakeReceivedAsClient(Lorg/a/a;Lorg/a/e/a;Lorg/a/e/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/c/b;
        }
    .end annotation

    .prologue
    .line 33
    return-void
.end method

.method public onWebsocketHandshakeReceivedAsServer(Lorg/a/a;Lorg/a/b/a;Lorg/a/e/a;)Lorg/a/e/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/c/b;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lorg/a/e/e;

    invoke-direct {v0}, Lorg/a/e/e;-><init>()V

    return-object v0
.end method

.method public onWebsocketHandshakeSentAsClient(Lorg/a/a;Lorg/a/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/c/b;
        }
    .end annotation

    .prologue
    .line 42
    return-void
.end method

.method public onWebsocketMessageFragment(Lorg/a/a;Lorg/a/d/d;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onWebsocketPing(Lorg/a/a;Lorg/a/d/d;)V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lorg/a/d/e;

    invoke-direct {v0, p2}, Lorg/a/d/e;-><init>(Lorg/a/d/d;)V

    .line 62
    sget-object v1, Lorg/a/d/d$a;->e:Lorg/a/d/d$a;

    invoke-virtual {v0, v1}, Lorg/a/d/e;->a(Lorg/a/d/d$a;)V

    .line 63
    invoke-interface {p1, v0}, Lorg/a/a;->sendFrame(Lorg/a/d/d;)V

    .line 64
    return-void
.end method

.method public onWebsocketPong(Lorg/a/a;Lorg/a/d/d;)V
    .locals 0

    .prologue
    .line 73
    return-void
.end method
