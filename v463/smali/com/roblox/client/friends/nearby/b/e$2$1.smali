.class Lcom/roblox/client/friends/nearby/b/e$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/nearby/b/e$2;->a(Le/b;Le/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le/l;

.field final synthetic b:Lcom/roblox/client/friends/nearby/b/e$2;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/nearby/b/e$2;Le/l;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/b/e$2$1;->b:Lcom/roblox/client/friends/nearby/b/e$2;

    iput-object p2, p0, Lcom/roblox/client/friends/nearby/b/e$2$1;->a:Le/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 127
    new-instance v0, Lcom/roblox/platform/http/returntypes/b;

    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/e$2$1;->a:Le/l;

    invoke-direct {v0, v1}, Lcom/roblox/platform/http/returntypes/b;-><init>(Le/l;)V

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/roblox/platform/http/returntypes/b;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NearbyUserRepository"

    invoke-static {v2, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v0}, Lcom/roblox/platform/http/returntypes/b;->b()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 131
    iget-object v0, v0, Lcom/roblox/platform/http/returntypes/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailResponseBody;

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/e$2$1;->b:Lcom/roblox/client/friends/nearby/b/e$2;

    iget-object v0, v0, Lcom/roblox/client/friends/nearby/b/e$2;->a:Landroidx/lifecycle/p;

    new-instance v1, Lcom/roblox/client/datastructures/d;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/datastructures/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/e$2$1;->b:Lcom/roblox/client/friends/nearby/b/e$2;

    iget-object v1, v1, Lcom/roblox/client/friends/nearby/b/e$2;->c:Lcom/roblox/client/friends/nearby/b/e;

    invoke-static {v1, v0}, Lcom/roblox/client/friends/nearby/b/e;->a(Lcom/roblox/client/friends/nearby/b/e;Lcom/roblox/platform/http/returntypes/thumbnails/ThumbnailResponseBody;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v1, p0, Lcom/roblox/client/friends/nearby/b/e$2$1;->b:Lcom/roblox/client/friends/nearby/b/e$2;

    iget-object v1, v1, Lcom/roblox/client/friends/nearby/b/e$2;->b:Lcom/roblox/client/friends/nearby/b/a/a;

    invoke-virtual {v1, v0}, Lcom/roblox/client/friends/nearby/b/a/a;->a(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/e$2$1;->b:Lcom/roblox/client/friends/nearby/b/e$2;

    iget-object v0, v0, Lcom/roblox/client/friends/nearby/b/e$2;->a:Landroidx/lifecycle/p;

    new-instance v1, Lcom/roblox/client/datastructures/d;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/roblox/client/friends/nearby/b/e$2$1;->b:Lcom/roblox/client/friends/nearby/b/e$2;

    iget-object v3, v3, Lcom/roblox/client/friends/nearby/b/e$2;->b:Lcom/roblox/client/friends/nearby/b/a/a;

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/datastructures/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/e$2$1;->b:Lcom/roblox/client/friends/nearby/b/e$2;

    iget-object v0, v0, Lcom/roblox/client/friends/nearby/b/e$2;->a:Landroidx/lifecycle/p;

    new-instance v1, Lcom/roblox/client/datastructures/d;

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/datastructures/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/friends/nearby/b/e$2$1;->b:Lcom/roblox/client/friends/nearby/b/e$2;

    iget-object v0, v0, Lcom/roblox/client/friends/nearby/b/e$2;->a:Landroidx/lifecycle/p;

    new-instance v1, Lcom/roblox/client/datastructures/d;

    invoke-direct {v1, v2, v3}, Lcom/roblox/client/datastructures/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
