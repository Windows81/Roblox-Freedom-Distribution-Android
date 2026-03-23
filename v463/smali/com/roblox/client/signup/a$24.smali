.class Lcom/roblox/client/signup/a$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/a;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/roblox/client/signup/a$24;->a:Lcom/roblox/client/signup/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 357
    iget-object p1, p0, Lcom/roblox/client/signup/a$24;->a:Lcom/roblox/client/signup/a;

    invoke-virtual {p1}, Lcom/roblox/client/signup/a;->p()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/roblox/client/signup/a$24;->a:Lcom/roblox/client/signup/a;

    invoke-static {p2}, Lcom/roblox/client/signup/a;->c(Lcom/roblox/client/signup/a;)Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/roblox/client/x;->a(Landroid/content/Context;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
