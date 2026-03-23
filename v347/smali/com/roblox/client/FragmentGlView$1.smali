.class Lcom/roblox/client/FragmentGlView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/purchase/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/FragmentGlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/FragmentGlView;


# direct methods
.method constructor <init>(Lcom/roblox/client/FragmentGlView;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/roblox/client/FragmentGlView$1;->a:Lcom/roblox/client/FragmentGlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public a(Lcom/roblox/client/purchase/d;)V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView$1;->a:Lcom/roblox/client/FragmentGlView;

    invoke-virtual {v0}, Lcom/roblox/client/FragmentGlView;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    .line 174
    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/client/purchase/d;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    iget-object v0, p0, Lcom/roblox/client/FragmentGlView$1;->a:Lcom/roblox/client/FragmentGlView;

    const v1, 0x7f0e01b9

    invoke-virtual {v0, v1}, Lcom/roblox/client/FragmentGlView;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    :goto_1
    iget-object v1, p0, Lcom/roblox/client/FragmentGlView$1;->a:Lcom/roblox/client/FragmentGlView;

    iget-object v1, v1, Lcom/roblox/client/FragmentGlView;->mUIThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/roblox/client/FragmentGlView$1$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/roblox/client/FragmentGlView$1$1;-><init>(Lcom/roblox/client/FragmentGlView$1;Lcom/roblox/client/purchase/d;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {p1, v0}, Lcom/roblox/client/purchase/d;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method

.method public b()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method
