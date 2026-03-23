.class public Lcom/roblox/client/n/c;
.super Lcom/roblox/client/n/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/roblox/client/n/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 21
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/n/b;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/n/c;->a(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected ao()Lcom/roblox/client/p/b;
    .locals 1

    .line 16
    new-instance v0, Lcom/roblox/client/p/e;

    invoke-direct {v0}, Lcom/roblox/client/p/e;-><init>()V

    return-object v0
.end method
