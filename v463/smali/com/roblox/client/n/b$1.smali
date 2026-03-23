.class Lcom/roblox/client/n/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/n/b;->b(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/n/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/n/b;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/roblox/client/n/b$1;->a:Lcom/roblox/client/n/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 110
    iget-object p1, p0, Lcom/roblox/client/n/b$1;->a:Lcom/roblox/client/n/b;

    invoke-virtual {p1}, Lcom/roblox/client/n/b;->at()Z

    move-result p1

    if-nez p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/roblox/client/n/b$1;->a:Lcom/roblox/client/n/b;

    iget-boolean p1, p1, Lcom/roblox/client/n/b;->aA:Z

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/roblox/client/n/b$1;->a:Lcom/roblox/client/n/b;

    invoke-virtual {p1}, Lcom/roblox/client/n/b;->r()Landroidx/fragment/app/c;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/c;->onBackPressed()V

    :cond_0
    return-void
.end method
