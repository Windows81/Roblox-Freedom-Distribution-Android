.class Lcom/roblox/client/friends/b/a/c$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/b/a/c$1;->onReceived([BB)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:B

.field final synthetic c:Lcom/roblox/client/friends/b/a/c$1;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/b/a/c$1;[BB)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/roblox/client/friends/b/a/c$1$1;->c:Lcom/roblox/client/friends/b/a/c$1;

    iput-object p2, p0, Lcom/roblox/client/friends/b/a/c$1$1;->a:[B

    iput-byte p3, p0, Lcom/roblox/client/friends/b/a/c$1$1;->b:B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c$1$1;->a:[B

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/roblox/client/friends/b/a/c;->d()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/friends/b/a/c$1$1;->c:Lcom/roblox/client/friends/b/a/c$1;

    iget-object v1, v1, Lcom/roblox/client/friends/b/a/c$1;->a:Lcom/roblox/client/friends/b/a/c;

    .line 164
    invoke-static {v1}, Lcom/roblox/client/friends/b/a/c;->a(Lcom/roblox/client/friends/b/a/c;)Lio/chirp/connect/ChirpConnect;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/friends/b/a/c$1$1;->a:[B

    invoke-virtual {v1, v2}, Lio/chirp/connect/ChirpConnect;->payloadToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/roblox/client/friends/b/a/c$1$1;->b:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NearbyChirpManager"

    .line 163
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c$1$1;->c:Lcom/roblox/client/friends/b/a/c$1;

    iget-object v0, v0, Lcom/roblox/client/friends/b/a/c$1;->a:Lcom/roblox/client/friends/b/a/c;

    invoke-static {v0}, Lcom/roblox/client/friends/b/a/c;->b(Lcom/roblox/client/friends/b/a/c;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/roblox/client/friends/b/a/c$1$1;->a:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Own data."

    .line 170
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c$1$1;->c:Lcom/roblox/client/friends/b/a/c$1;

    iget-object v0, v0, Lcom/roblox/client/friends/b/a/c$1;->a:Lcom/roblox/client/friends/b/a/c;

    invoke-static {v0}, Lcom/roblox/client/friends/b/a/c;->c(Lcom/roblox/client/friends/b/a/c;)Lcom/roblox/client/friends/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/friends/b/a/a;->n()V

    .line 176
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c$1$1;->c:Lcom/roblox/client/friends/b/a/c$1;

    iget-object v0, v0, Lcom/roblox/client/friends/b/a/c$1;->a:Lcom/roblox/client/friends/b/a/c;

    invoke-static {v0}, Lcom/roblox/client/friends/b/a/c;->d(Lcom/roblox/client/friends/b/a/c;)Lcom/roblox/client/friends/b/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c$1$1;->c:Lcom/roblox/client/friends/b/a/c$1;

    iget-object v0, v0, Lcom/roblox/client/friends/b/a/c$1;->a:Lcom/roblox/client/friends/b/a/c;

    .line 178
    invoke-static {v0}, Lcom/roblox/client/friends/b/a/c;->a(Lcom/roblox/client/friends/b/a/c;)Lio/chirp/connect/ChirpConnect;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/friends/b/a/c$1$1;->a:[B

    invoke-virtual {v0, v1}, Lio/chirp/connect/ChirpConnect;->payloadToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/friends/b/a/d;->a(Ljava/lang/String;)Lcom/roblox/client/friends/b/a/d;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/roblox/client/friends/b/a/c$1$1;->c:Lcom/roblox/client/friends/b/a/c$1;

    iget-object v1, v1, Lcom/roblox/client/friends/b/a/c$1;->a:Lcom/roblox/client/friends/b/a/c;

    invoke-static {v1}, Lcom/roblox/client/friends/b/a/c;->e(Lcom/roblox/client/friends/b/a/c;)Lcom/roblox/client/friends/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/roblox/client/friends/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/friends/b/a/c$1$1$1;

    invoke-direct {v2, p0, v0}, Lcom/roblox/client/friends/b/a/c$1$1$1;-><init>(Lcom/roblox/client/friends/b/a/c$1$1;Lcom/roblox/client/friends/b/a/d;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
