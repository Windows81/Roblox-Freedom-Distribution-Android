.class Lcom/roblox/client/signup/a$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/roblox/client/signup/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/a;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/roblox/client/signup/a$10;->b:Lcom/roblox/client/signup/a;

    iput-object p2, p0, Lcom/roblox/client/signup/a$10;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    .line 463
    iget-object v0, p0, Lcom/roblox/client/signup/a$10;->b:Lcom/roblox/client/signup/a;

    sget-object v1, Lcom/roblox/client/signup/a$d;->c:Lcom/roblox/client/signup/a$d;

    invoke-static {v0, v1}, Lcom/roblox/client/signup/a;->a(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$d;)Lcom/roblox/client/signup/a$d;

    .line 464
    iget-object v0, p0, Lcom/roblox/client/signup/a$10;->b:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->g(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/UsernameSignUpEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/signup/a$10;->b:Lcom/roblox/client/signup/a;

    invoke-static {v1}, Lcom/roblox/client/signup/a;->f(Lcom/roblox/client/signup/a;)Lcom/roblox/client/signup/a$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 465
    iget-object v0, p0, Lcom/roblox/client/signup/a$10;->b:Lcom/roblox/client/signup/a;

    iget-object v0, v0, Lcom/roblox/client/signup/a;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/roblox/client/signup/a$10;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 466
    iget-object v0, p0, Lcom/roblox/client/signup/a$10;->b:Lcom/roblox/client/signup/a;

    iget-object v0, v0, Lcom/roblox/client/signup/a;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/roblox/client/signup/a$10;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 467
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 455
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 459
    return-void
.end method
