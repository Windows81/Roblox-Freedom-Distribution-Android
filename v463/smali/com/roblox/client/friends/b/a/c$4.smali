.class Lcom/roblox/client/friends/b/a/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/friends/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/friends/b/a/c;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/b/a/c;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/roblox/client/friends/b/a/c$4;->a:Lcom/roblox/client/friends/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 262
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c$4;->a:Lcom/roblox/client/friends/b/a/c;

    invoke-static {v0}, Lcom/roblox/client/friends/b/a/c;->a(Lcom/roblox/client/friends/b/a/c;)Lio/chirp/connect/ChirpConnect;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/friends/b/a/c$4;->a:Lcom/roblox/client/friends/b/a/c;

    invoke-static {v1}, Lcom/roblox/client/friends/b/a/c;->a(Lcom/roblox/client/friends/b/a/c;)Lio/chirp/connect/ChirpConnect;

    move-result-object v1

    invoke-virtual {v1}, Lio/chirp/connect/ChirpConnect;->getTransmissionChannel()B

    move-result v1

    invoke-virtual {v0, v1}, Lio/chirp/connect/ChirpConnect;->getStateForChannel(B)Lio/chirp/connect/models/ConnectState;

    move-result-object v0

    .line 263
    sget-object v1, Lio/chirp/connect/models/ConnectState;->AudioStateReceiving:Lio/chirp/connect/models/ConnectState;

    const v2, 0x3e99999a    # 0.3f

    const-string v3, "NearbyChirpManager"

    if-ne v0, v1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c$4;->a:Lcom/roblox/client/friends/b/a/c;

    invoke-static {v0}, Lcom/roblox/client/friends/b/a/c;->c(Lcom/roblox/client/friends/b/a/c;)Lcom/roblox/client/friends/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/friends/b/a/a;->u()V

    .line 266
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v0, v0, v2

    const-string v1, "Not sending (channel is busy)"

    .line 267
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c$4;->a:Lcom/roblox/client/friends/b/a/c;

    invoke-static {v0}, Lcom/roblox/client/friends/b/a/c;->a(Lcom/roblox/client/friends/b/a/c;)Lio/chirp/connect/ChirpConnect;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/friends/b/a/c$4;->a:Lcom/roblox/client/friends/b/a/c;

    invoke-static {v1}, Lcom/roblox/client/friends/b/a/c;->b(Lcom/roblox/client/friends/b/a/c;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/chirp/connect/ChirpConnect;->send([B)Lio/chirp/connect/models/ChirpError;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lio/chirp/connect/models/ChirpError;->getCode()I

    move-result v1

    if-lez v1, :cond_1

    .line 271
    iget-object v1, p0, Lcom/roblox/client/friends/b/a/c$4;->a:Lcom/roblox/client/friends/b/a/c;

    invoke-static {v1}, Lcom/roblox/client/friends/b/a/c;->c(Lcom/roblox/client/friends/b/a/c;)Lcom/roblox/client/friends/b/a/a;

    move-result-object v1

    invoke-virtual {v0}, Lio/chirp/connect/models/ChirpError;->getErrorCode()Lio/chirp/connect/models/ChirpErrorCode;

    move-result-object v4

    const-string v5, "SendError"

    invoke-virtual {v1, v5, v4}, Lcom/roblox/client/friends/b/a/a;->a(Ljava/lang/String;Lio/chirp/connect/models/ChirpErrorCode;)V

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lio/chirp/connect/models/ChirpError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c$4;->a:Lcom/roblox/client/friends/b/a/c;

    invoke-static {v0}, Lcom/roblox/client/friends/b/a/c;->c(Lcom/roblox/client/friends/b/a/c;)Lcom/roblox/client/friends/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/friends/b/a/a;->m()V

    const-string v0, "Sent"

    .line 275
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c$4;->a:Lcom/roblox/client/friends/b/a/c;

    invoke-static {v0}, Lcom/roblox/client/friends/b/a/c;->h(Lcom/roblox/client/friends/b/a/c;)F

    move-result v0

    add-float/2addr v0, v2

    const/high16 v1, 0x3f000000    # 0.5f

    .line 280
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v2, v4

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    .line 283
    :goto_1
    iget-object v1, p0, Lcom/roblox/client/friends/b/a/c$4;->a:Lcom/roblox/client/friends/b/a/c;

    invoke-static {v1}, Lcom/roblox/client/friends/b/a/c;->a(Lcom/roblox/client/friends/b/a/c;)Lio/chirp/connect/ChirpConnect;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/friends/b/a/c$4;->a:Lcom/roblox/client/friends/b/a/c;

    invoke-static {v2}, Lcom/roblox/client/friends/b/a/c;->a(Lcom/roblox/client/friends/b/a/c;)Lio/chirp/connect/ChirpConnect;

    move-result-object v2

    invoke-virtual {v2}, Lio/chirp/connect/ChirpConnect;->getTransmissionChannel()B

    move-result v2

    invoke-virtual {v1, v2}, Lio/chirp/connect/ChirpConnect;->getStateForChannel(B)Lio/chirp/connect/models/ConnectState;

    move-result-object v1

    .line 284
    sget-object v2, Lio/chirp/connect/models/ConnectState;->AudioStateStopped:Lio/chirp/connect/models/ConnectState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/roblox/client/friends/b/a/c$4;->a:Lcom/roblox/client/friends/b/a/c;

    invoke-static {v1}, Lcom/roblox/client/friends/b/a/c;->i(Lcom/roblox/client/friends/b/a/c;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v1, p0, Lcom/roblox/client/friends/b/a/c$4;->a:Lcom/roblox/client/friends/b/a/c;

    invoke-static {v1}, Lcom/roblox/client/friends/b/a/c;->k(Lcom/roblox/client/friends/b/a/c;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/friends/b/a/c$4;->a:Lcom/roblox/client/friends/b/a/c;

    invoke-static {v2}, Lcom/roblox/client/friends/b/a/c;->j(Lcom/roblox/client/friends/b/a/c;)Ljava/lang/Runnable;

    move-result-object v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v0, v0, v3

    float-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
