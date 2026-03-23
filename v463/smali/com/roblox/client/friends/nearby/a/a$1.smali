.class Lcom/roblox/client/friends/nearby/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/nearby/a/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/friends/nearby/a/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/nearby/a/a;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/a/a$1;->a:Lcom/roblox/client/friends/nearby/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/roblox/client/friends/nearby/a/a$1;->a:Lcom/roblox/client/friends/nearby/a/a;

    invoke-static {p1}, Lcom/roblox/client/friends/nearby/a/a;->a(Lcom/roblox/client/friends/nearby/a/a;)Lcom/roblox/client/friends/nearby/a/a$a;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "nearbyPresentation"

    const-string v0, "start"

    .line 58
    invoke-static {p1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/roblox/client/friends/nearby/a/a$1;->a:Lcom/roblox/client/friends/nearby/a/a;

    invoke-static {p1}, Lcom/roblox/client/friends/nearby/a/a;->a(Lcom/roblox/client/friends/nearby/a/a;)Lcom/roblox/client/friends/nearby/a/a$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/roblox/client/friends/nearby/a/a$a;->p()V

    :cond_0
    return-void
.end method
