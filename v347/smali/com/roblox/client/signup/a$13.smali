.class Lcom/roblox/client/signup/a$13;
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
    .line 487
    iput-object p1, p0, Lcom/roblox/client/signup/a$13;->b:Lcom/roblox/client/signup/a;

    iput-object p2, p0, Lcom/roblox/client/signup/a$13;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    .line 500
    iget-object v0, p0, Lcom/roblox/client/signup/a$13;->b:Lcom/roblox/client/signup/a;

    sget-object v1, Lcom/roblox/client/signup/a$d;->c:Lcom/roblox/client/signup/a$d;

    invoke-static {v0, v1}, Lcom/roblox/client/signup/a;->b(Lcom/roblox/client/signup/a;Lcom/roblox/client/signup/a$d;)Lcom/roblox/client/signup/a$d;

    .line 501
    iget-object v0, p0, Lcom/roblox/client/signup/a$13;->b:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->i(Lcom/roblox/client/signup/a;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/signup/a$13;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 502
    iget-object v0, p0, Lcom/roblox/client/signup/a$13;->b:Lcom/roblox/client/signup/a;

    invoke-static {v0}, Lcom/roblox/client/signup/a;->i(Lcom/roblox/client/signup/a;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/signup/a$13;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 503
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 491
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 496
    return-void
.end method
