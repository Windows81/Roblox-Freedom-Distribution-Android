.class Lcom/roblox/client/login/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/i/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/login/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/b;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/roblox/client/login/b$1;->a:Lcom/roblox/client/login/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 95
    const-string v0, "LoginHelper"

    const-string v1, "onLoginSuccess: Will finish the view as success..."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/roblox/client/login/b$1;->a:Lcom/roblox/client/login/b;

    invoke-static {v0}, Lcom/roblox/client/login/b;->a(Lcom/roblox/client/login/b;)Lcom/roblox/client/login/c;

    move-result-object v0

    const/16 v1, 0x68

    invoke-interface {v0, v1}, Lcom/roblox/client/login/c;->d(I)V

    .line 97
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 120
    const-string v0, "LoginHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoginFailure: errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". ErrorMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/roblox/client/login/b$1;->a:Lcom/roblox/client/login/b;

    invoke-static {v0}, Lcom/roblox/client/login/b;->a(Lcom/roblox/client/login/b;)Lcom/roblox/client/login/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/login/c;->k()V

    .line 125
    packed-switch p1, :pswitch_data_0

    .line 157
    :pswitch_0
    iget-object v0, p0, Lcom/roblox/client/login/b$1;->a:Lcom/roblox/client/login/b;

    invoke-static {v0}, Lcom/roblox/client/login/b;->a(Lcom/roblox/client/login/b;)Lcom/roblox/client/login/c;

    move-result-object v0

    const v1, 0x7f0e012f

    invoke-interface {v0, v1}, Lcom/roblox/client/login/c;->e(I)V

    .line 160
    :goto_0
    return-void

    .line 127
    :pswitch_1
    iget-object v0, p0, Lcom/roblox/client/login/b$1;->a:Lcom/roblox/client/login/b;

    invoke-static {v0}, Lcom/roblox/client/login/b;->a(Lcom/roblox/client/login/b;)Lcom/roblox/client/login/c;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/login/b$1;->a:Lcom/roblox/client/login/b;

    invoke-static {v1}, Lcom/roblox/client/login/b;->b(Lcom/roblox/client/login/b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/roblox/client/login/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :pswitch_2
    iget-object v0, p0, Lcom/roblox/client/login/b$1;->a:Lcom/roblox/client/login/b;

    invoke-static {v0}, Lcom/roblox/client/login/b;->a(Lcom/roblox/client/login/b;)Lcom/roblox/client/login/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/login/c;->m()V

    goto :goto_0

    .line 135
    :pswitch_3
    iget-object v0, p0, Lcom/roblox/client/login/b$1;->a:Lcom/roblox/client/login/b;

    invoke-static {v0}, Lcom/roblox/client/login/b;->a(Lcom/roblox/client/login/b;)Lcom/roblox/client/login/c;

    move-result-object v0

    const v1, 0x7f0e004c

    invoke-interface {v0, v1}, Lcom/roblox/client/login/c;->e(I)V

    goto :goto_0

    .line 139
    :pswitch_4
    iget-object v0, p0, Lcom/roblox/client/login/b$1;->a:Lcom/roblox/client/login/b;

    invoke-static {v0}, Lcom/roblox/client/login/b;->a(Lcom/roblox/client/login/b;)Lcom/roblox/client/login/c;

    move-result-object v0

    const v1, 0x7f0e0041

    invoke-interface {v0, v1}, Lcom/roblox/client/login/c;->e(I)V

    goto :goto_0

    .line 143
    :pswitch_5
    iget-object v0, p0, Lcom/roblox/client/login/b$1;->a:Lcom/roblox/client/login/b;

    invoke-static {v0}, Lcom/roblox/client/login/b;->a(Lcom/roblox/client/login/b;)Lcom/roblox/client/login/c;

    move-result-object v0

    const v1, 0x7f0e004b

    invoke-interface {v0, v1}, Lcom/roblox/client/login/c;->e(I)V

    goto :goto_0

    .line 147
    :pswitch_6
    iget-object v0, p0, Lcom/roblox/client/login/b$1;->a:Lcom/roblox/client/login/b;

    invoke-static {v0}, Lcom/roblox/client/login/b;->a(Lcom/roblox/client/login/b;)Lcom/roblox/client/login/c;

    move-result-object v0

    const v1, 0x7f0e0052

    invoke-interface {v0, v1}, Lcom/roblox/client/login/c;->e(I)V

    goto :goto_0

    .line 151
    :pswitch_7
    iget-object v0, p0, Lcom/roblox/client/login/b$1;->a:Lcom/roblox/client/login/b;

    invoke-static {v0}, Lcom/roblox/client/login/b;->a(Lcom/roblox/client/login/b;)Lcom/roblox/client/login/c;

    move-result-object v0

    const v1, 0x7f0e0057

    invoke-interface {v0, v1}, Lcom/roblox/client/login/c;->e(I)V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch -0x3f0
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 113
    const-string v0, "LoginHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPasswordResetRequired: params = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/roblox/client/login/b$1;->a:Lcom/roblox/client/login/b;

    invoke-static {v0}, Lcom/roblox/client/login/b;->a(Lcom/roblox/client/login/b;)Lcom/roblox/client/login/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/login/c;->k()V

    .line 115
    iget-object v0, p0, Lcom/roblox/client/login/b$1;->a:Lcom/roblox/client/login/b;

    invoke-static {v0}, Lcom/roblox/client/login/b;->a(Lcom/roblox/client/login/b;)Lcom/roblox/client/login/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/roblox/client/login/c;->a(Landroid/os/Bundle;)V

    .line 116
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/roblox/client/login/b$1;->a:Lcom/roblox/client/login/b;

    invoke-static {v0}, Lcom/roblox/client/login/b;->a(Lcom/roblox/client/login/b;)Lcom/roblox/client/login/c;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/roblox/client/login/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "LoginHelper"

    const-string v1, "onPasswordResetRequested: "

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/roblox/client/login/b$1;->a:Lcom/roblox/client/login/b;

    invoke-static {v0}, Lcom/roblox/client/login/b;->a(Lcom/roblox/client/login/b;)Lcom/roblox/client/login/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/login/c;->k()V

    .line 108
    iget-object v0, p0, Lcom/roblox/client/login/b$1;->a:Lcom/roblox/client/login/b;

    invoke-static {v0}, Lcom/roblox/client/login/b;->a(Lcom/roblox/client/login/b;)Lcom/roblox/client/login/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/login/c;->l()V

    .line 109
    return-void
.end method
