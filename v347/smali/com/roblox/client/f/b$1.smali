.class Lcom/roblox/client/f/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/f/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/f/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/f/b;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/roblox/client/f/b$1;->a:Lcom/roblox/client/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/roblox/client/f/b$1;->a:Lcom/roblox/client/f/b;

    invoke-virtual {v0}, Lcom/roblox/client/f/b;->a()Z

    move-result v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/roblox/client/f/b$1;->a:Lcom/roblox/client/f/b;

    invoke-virtual {v0}, Lcom/roblox/client/f/b;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->onBackPressed()V

    .line 68
    :cond_0
    return-void
.end method
