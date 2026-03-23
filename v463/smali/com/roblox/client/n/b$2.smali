.class Lcom/roblox/client/n/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/n/b;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 132
    iput-object p1, p0, Lcom/roblox/client/n/b$2;->a:Lcom/roblox/client/n/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 135
    iget-object p1, p0, Lcom/roblox/client/n/b$2;->a:Lcom/roblox/client/n/b;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/roblox/client/n/b;->a(Lcom/roblox/client/n/b;Z)Z

    .line 136
    iget-object p1, p0, Lcom/roblox/client/n/b$2;->a:Lcom/roblox/client/n/b;

    invoke-virtual {p1}, Lcom/roblox/client/n/b;->r()Landroidx/fragment/app/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method
