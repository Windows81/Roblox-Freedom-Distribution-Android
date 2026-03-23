.class Lcom/roblox/client/signup/multiscreen/c/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/c/f;->ar()V
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

    .line 315
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f$2;->a:Lcom/roblox/client/signup/multiscreen/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 326
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f$2;->a:Lcom/roblox/client/signup/multiscreen/c/f;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/f;->i(Lcom/roblox/client/signup/multiscreen/c/f;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 327
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f$2;->a:Lcom/roblox/client/signup/multiscreen/c/f;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/f;->k(Lcom/roblox/client/signup/multiscreen/c/f;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f$2;->a:Lcom/roblox/client/signup/multiscreen/c/f;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/c/f;->j(Lcom/roblox/client/signup/multiscreen/c/f;)Lcom/roblox/client/signup/multiscreen/c/f$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 328
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f$2;->a:Lcom/roblox/client/signup/multiscreen/c/f;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/f;->d(Lcom/roblox/client/signup/multiscreen/c/f;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f$2;->a:Lcom/roblox/client/signup/multiscreen/c/f;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/c/f;->l(Lcom/roblox/client/signup/multiscreen/c/f;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 329
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/f$2;->a:Lcom/roblox/client/signup/multiscreen/c/f;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/f;->d(Lcom/roblox/client/signup/multiscreen/c/f;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/f$2;->a:Lcom/roblox/client/signup/multiscreen/c/f;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/c/f;->l(Lcom/roblox/client/signup/multiscreen/c/f;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
