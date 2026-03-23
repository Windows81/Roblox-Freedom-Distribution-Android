.class Lcom/roblox/client/f/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/f/d;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/f/d;


# direct methods
.method constructor <init>(Lcom/roblox/client/f/d;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/roblox/client/f/d$1;->a:Lcom/roblox/client/f/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/roblox/client/f/d$1;->a:Lcom/roblox/client/f/d;

    invoke-virtual {v0}, Lcom/roblox/client/f/d;->c()Z

    move-result v0

    .line 80
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/f/d$1;->a:Lcom/roblox/client/f/d;

    iget-boolean v0, v0, Lcom/roblox/client/f/d;->f:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/roblox/client/f/d$1;->a:Lcom/roblox/client/f/d;

    invoke-virtual {v0}, Lcom/roblox/client/f/d;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->onBackPressed()V

    .line 84
    :cond_0
    return-void
.end method
