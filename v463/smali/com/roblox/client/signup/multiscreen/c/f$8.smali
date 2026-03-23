.class Lcom/roblox/client/signup/multiscreen/c/f$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 173
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f$8;->a:Lcom/roblox/client/signup/multiscreen/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f$8;->a:Lcom/roblox/client/signup/multiscreen/c/f;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/c/f;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/roblox/client/x;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 177
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f$8;->a:Lcom/roblox/client/signup/multiscreen/c/f;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/f;->a(Lcom/roblox/client/signup/multiscreen/c/f;)Lcom/roblox/client/signup/multiscreen/e/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/e;->i()V

    .line 179
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f$8;->a:Lcom/roblox/client/signup/multiscreen/c/f;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/f;->g(Lcom/roblox/client/signup/multiscreen/c/f;)Lcom/roblox/client/signup/multiscreen/c/f$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/roblox/client/signup/multiscreen/c/f$b;->n()V

    return-void
.end method
