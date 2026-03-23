.class public Lcom/roblox/client/purchase/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/game/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/purchase/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/purchase/b;


# direct methods
.method public constructor <init>(Lcom/roblox/client/purchase/b;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/roblox/client/purchase/b$a;->a:Lcom/roblox/client/purchase/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/roblox/client/purchase/f;)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/roblox/client/purchase/b$a;->a:Lcom/roblox/client/purchase/b;

    invoke-static {v0}, Lcom/roblox/client/purchase/b;->a(Lcom/roblox/client/purchase/b;)Lcom/roblox/client/purchase/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/purchase/a;->aq()Lcom/roblox/client/r;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/client/purchase/f;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/roblox/client/purchase/b$a;->a:Lcom/roblox/client/purchase/b;

    sget v1, Lcom/roblox/client/o$j;->Purchasing_RobloxProducts_Response_PurchaseSuccessfulAndroid:I

    invoke-virtual {v0, v1}, Lcom/roblox/client/purchase/b;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p1, v0}, Lcom/roblox/client/purchase/f;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/roblox/client/purchase/b$a;->a:Lcom/roblox/client/purchase/b;

    new-instance v2, Lcom/roblox/client/purchase/b$a$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/roblox/client/purchase/b$a$1;-><init>(Lcom/roblox/client/purchase/b$a;Lcom/roblox/client/purchase/f;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Lcom/roblox/client/purchase/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ZJLjava/lang/String;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/roblox/client/purchase/b$a;->a:Lcom/roblox/client/purchase/b;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/roblox/client/purchase/b;->a(Lcom/roblox/client/purchase/b;ZJLjava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
