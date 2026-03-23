.class Lcom/roblox/client/login/mvp/a$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/login/mvp/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/mvp/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/mvp/a;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/roblox/client/login/mvp/a$8;->a:Lcom/roblox/client/login/mvp/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a$8;->a:Lcom/roblox/client/login/mvp/a;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/a;->e(Lcom/roblox/client/login/mvp/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a$8;->a:Lcom/roblox/client/login/mvp/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/login/mvp/a;->b(Lcom/roblox/client/login/mvp/a;Z)Z

    .line 237
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a$8;->a:Lcom/roblox/client/login/mvp/a;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/a;->f(Lcom/roblox/client/login/mvp/a;)Lcom/roblox/client/components/RbxEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->a()V

    .line 239
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 231
    return-void
.end method
