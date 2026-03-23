.class Lcom/roblox/client/purchase/google/a/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/purchase/google/a/e;->a(Ljava/util/List;Lcom/roblox/client/purchase/google/a/e$a;Lcom/roblox/client/purchase/google/a/e$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/roblox/client/purchase/google/a/e$a;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/roblox/client/purchase/google/a/e$b;

.field final synthetic e:Lcom/roblox/client/purchase/google/a/e;


# direct methods
.method constructor <init>(Lcom/roblox/client/purchase/google/a/e;Ljava/util/List;Lcom/roblox/client/purchase/google/a/e$a;Landroid/os/Handler;Lcom/roblox/client/purchase/google/a/e$b;)V
    .locals 0

    .line 1088
    iput-object p1, p0, Lcom/roblox/client/purchase/google/a/e$3;->e:Lcom/roblox/client/purchase/google/a/e;

    iput-object p2, p0, Lcom/roblox/client/purchase/google/a/e$3;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/roblox/client/purchase/google/a/e$3;->b:Lcom/roblox/client/purchase/google/a/e$a;

    iput-object p4, p0, Lcom/roblox/client/purchase/google/a/e$3;->c:Landroid/os/Handler;

    iput-object p5, p0, Lcom/roblox/client/purchase/google/a/e$3;->d:Lcom/roblox/client/purchase/google/a/e$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1090
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1091
    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e$3;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/roblox/client/purchase/google/a/h;

    .line 1093
    :try_start_0
    iget-object v3, p0, Lcom/roblox/client/purchase/google/a/e$3;->e:Lcom/roblox/client/purchase/google/a/e;

    invoke-virtual {v3, v2}, Lcom/roblox/client/purchase/google/a/e;->a(Lcom/roblox/client/purchase/google/a/h;)V

    .line 1094
    new-instance v3, Lcom/roblox/client/purchase/google/a/f;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successful consume of sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/roblox/client/purchase/google/a/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/roblox/client/purchase/google/a/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1097
    invoke-virtual {v2}, Lcom/roblox/client/purchase/google/a/d;->a()Lcom/roblox/client/purchase/google/a/f;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1101
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e$3;->e:Lcom/roblox/client/purchase/google/a/e;

    invoke-virtual {v1}, Lcom/roblox/client/purchase/google/a/e;->a()V

    .line 1102
    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e$3;->e:Lcom/roblox/client/purchase/google/a/e;

    iget-boolean v1, v1, Lcom/roblox/client/purchase/google/a/e;->d:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e$3;->b:Lcom/roblox/client/purchase/google/a/e$a;

    if-eqz v1, :cond_1

    .line 1103
    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e$3;->c:Landroid/os/Handler;

    new-instance v2, Lcom/roblox/client/purchase/google/a/e$3$1;

    invoke-direct {v2, p0, v0}, Lcom/roblox/client/purchase/google/a/e$3$1;-><init>(Lcom/roblox/client/purchase/google/a/e$3;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1109
    :cond_1
    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e$3;->e:Lcom/roblox/client/purchase/google/a/e;

    iget-boolean v1, v1, Lcom/roblox/client/purchase/google/a/e;->d:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e$3;->d:Lcom/roblox/client/purchase/google/a/e$b;

    if-eqz v1, :cond_2

    .line 1110
    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e$3;->c:Landroid/os/Handler;

    new-instance v2, Lcom/roblox/client/purchase/google/a/e$3$2;

    invoke-direct {v2, p0, v0}, Lcom/roblox/client/purchase/google/a/e$3$2;-><init>(Lcom/roblox/client/purchase/google/a/e$3;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
