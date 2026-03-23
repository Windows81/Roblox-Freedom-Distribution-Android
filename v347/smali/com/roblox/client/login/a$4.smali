.class Lcom/roblox/client/login/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/login/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/a;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/roblox/client/login/a$4;->a:Lcom/roblox/client/login/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/roblox/client/login/a$4;->a:Lcom/roblox/client/login/a;

    invoke-virtual {v0}, Lcom/roblox/client/login/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/roblox/client/p;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Lcom/roblox/client/login/a$4;->a:Lcom/roblox/client/login/a;

    invoke-static {v0}, Lcom/roblox/client/login/a;->b(Lcom/roblox/client/login/a;)Lcom/roblox/client/login/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/roblox/client/login/a$4;->a:Lcom/roblox/client/login/a;

    invoke-static {v0}, Lcom/roblox/client/login/a;->b(Lcom/roblox/client/login/a;)Lcom/roblox/client/login/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/login/a$a;->v()V

    .line 154
    :cond_0
    return-void
.end method
