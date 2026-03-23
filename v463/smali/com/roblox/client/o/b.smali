.class public Lcom/roblox/client/o/b;
.super Lcom/roblox/client/datastructures/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/o/b$a;,
        Lcom/roblox/client/o/b$c;,
        Lcom/roblox/client/o/b$b;
    }
.end annotation


# instance fields
.field private b:Lcom/roblox/client/o/b$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/roblox/client/datastructures/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/o/b;)Lcom/roblox/client/o/b$c;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/roblox/client/o/b;->b:Lcom/roblox/client/o/b$c;

    return-object p0
.end method

.method static synthetic a(Lcom/roblox/client/o/b;Lcom/roblox/client/o/b$c;)Lcom/roblox/client/o/b$c;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/roblox/client/o/b;->b:Lcom/roblox/client/o/b$c;

    return-object p1
.end method

.method public static b()Lcom/roblox/client/o/b;
    .locals 1

    .line 29
    sget-object v0, Lcom/roblox/client/o/b$b;->a:Lcom/roblox/client/o/b;

    return-object v0
.end method


# virtual methods
.method public c()Lcom/roblox/client/o/b$c;
    .locals 6

    const-string v0, "InfluxV2Queue"

    .line 95
    iget-object v1, p0, Lcom/roblox/client/o/b;->b:Lcom/roblox/client/o/b$c;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/roblox/client/o/b$c;->c:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/roblox/client/o/b;->b:Lcom/roblox/client/o/b$c;

    return-object v0

    .line 101
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->t()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {}, Lcom/roblox/client/b;->u()I

    move-result v2

    .line 103
    invoke-static {}, Lcom/roblox/client/b;->v()I

    move-result v3

    .line 105
    new-instance v4, Lcom/roblox/client/o/b$c;

    invoke-direct {v4, p0}, Lcom/roblox/client/o/b$c;-><init>(Lcom/roblox/client/o/b;)V

    iput-object v4, p0, Lcom/roblox/client/o/b;->b:Lcom/roblox/client/o/b$c;

    .line 106
    iput-object v1, v4, Lcom/roblox/client/o/b$c;->a:Ljava/lang/String;

    .line 107
    iget-object v4, p0, Lcom/roblox/client/o/b;->b:Lcom/roblox/client/o/b$c;

    iput v2, v4, Lcom/roblox/client/o/b$c;->b:I

    .line 108
    iget-object v4, p0, Lcom/roblox/client/o/b;->b:Lcom/roblox/client/o/b$c;

    iput v3, v4, Lcom/roblox/client/o/b$c;->d:I

    .line 113
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSocketInfo: Create a socket to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 115
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3, v1, v2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    iget-object v1, p0, Lcom/roblox/client/o/b;->b:Lcom/roblox/client/o/b$c;

    iput-object v3, v1, Lcom/roblox/client/o/b$c;->c:Ljava/net/Socket;

    .line 124
    iget-object v1, p0, Lcom/roblox/client/o/b;->b:Lcom/roblox/client/o/b$c;

    iget v1, v1, Lcom/roblox/client/o/b$c;->d:I

    if-lez v1, :cond_1

    .line 125
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Schedule a special close-connection item with delay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/roblox/client/o/b;->b:Lcom/roblox/client/o/b$c;

    iget v3, v3, Lcom/roblox/client/o/b$c;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "s..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Lcom/roblox/client/o/b$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/o/b$1;-><init>(Lcom/roblox/client/o/b;)V

    iget-object v2, p0, Lcom/roblox/client/o/b;->b:Lcom/roblox/client/o/b$c;

    iget v2, v2, Lcom/roblox/client/o/b$c;->d:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/o/b;->b:Lcom/roblox/client/o/b$c;

    return-object v0

    :catch_0
    move-exception v1

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating the socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/roblox/client/o/b;->b:Lcom/roblox/client/o/b$c;

    return-object v0
.end method
