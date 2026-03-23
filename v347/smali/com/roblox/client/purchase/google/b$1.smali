.class Lcom/roblox/client/purchase/google/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/purchase/google/a/e$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/purchase/google/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/purchase/google/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/purchase/google/b;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/roblox/client/purchase/google/b$1;->a:Lcom/roblox/client/purchase/google/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/purchase/google/a/f;)V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/roblox/client/purchase/google/a/f;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    const-string v0, "rbx.purchaseflow"

    const-string v1, "Google IAB is not setup"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$1;->a:Lcom/roblox/client/purchase/google/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/a/c;)Lcom/roblox/client/purchase/google/a/c;

    .line 110
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$1;->a:Lcom/roblox/client/purchase/google/b;

    sget-object v1, Lcom/roblox/client/purchase/google/b$a;->b:Lcom/roblox/client/purchase/google/b$a;

    invoke-static {v0, v1}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/b$a;)Lcom/roblox/client/purchase/google/b$a;

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const-string v0, "rbx.purchaseflow"

    const-string v1, "Google IAB is setup"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$1;->a:Lcom/roblox/client/purchase/google/b;

    sget-object v1, Lcom/roblox/client/purchase/google/b$a;->a:Lcom/roblox/client/purchase/google/b$a;

    invoke-static {v0, v1}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Lcom/roblox/client/purchase/google/b$a;)Lcom/roblox/client/purchase/google/b$a;

    .line 119
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$1;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$1;->a:Lcom/roblox/client/purchase/google/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/purchase/google/b;->a(Lcom/roblox/client/purchase/google/b;Z)Z

    .line 121
    iget-object v0, p0, Lcom/roblox/client/purchase/google/b$1;->a:Lcom/roblox/client/purchase/google/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/b;->b(Lcom/roblox/client/purchase/google/b;)V

    goto :goto_0
.end method
