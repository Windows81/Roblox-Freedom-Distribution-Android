.class Lcom/roblox/client/purchase/google/a/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/purchase/google/a/e;->a(ZLjava/util/List;Lcom/roblox/client/purchase/google/a/e$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/roblox/client/purchase/google/a/e$e;

.field final synthetic d:Landroid/os/Handler;

.field final synthetic e:Lcom/roblox/client/purchase/google/a/e;


# direct methods
.method constructor <init>(Lcom/roblox/client/purchase/google/a/e;ZLjava/util/List;Lcom/roblox/client/purchase/google/a/e$e;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/roblox/client/purchase/google/a/e$2;->e:Lcom/roblox/client/purchase/google/a/e;

    iput-boolean p2, p0, Lcom/roblox/client/purchase/google/a/e$2;->a:Z

    iput-object p3, p0, Lcom/roblox/client/purchase/google/a/e$2;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/roblox/client/purchase/google/a/e$2;->c:Lcom/roblox/client/purchase/google/a/e$e;

    iput-object p5, p0, Lcom/roblox/client/purchase/google/a/e$2;->d:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 664
    new-instance v1, Lcom/roblox/client/purchase/google/a/f;

    const/4 v0, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v1, v0, v2}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    .line 665
    const/4 v0, 0x0

    .line 667
    :try_start_0
    iget-object v2, p0, Lcom/roblox/client/purchase/google/a/e$2;->e:Lcom/roblox/client/purchase/google/a/e;

    iget-boolean v3, p0, Lcom/roblox/client/purchase/google/a/e$2;->a:Z

    iget-object v4, p0, Lcom/roblox/client/purchase/google/a/e$2;->b:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/roblox/client/purchase/google/a/e;->a(ZLjava/util/List;)Lcom/roblox/client/purchase/google/a/g;
    :try_end_0
    .catch Lcom/roblox/client/purchase/google/a/d; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 673
    :goto_0
    iget-object v2, p0, Lcom/roblox/client/purchase/google/a/e$2;->e:Lcom/roblox/client/purchase/google/a/e;

    invoke-virtual {v2}, Lcom/roblox/client/purchase/google/a/e;->a()V

    .line 677
    iget-object v2, p0, Lcom/roblox/client/purchase/google/a/e$2;->e:Lcom/roblox/client/purchase/google/a/e;

    iget-boolean v2, v2, Lcom/roblox/client/purchase/google/a/e;->d:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/roblox/client/purchase/google/a/e$2;->c:Lcom/roblox/client/purchase/google/a/e$e;

    if-eqz v2, :cond_0

    .line 678
    iget-object v2, p0, Lcom/roblox/client/purchase/google/a/e$2;->d:Landroid/os/Handler;

    new-instance v3, Lcom/roblox/client/purchase/google/a/e$2$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/roblox/client/purchase/google/a/e$2$1;-><init>(Lcom/roblox/client/purchase/google/a/e$2;Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/g;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 684
    :cond_0
    return-void

    .line 669
    :catch_0
    move-exception v1

    .line 670
    invoke-virtual {v1}, Lcom/roblox/client/purchase/google/a/d;->a()Lcom/roblox/client/purchase/google/a/f;

    move-result-object v1

    goto :goto_0
.end method
