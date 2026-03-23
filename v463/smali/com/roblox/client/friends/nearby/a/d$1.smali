.class Lcom/roblox/client/friends/nearby/a/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/nearby/a/d;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/friends/nearby/a/d;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/nearby/a/d;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/a/d$1;->a:Lcom/roblox/client/friends/nearby/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "nearbyContextMenu"

    const-string v0, "viewUserProfile"

    .line 59
    invoke-static {p1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/roblox/client/friends/nearby/a/d$1;->a:Lcom/roblox/client/friends/nearby/a/d;

    invoke-static {p1}, Lcom/roblox/client/friends/nearby/a/d;->b(Lcom/roblox/client/friends/nearby/a/d;)Lcom/roblox/client/friends/nearby/a/d$a;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/friends/nearby/a/d$1;->a:Lcom/roblox/client/friends/nearby/a/d;

    invoke-static {v0}, Lcom/roblox/client/friends/nearby/a/d;->a(Lcom/roblox/client/friends/nearby/a/d;)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/roblox/client/friends/nearby/a/d$a;->a(J)V

    .line 61
    iget-object p1, p0, Lcom/roblox/client/friends/nearby/a/d$1;->a:Lcom/roblox/client/friends/nearby/a/d;

    invoke-virtual {p1}, Lcom/roblox/client/friends/nearby/a/d;->b()V

    return-void
.end method
