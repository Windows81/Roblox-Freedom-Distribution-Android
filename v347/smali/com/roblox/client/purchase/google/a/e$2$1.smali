.class Lcom/roblox/client/purchase/google/a/e$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/purchase/google/a/e$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/purchase/google/a/f;

.field final synthetic b:Lcom/roblox/client/purchase/google/a/g;

.field final synthetic c:Lcom/roblox/client/purchase/google/a/e$2;


# direct methods
.method constructor <init>(Lcom/roblox/client/purchase/google/a/e$2;Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/g;)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lcom/roblox/client/purchase/google/a/e$2$1;->c:Lcom/roblox/client/purchase/google/a/e$2;

    iput-object p2, p0, Lcom/roblox/client/purchase/google/a/e$2$1;->a:Lcom/roblox/client/purchase/google/a/f;

    iput-object p3, p0, Lcom/roblox/client/purchase/google/a/e$2$1;->b:Lcom/roblox/client/purchase/google/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 680
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e$2$1;->c:Lcom/roblox/client/purchase/google/a/e$2;

    iget-object v0, v0, Lcom/roblox/client/purchase/google/a/e$2;->c:Lcom/roblox/client/purchase/google/a/e$e;

    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e$2$1;->a:Lcom/roblox/client/purchase/google/a/f;

    iget-object v2, p0, Lcom/roblox/client/purchase/google/a/e$2$1;->b:Lcom/roblox/client/purchase/google/a/g;

    invoke-interface {v0, v1, v2}, Lcom/roblox/client/purchase/google/a/e$e;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/g;)V

    .line 681
    return-void
.end method
