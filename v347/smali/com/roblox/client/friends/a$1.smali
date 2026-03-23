.class Lcom/roblox/client/friends/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/friends/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/a;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/roblox/client/friends/a$1;->a:Lcom/roblox/client/friends/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/friends/a$1;->a:Lcom/roblox/client/friends/a;

    invoke-static {v0}, Lcom/roblox/client/friends/a;->b(Lcom/roblox/client/friends/a;)Lcom/roblox/client/friends/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/friends/a$1;->a:Lcom/roblox/client/friends/a;

    invoke-static {v1}, Lcom/roblox/client/friends/a;->a(Lcom/roblox/client/friends/a;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/roblox/client/friends/a$a;->e(I)V

    .line 70
    return-void
.end method
