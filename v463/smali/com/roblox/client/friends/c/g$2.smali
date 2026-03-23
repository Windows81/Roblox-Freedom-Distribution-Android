.class Lcom/roblox/client/friends/c/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 65
    iput-object p1, p0, Lcom/roblox/client/friends/c/g$2;->a:Lcom/roblox/client/friends/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/roblox/client/friends/c/g$2;->a:Lcom/roblox/client/friends/c/g;

    invoke-static {v0}, Lcom/roblox/client/friends/c/g;->a(Lcom/roblox/client/friends/c/g;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/friends/c/g$2;->a:Lcom/roblox/client/friends/c/g;

    invoke-static {v0}, Lcom/roblox/client/friends/c/g;->d(Lcom/roblox/client/friends/c/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/roblox/client/friends/c/g$2;->a:Lcom/roblox/client/friends/c/g;

    const/4 v1, 0x1

    invoke-static {v0}, Lcom/roblox/client/friends/c/g;->b(Lcom/roblox/client/friends/c/g;)Landroidx/lifecycle/n;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/n;->m_()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/roblox/client/datastructures/d;

    iget-object v2, v2, Lcom/roblox/client/datastructures/d;->a:Ljava/lang/Object;

    check-cast v2, Lcom/roblox/client/friends/c/c;

    invoke-static {v0, v1, v2}, Lcom/roblox/client/friends/c/g;->a(Lcom/roblox/client/friends/c/g;ILcom/roblox/client/friends/c/c;)Lcom/roblox/client/datastructures/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/friends/c/g;->a(Lcom/roblox/client/friends/c/g;Lcom/roblox/client/datastructures/d;)V

    :cond_0
    return-void
.end method
