.class Lcom/roblox/client/landing/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/landing/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/landing/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/landing/b;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/roblox/client/landing/b$1;->a:Lcom/roblox/client/landing/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 62
    const-string v0, "about"

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/roblox/client/landing/b$1;->a:Lcom/roblox/client/landing/b;

    invoke-static {v0}, Lcom/roblox/client/landing/b;->a(Lcom/roblox/client/landing/b;)Lcom/roblox/client/landing/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/roblox/client/landing/b$1;->a:Lcom/roblox/client/landing/b;

    invoke-static {v0}, Lcom/roblox/client/landing/b;->a(Lcom/roblox/client/landing/b;)Lcom/roblox/client/landing/b$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/landing/b$a;->v()V

    .line 66
    :cond_0
    return-void
.end method
