.class Lcom/roblox/client/friends/c/g$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/friends/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/friends/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/friends/c/g;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/c/g;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/roblox/client/friends/c/g$3;->a:Lcom/roblox/client/friends/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/friends/c/c;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/roblox/client/friends/c/c;)V
    .locals 2

    const-string v0, "NearbyUserTokenViewModel"

    const-string v1, "onInvalidToken triggered."

    .line 81
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/roblox/client/friends/c/g$3;->a:Lcom/roblox/client/friends/c/g;

    invoke-static {v0}, Lcom/roblox/client/friends/c/g;->e(Lcom/roblox/client/friends/c/g;)Lcom/roblox/client/friends/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/friends/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/friends/c/g$3$1;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/friends/c/g$3$1;-><init>(Lcom/roblox/client/friends/c/g$3;Lcom/roblox/client/friends/c/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
