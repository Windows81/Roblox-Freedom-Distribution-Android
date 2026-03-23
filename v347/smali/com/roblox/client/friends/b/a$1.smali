.class Lcom/roblox/client/friends/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/b/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/friends/b/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/b/a;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/roblox/client/friends/b/a$1;->a:Lcom/roblox/client/friends/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/roblox/client/friends/b/a$1;->a:Lcom/roblox/client/friends/b/a;

    invoke-static {v0}, Lcom/roblox/client/friends/b/a;->a(Lcom/roblox/client/friends/b/a;)Lcom/roblox/client/friends/b/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/roblox/client/friends/b/a$1;->a:Lcom/roblox/client/friends/b/a;

    invoke-static {v0}, Lcom/roblox/client/friends/b/a;->a(Lcom/roblox/client/friends/b/a;)Lcom/roblox/client/friends/b/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/friends/b/a$a;->l()V

    .line 52
    :cond_0
    return-void
.end method
