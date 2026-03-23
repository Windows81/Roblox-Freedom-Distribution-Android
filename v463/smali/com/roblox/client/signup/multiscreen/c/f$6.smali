.class Lcom/roblox/client/signup/multiscreen/c/f$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 145
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f$6;->a:Lcom/roblox/client/signup/multiscreen/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 148
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f$6;->a:Lcom/roblox/client/signup/multiscreen/c/f;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/f;->a(Lcom/roblox/client/signup/multiscreen/c/f;)Lcom/roblox/client/signup/multiscreen/e/e;

    move-result-object p1

    const-string v0, "username"

    invoke-virtual {p1, v0, p2}, Lcom/roblox/client/signup/multiscreen/e/e;->a(Ljava/lang/String;Z)V

    .line 150
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f$6;->a:Lcom/roblox/client/signup/multiscreen/c/f;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/f;->a(Lcom/roblox/client/signup/multiscreen/c/f;)Lcom/roblox/client/signup/multiscreen/e/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/e;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 151
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f$6;->a:Lcom/roblox/client/signup/multiscreen/c/f;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/f;->d(Lcom/roblox/client/signup/multiscreen/c/f;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_0

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f$6;->a:Lcom/roblox/client/signup/multiscreen/c/f;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/f;->e(Lcom/roblox/client/signup/multiscreen/c/f;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 154
    iget-object p2, p0, Lcom/roblox/client/signup/multiscreen/c/f$6;->a:Lcom/roblox/client/signup/multiscreen/c/f;

    invoke-static {p2}, Lcom/roblox/client/signup/multiscreen/c/f;->a(Lcom/roblox/client/signup/multiscreen/c/f;)Lcom/roblox/client/signup/multiscreen/e/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/roblox/client/signup/multiscreen/e/e;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 155
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f$6;->a:Lcom/roblox/client/signup/multiscreen/c/f;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/f;->d(Lcom/roblox/client/signup/multiscreen/c/f;)Landroid/widget/EditText;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
