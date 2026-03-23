.class Lcom/roblox/client/login/mvp/a$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/login/mvp/a;->au()V
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

    .line 273
    iput-object p1, p0, Lcom/roblox/client/login/mvp/a$12;->a:Lcom/roblox/client/login/mvp/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 284
    iget-object p1, p0, Lcom/roblox/client/login/mvp/a$12;->a:Lcom/roblox/client/login/mvp/a;

    invoke-static {p1}, Lcom/roblox/client/login/mvp/a;->c(Lcom/roblox/client/login/mvp/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 285
    iget-object p1, p0, Lcom/roblox/client/login/mvp/a$12;->a:Lcom/roblox/client/login/mvp/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/roblox/client/login/mvp/a;->b(Lcom/roblox/client/login/mvp/a;Z)Z

    .line 286
    iget-object p1, p0, Lcom/roblox/client/login/mvp/a$12;->a:Lcom/roblox/client/login/mvp/a;

    invoke-static {p1}, Lcom/roblox/client/login/mvp/a;->d(Lcom/roblox/client/login/mvp/a;)Lcom/roblox/client/components/RbxEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/components/RbxEditText;->a()V

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
