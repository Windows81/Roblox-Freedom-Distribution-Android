.class public Lcom/roblox/client/g/b;
.super Lcom/roblox/client/datastructures/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/g/b$a;,
        Lcom/roblox/client/g/b$c;,
        Lcom/roblox/client/g/b$b;
    }
.end annotation


# instance fields
.field private b:Lcom/roblox/client/g/b$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/roblox/client/datastructures/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/g/b;)Lcom/roblox/client/g/b$c;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/roblox/client/g/b;->b:Lcom/roblox/client/g/b$c;

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/g/b;Lcom/roblox/client/g/b$c;)Lcom/roblox/client/g/b$c;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/roblox/client/g/b;->b:Lcom/roblox/client/g/b$c;

    return-object p1
.end method

.method public static b()Lcom/roblox/client/g/b;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/roblox/client/g/b$b;->a:Lcom/roblox/client/g/b;

    return-object v0
.end method


# virtual methods
.method public c()Lcom/roblox/client/g/b$c;
    .locals 6

    .prologue
    .line 95
    iget-object v0, p0, Lcom/roblox/client/g/b;->b:Lcom/roblox/client/g/b$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/g/b;->b:Lcom/roblox/client/g/b$c;

    iget-object v0, v0, Lcom/roblox/client/g/b$c;->c:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/roblox/client/g/b;->b:Lcom/roblox/client/g/b$c;

    .line 135
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->y()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {}, Lcom/roblox/client/b;->z()I

    move-result v1

    .line 103
    invoke-static {}, Lcom/roblox/client/b;->A()I

    move-result v2

    .line 105
    new-instance v3, Lcom/roblox/client/g/b$c;

    invoke-direct {v3, p0}, Lcom/roblox/client/g/b$c;-><init>(Lcom/roblox/client/g/b;)V

    iput-object v3, p0, Lcom/roblox/client/g/b;->b:Lcom/roblox/client/g/b$c;

    .line 106
    iget-object v3, p0, Lcom/roblox/client/g/b;->b:Lcom/roblox/client/g/b$c;

    iput-object v0, v3, Lcom/roblox/client/g/b$c;->a:Ljava/lang/String;

    .line 107
    iget-object v3, p0, Lcom/roblox/client/g/b;->b:Lcom/roblox/client/g/b$c;

    iput v1, v3, Lcom/roblox/client/g/b$c;->b:I

    .line 108
    iget-object v3, p0, Lcom/roblox/client/g/b;->b:Lcom/roblox/client/g/b$c;

    iput v2, v3, Lcom/roblox/client/g/b$c;->d:I

    .line 113
    :try_start_0
    const-string v2, "InfluxV2Queue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSocketInfo: Create a socket to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 115
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2, v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    iget-object v0, p0, Lcom/roblox/client/g/b;->b:Lcom/roblox/client/g/b$c;

    iput-object v2, v0, Lcom/roblox/client/g/b$c;->c:Ljava/net/Socket;

    .line 124
    iget-object v0, p0, Lcom/roblox/client/g/b;->b:Lcom/roblox/client/g/b$c;

    iget v0, v0, Lcom/roblox/client/g/b$c;->d:I

    if-lez v0, :cond_1

    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 126
    const-string v1, "InfluxV2Queue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Schedule a special close-connection item with delay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/g/b;->b:Lcom/roblox/client/g/b$c;

    iget v3, v3, Lcom/roblox/client/g/b$c;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v1, Lcom/roblox/client/g/b$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/g/b$1;-><init>(Lcom/roblox/client/g/b;)V

    iget-object v2, p0, Lcom/roblox/client/g/b;->b:Lcom/roblox/client/g/b$c;

    iget v2, v2, Lcom/roblox/client/g/b$c;->d:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/g/b;->b:Lcom/roblox/client/g/b$c;

    goto/16 :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string v1, "InfluxV2Queue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating the socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/roblox/client/g/b;->b:Lcom/roblox/client/g/b$c;

    goto/16 :goto_0
.end method
