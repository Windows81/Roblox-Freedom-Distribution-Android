.class Lcom/roblox/client/friends/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/a/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/friends/a/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/a/a;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/roblox/client/friends/a/a$1;->a:Lcom/roblox/client/friends/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/roblox/client/friends/a/a$1;->a:Lcom/roblox/client/friends/a/a;

    invoke-static {v0}, Lcom/roblox/client/friends/a/a;->a(Lcom/roblox/client/friends/a/a;)Lcom/roblox/client/friends/a/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/friends/a/a$a;->k()V

    .line 66
    return-void
.end method
