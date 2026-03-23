.class Lcom/roblox/client/login/mvp/LoginPresenter$5;
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

    .line 363
    iput-object p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 366
    invoke-static {}, Lcom/roblox/client/b;->bZ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->a(Lcom/roblox/client/login/mvp/LoginPresenter;)V

    goto :goto_0

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-virtual {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->f()V

    :goto_0
    return-void
.end method

.method public a(Lcom/roblox/client/login/mvp/c;)V
    .locals 3

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoginFailure: errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/roblox/client/login/mvp/c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.authlogin"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-virtual {v0, p1}, Lcom/roblox/client/login/mvp/LoginPresenter;->a(Lcom/roblox/client/login/mvp/c;)V

    .line 435
    iget p1, p1, Lcom/roblox/client/login/mvp/c;->c:I

    const/16 v0, -0x7e5

    if-eq p1, v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-virtual {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/login/mvp/b$c;->u()V

    :cond_0
    const-string v0, "PhoneNumber"

    const-string v1, "Email"

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 518
    :pswitch_0
    iget-object p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-virtual {p1}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_SystemErrorTryLater:I

    invoke-interface {p1, v0}, Lcom/roblox/client/login/mvp/b$c;->g(I)V

    goto/16 :goto_2

    .line 442
    :pswitch_1
    iget-object p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-virtual {p1}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$j;->Authentication_Login_Response_MissingUsernamePasswordError:I

    invoke-interface {p1, v0}, Lcom/roblox/client/login/mvp/b$c;->g(I)V

    goto/16 :goto_2

    .line 446
    :pswitch_2
    iget-object p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {p1, v2}, Lcom/roblox/client/login/mvp/LoginPresenter;->a(Lcom/roblox/client/login/mvp/LoginPresenter;Z)Z

    .line 447
    iget-object p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-virtual {p1}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$j;->Authentication_Login_Response_ErrorLoginWithUsername:I

    invoke-interface {p1, v0}, Lcom/roblox/client/login/mvp/b$c;->g(I)V

    goto/16 :goto_2

    .line 451
    :pswitch_3
    sget p1, Lcom/roblox/client/o$j;->Authentication_Login_Response_IncorrectUsernamePassword:I

    .line 453
    iget-object v2, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    iget-object v2, v2, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$a;

    invoke-interface {v2}, Lcom/roblox/client/login/mvp/b$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    sget p1, Lcom/roblox/client/o$j;->Authentication_Login_Response_IncorrectEmailPassword:I

    goto :goto_0

    .line 455
    :cond_1
    iget-object v1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    iget-object v1, v1, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$a;

    invoke-interface {v1}, Lcom/roblox/client/login/mvp/b$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 456
    sget p1, Lcom/roblox/client/o$j;->Authentication_Login_Response_IncorrectPhonePassword:I

    .line 459
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->c(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {v1}, Lcom/roblox/client/login/mvp/LoginPresenter;->b(Lcom/roblox/client/login/mvp/LoginPresenter;)Lcom/roblox/client/g/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/roblox/client/g/a;->a(Lcom/roblox/client/g/c;)V

    .line 460
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-virtual {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/roblox/client/login/mvp/b$c;->f(I)V

    goto/16 :goto_2

    .line 468
    :pswitch_4
    iget-object p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-virtual {p1}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$j;->Authentication_Login_Response_LoginIssueErrorContactSupport:I

    invoke-interface {p1, v0}, Lcom/roblox/client/login/mvp/b$c;->g(I)V

    goto/16 :goto_2

    .line 472
    :pswitch_5
    iget-object p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-virtual {p1}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$j;->Authentication_Login_Response_AccountIssueErrorContactSupport:I

    invoke-interface {p1, v0}, Lcom/roblox/client/login/mvp/b$c;->g(I)V

    goto/16 :goto_2

    .line 476
    :pswitch_6
    iget-object p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {p1, v2}, Lcom/roblox/client/login/mvp/LoginPresenter;->a(Lcom/roblox/client/login/mvp/LoginPresenter;Z)Z

    .line 477
    sget p1, Lcom/roblox/client/o$j;->Authentication_Login_Response_ErrorLoginWithUsername:I

    .line 479
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    iget-object v0, v0, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$a;

    invoke-interface {v0}, Lcom/roblox/client/login/mvp/b$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 480
    sget p1, Lcom/roblox/client/o$j;->Authentication_Login_Response_MultipleAccountEmailLoginWithUsername:I

    .line 483
    :cond_3
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-virtual {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/roblox/client/login/mvp/b$c;->h(I)V

    goto :goto_2

    .line 487
    :pswitch_7
    iget-object p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {p1, v2}, Lcom/roblox/client/login/mvp/LoginPresenter;->a(Lcom/roblox/client/login/mvp/LoginPresenter;Z)Z

    .line 488
    sget p1, Lcom/roblox/client/o$j;->Authentication_Login_Response_ErrorLoginWithUsername:I

    .line 490
    iget-object v2, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    iget-object v2, v2, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$a;

    invoke-interface {v2}, Lcom/roblox/client/login/mvp/b$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 491
    sget p1, Lcom/roblox/client/o$j;->Authentication_Login_Response_UnverifiedEmailLoginWithUsername:I

    goto :goto_1

    .line 492
    :cond_4
    iget-object v1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    iget-object v1, v1, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$a;

    invoke-interface {v1}, Lcom/roblox/client/login/mvp/b$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 493
    sget p1, Lcom/roblox/client/o$j;->Authentication_Login_Response_UnverifiedEmailPhoneWithUsername:I

    .line 496
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-virtual {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/roblox/client/login/mvp/b$c;->h(I)V

    goto :goto_2

    .line 508
    :pswitch_8
    iget-object p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-virtual {p1}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$j;->Authentication_Login_Response_UnableToLogIn:I

    invoke-interface {p1, v0}, Lcom/roblox/client/login/mvp/b$c;->g(I)V

    goto :goto_2

    .line 504
    :pswitch_9
    iget-object p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-virtual {p1}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$j;->Authentication_Login_Response_SystemErrorTryLaterContactSupport:I

    invoke-interface {p1, v0}, Lcom/roblox/client/login/mvp/b$c;->g(I)V

    goto :goto_2

    .line 464
    :pswitch_a
    iget-object p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-static {p1}, Lcom/roblox/client/login/mvp/LoginPresenter;->d(Lcom/roblox/client/login/mvp/LoginPresenter;)V

    goto :goto_2

    .line 500
    :pswitch_b
    iget-object p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-virtual {p1}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$j;->Authentication_Login_Response_GlobalAppAccessError:I

    invoke-interface {p1, v0}, Lcom/roblox/client/login/mvp/b$c;->g(I)V

    :goto_2
    :pswitch_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x7e7
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-virtual {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/login/mvp/b$c;->u()V

    .line 376
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-virtual {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/roblox/client/login/mvp/b$c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-static {}, Lcom/roblox/client/b;->bZ()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 379
    iget-object p1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-virtual {p1}, Lcom/roblox/client/login/mvp/LoginPresenter;->d()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "rbx.authlogin"

    const-string v1, "onPasswordResetRequested: "

    .line 385
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-virtual {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/login/mvp/b$c;->u()V

    .line 387
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-virtual {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/login/mvp/b$c;->v()V

    return-void
.end method

.method public c()V
    .locals 4

    const-string v0, "rbx.authlogin"

    const-string v1, "onTooManyFailedCredentials."

    .line 392
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-virtual {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/login/mvp/b$c;->u()V

    .line 395
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 396
    sget v1, Lcom/roblox/client/o$j;->Authentication_Login_Response_PleaseTryAgain:I

    const-string v2, "DialogTitle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 397
    sget v1, Lcom/roblox/client/o$j;->Authentication_Login_Action_ForgotPassword:I

    const-string v2, "PositiveButton"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 398
    sget v1, Lcom/roblox/client/o$j;->CommonUI_Features_Action_Ok:I

    const-string v2, "NegativeButton"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 400
    sget v1, Lcom/roblox/client/o$j;->Authentication_Login_Response_TooManyAttemptsMessageForUsername:I

    .line 402
    iget-object v2, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    iget-object v2, v2, Lcom/roblox/client/login/mvp/LoginPresenter;->a:Lcom/roblox/client/login/mvp/b$a;

    invoke-interface {v2}, Lcom/roblox/client/login/mvp/b$a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PhoneNumber"

    .line 403
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 404
    sget v1, Lcom/roblox/client/o$j;->Authentication_Login_Response_TooManyAttemptsMessageForPhone:I

    goto :goto_0

    :cond_0
    const-string v3, "Email"

    .line 405
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 406
    sget v1, Lcom/roblox/client/o$j;->Authentication_Login_Response_TooManyAttemptsMessageForEmail:I

    :cond_1
    :goto_0
    const-string v2, "DialogMessage"

    .line 409
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "CallContext"

    const-string v2, "WrongCredentialsForgotPassword"

    .line 410
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-virtual {v1}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/roblox/client/login/mvp/b$c;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public d()V
    .locals 3

    const-string v0, "rbx.authlogin"

    const-string v1, "onFloodCheck."

    .line 416
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-virtual {v0}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/login/mvp/b$c;->u()V

    .line 419
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 420
    sget v1, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_TooManyAttemptsText:I

    const-string v2, "DialogTitle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 421
    sget v1, Lcom/roblox/client/o$j;->Authentication_ResetPassword_Label_ResetPassword:I

    const-string v2, "PositiveButton"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 422
    sget v1, Lcom/roblox/client/o$j;->CommonUI_Features_Action_Ok:I

    const-string v2, "NegativeButton"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 423
    sget v1, Lcom/roblox/client/o$j;->Authentication_Login_Response_TooManyAttemptsMessage:I

    const-string v2, "DialogMessage"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "CallContext"

    const-string v2, "FloodcheckedResetPassword"

    .line 424
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lcom/roblox/client/login/mvp/LoginPresenter$5;->a:Lcom/roblox/client/login/mvp/LoginPresenter;

    invoke-virtual {v1}, Lcom/roblox/client/login/mvp/LoginPresenter;->e()Lcom/roblox/client/login/mvp/b$c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/roblox/client/login/mvp/b$c;->a(Landroid/os/Bundle;)V

    return-void
.end method
