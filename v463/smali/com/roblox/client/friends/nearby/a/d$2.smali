.class Lcom/roblox/client/friends/nearby/a/d$2;
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

    .line 65
    iput-object p1, p0, Lcom/roblox/client/friends/nearby/a/d$2;->a:Lcom/roblox/client/friends/nearby/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "nearbyContextMenu"

    const-string v0, "cancel"

    .line 68
    invoke-static {p1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/roblox/client/friends/nearby/a/d$2;->a:Lcom/roblox/client/friends/nearby/a/d;

    invoke-virtual {p1}, Lcom/roblox/client/friends/nearby/a/d;->b()V

    return-void
.end method
