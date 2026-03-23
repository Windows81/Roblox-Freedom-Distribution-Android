.class Lcom/roblox/client/friends/b/a/c$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/b/a/c$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/friends/b/a/d;

.field final synthetic b:Lcom/roblox/client/friends/b/a/c$1$1;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/b/a/c$1$1;Lcom/roblox/client/friends/b/a/d;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/roblox/client/friends/b/a/c$1$1$1;->b:Lcom/roblox/client/friends/b/a/c$1$1;

    iput-object p2, p0, Lcom/roblox/client/friends/b/a/c$1$1$1;->a:Lcom/roblox/client/friends/b/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/roblox/client/friends/b/a/c$1$1$1;->b:Lcom/roblox/client/friends/b/a/c$1$1;

    iget-object v0, v0, Lcom/roblox/client/friends/b/a/c$1$1;->c:Lcom/roblox/client/friends/b/a/c$1;

    iget-object v0, v0, Lcom/roblox/client/friends/b/a/c$1;->a:Lcom/roblox/client/friends/b/a/c;

    invoke-static {v0}, Lcom/roblox/client/friends/b/a/c;->d(Lcom/roblox/client/friends/b/a/c;)Lcom/roblox/client/friends/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/friends/b/a/c$1$1$1;->a:Lcom/roblox/client/friends/b/a/d;

    invoke-interface {v0, v1}, Lcom/roblox/client/friends/b/c;->a(Lcom/roblox/client/friends/b/b;)V

    return-void
.end method
