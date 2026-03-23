.class Lcom/roblox/client/signup/multiscreen/c/f$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/components/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/c/f;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/multiscreen/c/f;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/c/f;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f$7;->a:Lcom/roblox/client/signup/multiscreen/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f$7;->a:Lcom/roblox/client/signup/multiscreen/c/f;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/c/f;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/roblox/client/x;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 167
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f$7;->a:Lcom/roblox/client/signup/multiscreen/c/f;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/f;->f(Lcom/roblox/client/signup/multiscreen/c/f;)V

    return-void
.end method
