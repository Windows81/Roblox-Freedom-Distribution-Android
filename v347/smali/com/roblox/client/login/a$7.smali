.class Lcom/roblox/client/login/a$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/login/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/a;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/roblox/client/login/a$7;->a:Lcom/roblox/client/login/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/roblox/client/login/a$7;->a:Lcom/roblox/client/login/a;

    invoke-static {v0}, Lcom/roblox/client/login/a;->e(Lcom/roblox/client/login/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/roblox/client/login/a$7;->a:Lcom/roblox/client/login/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/login/a;->b(Lcom/roblox/client/login/a;Z)Z

    .line 231
    iget-object v0, p0, Lcom/roblox/client/login/a$7;->a:Lcom/roblox/client/login/a;

    invoke-static {v0}, Lcom/roblox/client/login/a;->f(Lcom/roblox/client/login/a;)Lcom/roblox/client/components/RbxEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->a()V

    .line 233
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 225
    return-void
.end method
