.class public abstract Lorg/a/a/a;
.super Lorg/a/b;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/a/a/a$a;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private closeLatch:Ljava/util/concurrent/CountDownLatch;

.field private connectLatch:Ljava/util/concurrent/CountDownLatch;

.field private connectTimeout:I

.field private draft:Lorg/a/b/a;

.field private engine:Lorg/a/c;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private istream:Ljava/io/InputStream;

.field private ostream:Ljava/io/OutputStream;

.field private proxy:Ljava/net/Proxy;

.field private socket:Ljava/net/Socket;

.field protected uri:Ljava/net/URI;

.field private writeThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/a/a/a;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lorg/a/b/c;

    invoke-direct {v0}, Lorg/a/b/c;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/a/a/a;-><init>(Ljava/net/URI;Lorg/a/b/a;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lorg/a/b/a;)V
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/a/a/a;-><init>(Ljava/net/URI;Lorg/a/b/a;Ljava/util/Map;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lorg/a/b/a;Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lorg/a/b/a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Lorg/a/b;-><init>()V

    .line 37
    iput-object v0, p0, Lorg/a/a/a;->uri:Ljava/net/URI;

    .line 39
    iput-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    .line 41
    iput-object v0, p0, Lorg/a/a/a;->socket:Ljava/net/Socket;

    .line 47
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iput-object v0, p0, Lorg/a/a/a;->proxy:Ljava/net/Proxy;

    .line 55
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/a/a/a;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    .line 57
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/a/a/a;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/a;->connectTimeout:I

    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 78
    :cond_0
    if-nez p2, :cond_1

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null as draft is permitted for `WebSocketServer` only!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    iput-object p1, p0, Lorg/a/a/a;->uri:Ljava/net/URI;

    .line 82
    iput-object p2, p0, Lorg/a/a/a;->draft:Lorg/a/b/a;

    .line 83
    iput-object p3, p0, Lorg/a/a/a;->headers:Ljava/util/Map;

    .line 84
    iput p4, p0, Lorg/a/a/a;->connectTimeout:I

    .line 85
    new-instance v0, Lorg/a/c;

    invoke-direct {v0, p0, p2}, Lorg/a/c;-><init>(Lorg/a/d;Lorg/a/b/a;)V

    iput-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    .line 86
    return-void
.end method

.method static synthetic access$100(Lorg/a/a/a;)Lorg/a/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    return-object v0
.end method

.method static synthetic access$200(Lorg/a/a/a;)Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/a/a/a;->ostream:Ljava/io/OutputStream;

    return-object v0
.end method

.method private getPort()I
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lorg/a/a/a;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    .line 199
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lorg/a/a/a;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 201
    const-string v1, "wss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    const/16 v0, 0x1bb

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    const-string v1, "ws"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    const/16 v0, 0x50

    goto :goto_0

    .line 206
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown scheme "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sendHandshake()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/c/d;
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lorg/a/a/a;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lorg/a/a/a;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 216
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 217
    :cond_0
    const-string v0, "/"

    .line 220
    :cond_1
    if-eqz v1, :cond_2

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    :cond_2
    invoke-direct {p0}, Lorg/a/a/a;->getPort()I

    move-result v1

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/a/a/a;->uri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x50

    if-eq v1, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    new-instance v2, Lorg/a/e/d;

    invoke-direct {v2}, Lorg/a/e/d;-><init>()V

    .line 226
    invoke-virtual {v2, v0}, Lorg/a/e/d;->a(Ljava/lang/String;)V

    .line 227
    const-string v0, "Host"

    invoke-virtual {v2, v0, v1}, Lorg/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lorg/a/a/a;->headers:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 229
    iget-object v0, p0, Lorg/a/a/a;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 230
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lorg/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 223
    :cond_3
    const-string v1, ""

    goto :goto_0

    .line 233
    :cond_4
    iget-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    invoke-virtual {v0, v2}, Lorg/a/c;->a(Lorg/a/e/b;)V

    .line 234
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lorg/a/a/a;->writeThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lorg/a/c;->a(I)V

    .line 131
    :cond_0
    return-void
.end method

.method public close(I)V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    invoke-virtual {v0}, Lorg/a/c;->j()V

    .line 419
    return-void
.end method

.method public close(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    invoke-virtual {v0, p1, p2}, Lorg/a/c;->a(ILjava/lang/String;)V

    .line 424
    return-void
.end method

.method public closeBlocking()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0}, Lorg/a/a/a;->close()V

    .line 135
    iget-object v0, p0, Lorg/a/a/a;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 136
    return-void
.end method

.method public closeConnection(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    invoke-virtual {v0, p1, p2}, Lorg/a/c;->b(ILjava/lang/String;)V

    .line 429
    return-void
.end method

.method public connect()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lorg/a/a/a;->writeThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WebSocketClient objects are not reuseable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/a/a/a;->writeThread:Ljava/lang/Thread;

    .line 110
    iget-object v0, p0, Lorg/a/a/a;->writeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 111
    return-void
.end method

.method public connectBlocking()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/a/a/a;->connect()V

    .line 119
    iget-object v0, p0, Lorg/a/a/a;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 120
    iget-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    invoke-virtual {v0}, Lorg/a/c;->d()Z

    move-result v0

    return v0
.end method

.method public getConnection()Lorg/a/a;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    return-object v0
.end method

.method public getDraft()Lorg/a/b/a;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/a/a/a;->draft:Lorg/a/b/a;

    return-object v0
.end method

.method public getLocalSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    invoke-virtual {v0}, Lorg/a/c;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSocketAddress(Lorg/a/a;)Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lorg/a/a/a;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lorg/a/a/a;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 325
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReadyState()Lorg/a/a$a;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    invoke-virtual {v0}, Lorg/a/c;->h()Lorg/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    invoke-virtual {v0}, Lorg/a/c;->i()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteSocketAddress(Lorg/a/a;)Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lorg/a/a/a;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lorg/a/a/a;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 332
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResourceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lorg/a/a/a;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/a/a/a;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public hasBufferedData()Z
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    invoke-virtual {v0}, Lorg/a/c;->b()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    invoke-virtual {v0}, Lorg/a/c;->g()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    invoke-virtual {v0}, Lorg/a/c;->e()Z

    move-result v0

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    invoke-virtual {v0}, Lorg/a/c;->c()Z

    move-result v0

    return v0
.end method

.method public isFlushAndClose()Z
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    invoke-virtual {v0}, Lorg/a/c;->f()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    invoke-virtual {v0}, Lorg/a/c;->d()Z

    move-result v0

    return v0
.end method

.method public abstract onClose(ILjava/lang/String;Z)V
.end method

.method public onCloseInitiated(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public onClosing(ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public onFragment(Lorg/a/d/d;)V
    .locals 0

    .prologue
    .line 343
    return-void
.end method

.method public abstract onMessage(Ljava/lang/String;)V
.end method

.method public onMessage(Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public abstract onOpen(Lorg/a/e/h;)V
.end method

.method public final onWebsocketClose(Lorg/a/a;ILjava/lang/String;Z)V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lorg/a/a/a;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 276
    iget-object v0, p0, Lorg/a/a/a;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 277
    iget-object v0, p0, Lorg/a/a/a;->writeThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lorg/a/a/a;->writeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 280
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/a/a/a;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lorg/a/a/a;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p3, p4}, Lorg/a/a/a;->onClose(ILjava/lang/String;Z)V

    .line 286
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    invoke-virtual {p0, p0, v0}, Lorg/a/a/a;->onWebsocketError(Lorg/a/a;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onWebsocketCloseInitiated(Lorg/a/a;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 303
    invoke-virtual {p0, p2, p3}, Lorg/a/a/a;->onCloseInitiated(ILjava/lang/String;)V

    .line 304
    return-void
.end method

.method public onWebsocketClosing(Lorg/a/a;ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 308
    invoke-virtual {p0, p2, p3, p4}, Lorg/a/a/a;->onClosing(ILjava/lang/String;Z)V

    .line 309
    return-void
.end method

.method public final onWebsocketError(Lorg/a/a;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 293
    invoke-virtual {p0, p2}, Lorg/a/a/a;->onError(Ljava/lang/Exception;)V

    .line 294
    return-void
.end method

.method public final onWebsocketMessage(Lorg/a/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 248
    invoke-virtual {p0, p2}, Lorg/a/a/a;->onMessage(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public final onWebsocketMessage(Lorg/a/a;Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 253
    invoke-virtual {p0, p2}, Lorg/a/a/a;->onMessage(Ljava/nio/ByteBuffer;)V

    .line 254
    return-void
.end method

.method public onWebsocketMessageFragment(Lorg/a/a;Lorg/a/d/d;)V
    .locals 0

    .prologue
    .line 258
    invoke-virtual {p0, p2}, Lorg/a/a/a;->onFragment(Lorg/a/d/d;)V

    .line 259
    return-void
.end method

.method public final onWebsocketOpen(Lorg/a/a;Lorg/a/e/f;)V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lorg/a/a/a;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 267
    check-cast p2, Lorg/a/e/h;

    invoke-virtual {p0, p2}, Lorg/a/a/a;->onOpen(Lorg/a/e/h;)V

    .line 268
    return-void
.end method

.method public final onWriteDemand(Lorg/a/a;)V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 160
    :try_start_0
    iget-object v0, p0, Lorg/a/a/a;->socket:Ljava/net/Socket;

    if-nez v0, :cond_2

    .line 161
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lorg/a/a/a;->proxy:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v0, p0, Lorg/a/a/a;->socket:Ljava/net/Socket;

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/a/a/a;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Lorg/a/a/a;->socket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lorg/a/a/a;->uri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/a/a/a;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v2, p0, Lorg/a/a/a;->connectTimeout:I

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 167
    :cond_1
    iget-object v0, p0, Lorg/a/a/a;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/a;->istream:Ljava/io/InputStream;

    .line 168
    iget-object v0, p0, Lorg/a/a/a;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/a;->ostream:Ljava/io/OutputStream;

    .line 170
    invoke-direct {p0}, Lorg/a/a/a;->sendHandshake()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/a/a/a$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/a/a/a$a;-><init>(Lorg/a/a/a;Lorg/a/a/a$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/a/a/a;->writeThread:Ljava/lang/Thread;

    .line 178
    iget-object v0, p0, Lorg/a/a/a;->writeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 180
    sget v0, Lorg/a/c;->a:I

    new-array v0, v0, [B

    .line 184
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/a/a/a;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/a/a/a;->istream:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-eq v1, v4, :cond_4

    .line 185
    iget-object v2, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/a/c;->a(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    iget-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    invoke-virtual {v0}, Lorg/a/c;->a()V

    .line 195
    :goto_1
    sget-boolean v0, Lorg/a/a/a;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/a/a/a;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 162
    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/a/a/a;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 171
    :catch_1
    move-exception v0

    .line 172
    iget-object v1, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    invoke-virtual {p0, v1, v0}, Lorg/a/a/a;->onWebsocketError(Lorg/a/a;Ljava/lang/Exception;)V

    .line 173
    iget-object v1, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lorg/a/c;->b(ILjava/lang/String;)V

    .line 196
    :cond_3
    return-void

    .line 187
    :cond_4
    :try_start_3
    iget-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    invoke-virtual {v0}, Lorg/a/c;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 190
    :catch_2
    move-exception v0

    .line 192
    invoke-virtual {p0, v0}, Lorg/a/a/a;->onError(Ljava/lang/Exception;)V

    .line 193
    iget-object v1, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    const/16 v2, 0x3ee

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/a/c;->b(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public send(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    invoke-virtual {v0, p1}, Lorg/a/c;->a(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public send(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    invoke-virtual {v0, p1}, Lorg/a/c;->b(Ljava/nio/ByteBuffer;)V

    .line 434
    return-void
.end method

.method public send([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    invoke-virtual {v0, p1}, Lorg/a/c;->a([B)V

    .line 156
    return-void
.end method

.method public sendFragmentedFrame(Lorg/a/d/d$a;Ljava/nio/ByteBuffer;Z)V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/a/c;->a(Lorg/a/d/d$a;Ljava/nio/ByteBuffer;Z)V

    .line 384
    return-void
.end method

.method public sendFrame(Lorg/a/d/d;)V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lorg/a/a/a;->engine:Lorg/a/c;

    invoke-virtual {v0, p1}, Lorg/a/c;->sendFrame(Lorg/a/d/d;)V

    .line 439
    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 1

    .prologue
    .line 364
    if-nez p1, :cond_0

    .line 365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 366
    :cond_0
    iput-object p1, p0, Lorg/a/a/a;->proxy:Ljava/net/Proxy;

    .line 367
    return-void
.end method

.method public setSocket(Ljava/net/Socket;)V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lorg/a/a/a;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 376
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "socket has already been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    iput-object p1, p0, Lorg/a/a/a;->socket:Ljava/net/Socket;

    .line 379
    return-void
.end method
