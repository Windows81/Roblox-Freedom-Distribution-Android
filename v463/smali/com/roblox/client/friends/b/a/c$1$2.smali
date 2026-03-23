.class Lcom/roblox/client/friends/b/a/c$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/b/a/c$1;->onReceiving(B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:B

.field final synthetic b:Lcom/roblox/client/friends/b/a/c$1;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/b/a/c$1;B)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/roblox/client/friends/b/a/c$1$2;->b:Lcom/roblox/client/friends/b/a/c$1;

    iput-byte p2, p0, Lcom/roblox/client/friends/b/a/c$1$2;->a:B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c$1$2;->b:Lcom/roblox/client/friends/b/a/c$1;

    iget-object v0, v0, Lcom/roblox/client/friends/b/a/c$1;->a:Lcom/roblox/client/friends/b/a/c;

    invoke-static {v0}, Lcom/roblox/client/friends/b/a/c;->f(Lcom/roblox/client/friends/b/a/c;)Ljava/util/List;

    move-result-object v0

    iget-byte v1, p0, Lcom/roblox/client/friends/b/a/c$1$2;->a:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c$1$2;->b:Lcom/roblox/client/friends/b/a/c$1;

    iget-object v0, v0, Lcom/roblox/client/friends/b/a/c$1;->a:Lcom/roblox/client/friends/b/a/c;

    invoke-static {v0}, Lcom/roblox/client/friends/b/a/c;->f(Lcom/roblox/client/friends/b/a/c;)Ljava/util/List;

    move-result-object v0

    iget-byte v1, p0, Lcom/roblox/client/friends/b/a/c$1$2;->a:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Heard channels "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/friends/b/a/c$1$2;->b:Lcom/roblox/client/friends/b/a/c$1;

    iget-object v1, v1, Lcom/roblox/client/friends/b/a/c$1;->a:Lcom/roblox/client/friends/b/a/c;

    invoke-static {v1}, Lcom/roblox/client/friends/b/a/c;->f(Lcom/roblox/client/friends/b/a/c;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NearbyChirpManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-byte v0, p0, Lcom/roblox/client/friends/b/a/c$1$2;->a:B

    iget-object v1, p0, Lcom/roblox/client/friends/b/a/c$1$2;->b:Lcom/roblox/client/friends/b/a/c$1;

    iget-object v1, v1, Lcom/roblox/client/friends/b/a/c$1;->a:Lcom/roblox/client/friends/b/a/c;

    invoke-static {v1}, Lcom/roblox/client/friends/b/a/c;->a(Lcom/roblox/client/friends/b/a/c;)Lio/chirp/connect/ChirpConnect;

    move-result-object v1

    invoke-virtual {v1}, Lio/chirp/connect/ChirpConnect;->getTransmissionChannel()B

    move-result v1

    if-ne v0, v1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c$1$2;->b:Lcom/roblox/client/friends/b/a/c$1;

    iget-object v0, v0, Lcom/roblox/client/friends/b/a/c$1;->a:Lcom/roblox/client/friends/b/a/c;

    invoke-static {v0}, Lcom/roblox/client/friends/b/a/c;->g(Lcom/roblox/client/friends/b/a/c;)V

    :cond_1
    return-void
.end method
