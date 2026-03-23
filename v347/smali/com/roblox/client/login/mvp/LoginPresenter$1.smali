.class Lcom/roblox/client/login/mvp/LoginPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/login/mvp/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/login/mvp/LoginPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/mvp/LoginPresenter;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/mvp/LoginPresenter;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->a(Lcom/roblox/client/login/mvp/LoginPresenter;)V

    .line 141
    return-void
.end method

.method public a(Lcom/roblox/client/login/mvp/c;)V
    .locals 5

    .prologue
    const v0, 0x7f0e0042

    const/4 v4, 0x1

    .line 206
    const-string v1, "rbx.authlogin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoginFailure: errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/roblox/client/login/mvp/c;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v1, p1}, Lcom/roblox/client/login/mvp/LoginPresenter;->a(Lcom/roblox/client/login/mvp/LoginPresenter;Lcom/roblox/client/login/mvp/c;)V

    .line 210
    iget-object v1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v1}, Lcom/roblox/client/login/mvp/LoginPresenter;->b(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$c;

    move-result-object v1

    invoke-interface {v1}, Lcom/roblox/client/login/mvp/b$c;->k()V

    .line 212
    iget v1, p1, Lcom/roblox/client/login/mvp/c;->c:I

    .line 213
    packed-switch v1, :pswitch_data_0

    .line 286
    :pswitch_0
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->b(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    const v1, 0x7f0e012f

    invoke-interface {v0, v1}, Lcom/roblox/client/login/mvp/b$c;->f(I)V

    .line 289
    :goto_0
    :pswitch_1
    return-void

    .line 215
    :pswitch_2
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->b(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    const v1, 0x7f0e004c

    invoke-interface {v0, v1}, Lcom/roblox/client/login/mvp/b$c;->f(I)V

    goto :goto_0

    .line 219
    :pswitch_3
    iget-object v1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v1, v4}, Lcom/roblox/client/login/mvp/LoginPresenter;->a(Lcom/roblox/client/login/mvp/LoginPresenter;Z)Z

    .line 220
    iget-object v1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v1}, Lcom/roblox/client/login/mvp/LoginPresenter;->b(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/roblox/client/login/mvp/b$c;->f(I)V

    goto :goto_0

    .line 224
    :pswitch_4
    const v0, 0x7f0e004a

    .line 226
    const-string v1, "Email"

    iget-object v2, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v2}, Lcom/roblox/client/login/mvp/LoginPresenter;->c(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/roblox/client/login/mvp/b$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    const v0, 0x7f0e0046

    .line 232
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v1}, Lcom/roblox/client/login/mvp/LoginPresenter;->b(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/roblox/client/login/mvp/b$c;->e(I)V

    goto :goto_0

    .line 228
    :cond_1
    const-string v1, "PhoneNumber"

    iget-object v2, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v2}, Lcom/roblox/client/login/mvp/LoginPresenter;->c(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/roblox/client/login/mvp/b$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    const v0, 0x7f0e0048

    goto :goto_1

    .line 236
    :pswitch_5
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->b(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v1}, Lcom/roblox/client/login/mvp/LoginPresenter;->c(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/roblox/client/login/mvp/b$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/roblox/client/login/mvp/b$c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :pswitch_6
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->b(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    const v1, 0x7f0e004b

    invoke-interface {v0, v1}, Lcom/roblox/client/login/mvp/b$c;->f(I)V

    goto :goto_0

    .line 244
    :pswitch_7
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->b(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    const v1, 0x7f0e0041

    invoke-interface {v0, v1}, Lcom/roblox/client/login/mvp/b$c;->f(I)V

    goto/16 :goto_0

    .line 248
    :pswitch_8
    iget-object v1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v1, v4}, Lcom/roblox/client/login/mvp/LoginPresenter;->a(Lcom/roblox/client/login/mvp/LoginPresenter;Z)Z

    .line 251
    const-string v1, "Email"

    iget-object v2, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v2}, Lcom/roblox/client/login/mvp/LoginPresenter;->c(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/roblox/client/login/mvp/b$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    const v0, 0x7f0e004d

    .line 255
    :cond_2
    iget-object v1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v1}, Lcom/roblox/client/login/mvp/LoginPresenter;->b(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/roblox/client/login/mvp/b$c;->g(I)V

    goto/16 :goto_0

    .line 259
    :pswitch_9
    iget-object v1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v1, v4}, Lcom/roblox/client/login/mvp/LoginPresenter;->a(Lcom/roblox/client/login/mvp/LoginPresenter;Z)Z

    .line 262
    const-string v1, "Email"

    iget-object v2, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v2}, Lcom/roblox/client/login/mvp/LoginPresenter;->c(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/roblox/client/login/mvp/b$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 263
    const v0, 0x7f0e0058

    .line 268
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v1}, Lcom/roblox/client/login/mvp/LoginPresenter;->b(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/roblox/client/login/mvp/b$c;->g(I)V

    goto/16 :goto_0

    .line 264
    :cond_4
    const-string v1, "PhoneNumber"

    iget-object v2, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v2}, Lcom/roblox/client/login/mvp/LoginPresenter;->c(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/roblox/client/login/mvp/b$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 265
    const v0, 0x7f0e0059

    goto :goto_2

    .line 272
    :pswitch_a
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->b(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    const v1, 0x7f0e0052

    invoke-interface {v0, v1}, Lcom/roblox/client/login/mvp/b$c;->f(I)V

    goto/16 :goto_0

    .line 276
    :pswitch_b
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->b(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    const v1, 0x7f0e0057

    invoke-interface {v0, v1}, Lcom/roblox/client/login/mvp/b$c;->f(I)V

    goto/16 :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch -0x7e6
        :pswitch_1
        :pswitch_5
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->b(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/login/mvp/b$c;->k()V

    .line 146
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->b(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/roblox/client/login/mvp/b$c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "rbx.authlogin"

    const-string v1, "onPasswordResetRequested: "

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->b(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/login/mvp/b$c;->k()V

    .line 153
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->b(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/login/mvp/b$c;->l()V

    .line 154
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 158
    const-string v0, "rbx.authlogin"

    const-string v1, "onTooManyFailedCredentials."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->b(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/login/mvp/b$c;->k()V

    .line 161
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 162
    const-string v0, "DialogTitle"

    const v2, 0x7f0e0050

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 163
    const-string v0, "PositiveButton"

    const v2, 0x7f0e002b

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    const-string v0, "NegativeButton"

    const v2, 0x7f0e00ed

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    const-string v0, "CallContext"

    const-string v2, "WrongCredentialsForgotPassword"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const v0, 0x7f0e0049

    .line 169
    iget-object v2, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v2}, Lcom/roblox/client/login/mvp/LoginPresenter;->c(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/roblox/client/login/mvp/b$a;->b()Ljava/lang/String;

    move-result-object v2

    .line 170
    const-string v3, "PhoneNumber"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    const v0, 0x7f0e0047

    .line 176
    :cond_0
    :goto_0
    const-string v2, "DialogMessage"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->b(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/roblox/client/login/mvp/b$c;->a(Landroid/os/Bundle;)V

    .line 178
    return-void

    .line 172
    :cond_1
    const-string v3, "Email"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    const v0, 0x7f0e0045

    goto :goto_0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 182
    const-string v0, "rbx.authlogin"

    const-string v1, "onTooManyFailedCredentials."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->b(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/login/mvp/b$c;->k()V

    .line 185
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 186
    const-string v0, "DialogTitle"

    const v2, 0x7f0e0130

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    const-string v0, "PositiveButton"

    const v2, 0x7f0e005e

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    const-string v0, "NegativeButton"

    const v2, 0x7f0e00ed

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    const-string v0, "CallContext"

    const-string v2, "FloodcheckedResetPassword"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const v0, 0x7f0e0056

    .line 193
    iget-object v2, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v2}, Lcom/roblox/client/login/mvp/LoginPresenter;->c(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/roblox/client/login/mvp/b$a;->b()Ljava/lang/String;

    move-result-object v2

    .line 194
    const-string v3, "PhoneNumber"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    const v0, 0x7f0e0055

    .line 200
    :cond_0
    :goto_0
    const-string v2, "DialogMessage"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$1;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->b(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/roblox/client/login/mvp/b$c;->a(Landroid/os/Bundle;)V

    .line 202
    return-void

    .line 196
    :cond_1
    const-string v3, "Email"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    const v0, 0x7f0e0054

    goto :goto_0
.end method
