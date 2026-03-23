.class Lcom/roblox/client/resetpassword/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/resetpassword/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/resetpassword/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/resetpassword/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/resetpassword/a;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/roblox/client/resetpassword/a$4;->a:Lcom/roblox/client/resetpassword/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 183
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->e()V

    .line 184
    iget-object v0, p0, Lcom/roblox/client/resetpassword/a$4;->a:Lcom/roblox/client/resetpassword/a;

    invoke-virtual {v0}, Lcom/roblox/client/resetpassword/a;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/roblox/client/resetpassword/a$4;->a:Lcom/roblox/client/resetpassword/a;

    invoke-static {v0}, Lcom/roblox/client/resetpassword/a;->c(Lcom/roblox/client/resetpassword/a;)V

    .line 187
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/roblox/client/resetpassword/a$4;->a:Lcom/roblox/client/resetpassword/a;

    invoke-virtual {v0}, Lcom/roblox/client/resetpassword/a;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    if-eqz p1, :cond_1

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/resetpassword/a$4;->a:Lcom/roblox/client/resetpassword/a;

    invoke-static {v0, p1}, Lcom/roblox/client/resetpassword/a;->a(Lcom/roblox/client/resetpassword/a;Ljava/lang/String;)V

    .line 198
    :cond_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/resetpassword/a$4;->a:Lcom/roblox/client/resetpassword/a;

    .line 195
    invoke-virtual {v0, p2}, Lcom/roblox/client/resetpassword/a;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
