.class Lcom/roblox/client/friends/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/friends/b;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/friends/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/friends/b;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/roblox/client/friends/b$1;->a:Lcom/roblox/client/friends/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "appSettings"

    .line 72
    invoke-static {p1, p1}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/roblox/client/friends/b$1;->a:Lcom/roblox/client/friends/b;

    invoke-static {p1}, Lcom/roblox/client/friends/b;->b(Lcom/roblox/client/friends/b;)Lcom/roblox/client/friends/b$a;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/friends/b$1;->a:Lcom/roblox/client/friends/b;

    invoke-static {v0}, Lcom/roblox/client/friends/b;->a(Lcom/roblox/client/friends/b;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/roblox/client/friends/b$a;->f(I)V

    return-void
.end method
