.class Lcom/roblox/client/friends/nearby/b/f$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/nearby/b/f$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/friends/c/c;

.field final synthetic b:Lcom/roblox/client/friends/nearby/b/f$1;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/nearby/b/f$1;Lcom/roblox/client/friends/c/c;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/b/f$1$1;->b:Lcom/roblox/client/friends/nearby/b/f$1;

    iput-object p2, p0, Lcom/roblox/client/friends/nearby/b/f$1$1;->a:Lcom/roblox/client/friends/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/f$1$1;->b:Lcom/roblox/client/friends/nearby/b/f$1;

    iget-object v0, v0, Lcom/roblox/client/friends/nearby/b/f$1;->a:Lcom/roblox/client/friends/nearby/b/f;

    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/f$1$1;->a:Lcom/roblox/client/friends/c/c;

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lcom/roblox/client/friends/nearby/b/f;->a(Lcom/roblox/client/friends/nearby/b/f;ILcom/roblox/client/friends/c/c;)V

    return-void
.end method
