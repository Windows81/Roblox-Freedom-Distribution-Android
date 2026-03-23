.class Lcom/roblox/client/signup/multiscreen/c/d$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/c/d;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/multiscreen/c/d;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/c/d;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d$13;->a:Lcom/roblox/client/signup/multiscreen/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d$13;->a:Lcom/roblox/client/signup/multiscreen/c/d;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/d;->b(Lcom/roblox/client/signup/multiscreen/c/d;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 156
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/d$13;->a:Lcom/roblox/client/signup/multiscreen/c/d;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/d;->d(Lcom/roblox/client/signup/multiscreen/c/d;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/roblox/client/x;->b(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
