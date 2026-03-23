.class Lcom/roblox/client/purchase/google/a/e$3$2;
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

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/roblox/client/purchase/google/a/e$3$2;->b:Lcom/roblox/client/purchase/google/a/e$3;

    iput-object p2, p0, Lcom/roblox/client/purchase/google/a/e$3$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e$3$2;->b:Lcom/roblox/client/purchase/google/a/e$3;

    iget-object v0, v0, Lcom/roblox/client/purchase/google/a/e$3;->d:Lcom/roblox/client/purchase/google/a/e$b;

    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e$3$2;->b:Lcom/roblox/client/purchase/google/a/e$3;

    iget-object v1, v1, Lcom/roblox/client/purchase/google/a/e$3;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/roblox/client/purchase/google/a/e$3$2;->a:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/roblox/client/purchase/google/a/e$b;->a(Ljava/util/List;Ljava/util/List;)V

    .line 1054
    return-void
.end method
