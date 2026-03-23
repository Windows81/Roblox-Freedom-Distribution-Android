.class Lcom/roblox/client/purchase/google/a/e$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/purchase/google/a/e$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/roblox/client/purchase/google/a/e$3;


# direct methods
.method constructor <init>(Lcom/roblox/client/purchase/google/a/e$3;Ljava/util/List;)V
    .locals 0

    .line 1103
    iput-object p1, p0, Lcom/roblox/client/purchase/google/a/e$3$1;->b:Lcom/roblox/client/purchase/google/a/e$3;

    iput-object p2, p0, Lcom/roblox/client/purchase/google/a/e$3$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1105
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e$3$1;->b:Lcom/roblox/client/purchase/google/a/e$3;

    iget-object v0, v0, Lcom/roblox/client/purchase/google/a/e$3;->b:Lcom/roblox/client/purchase/google/a/e$a;

    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e$3$1;->b:Lcom/roblox/client/purchase/google/a/e$3;

    iget-object v1, v1, Lcom/roblox/client/purchase/google/a/e$3;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/purchase/google/a/h;

    iget-object v3, p0, Lcom/roblox/client/purchase/google/a/e$3$1;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/roblox/client/purchase/google/a/f;

    invoke-interface {v0, v1, v2}, Lcom/roblox/client/purchase/google/a/e$a;->a(Lcom/roblox/client/purchase/google/a/h;Lcom/roblox/client/purchase/google/a/f;)V

    return-void
.end method
