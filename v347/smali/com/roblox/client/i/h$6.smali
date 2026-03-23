.class Lcom/roblox/client/i/h$6;
.super Lcom/roblox/client/http/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/i/h;->b(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/i/h$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/i/h$c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/roblox/client/i/h;


# direct methods
.method constructor <init>(Lcom/roblox/client/i/h;Lcom/roblox/client/i/h$c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/roblox/client/i/h$6;->c:Lcom/roblox/client/i/h;

    iput-object p2, p0, Lcom/roblox/client/i/h$6;->a:Lcom/roblox/client/i/h$c;

    iput-object p3, p0, Lcom/roblox/client/i/h$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/roblox/client/http/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/http/j;)V
    .locals 11

    .prologue
    .line 490
    const/4 v5, 0x0

    .line 491
    const/4 v4, 0x0

    .line 492
    const/4 v2, 0x0

    .line 493
    const/4 v3, 0x0

    .line 495
    invoke-virtual {p1}, Lcom/roblox/client/http/j;->b()I

    move-result v6

    .line 496
    const/16 v0, 0xc8

    if-ne v6, v0, :cond_5

    .line 497
    iget-object v0, p0, Lcom/roblox/client/i/h$6;->c:Lcom/roblox/client/i/h;

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->e()V

    .line 498
    const/4 v1, 0x0

    .line 500
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    move-object v4, v0

    move v0, v2

    move-object v2, v5

    .line 508
    :goto_0
    if-eqz v4, :cond_0

    .line 509
    const-string v5, "message"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 510
    const-string v7, "userId"

    const-wide/16 v8, -0x1

    invoke-virtual {v4, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 511
    const-string v7, "TwoStepverificationRequired"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 512
    const-string v5, "rbx.login"

    const-string v7, "callLoginWithApi(). code=200. requires 2 step verification"

    invoke-static {v5, v7}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :try_start_1
    const-string v5, "tl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 517
    const-string v7, "mediaType"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 519
    iget-object v7, p0, Lcom/roblox/client/i/h$6;->a:Lcom/roblox/client/i/h$c;

    iget-object v8, p0, Lcom/roblox/client/i/h$6;->b:Ljava/lang/String;

    invoke-interface {v7, v5, v4, v8}, Lcom/roblox/client/i/h$c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    move-object v10, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v0

    move-object v0, v10

    .line 667
    :goto_2
    if-eqz v1, :cond_1

    .line 668
    iget-object v4, p0, Lcom/roblox/client/i/h$6;->a:Lcom/roblox/client/i/h$c;

    invoke-interface {v4, v1, v0}, Lcom/roblox/client/i/h$c;->a(ILjava/lang/String;)V

    .line 671
    :cond_1
    if-eqz v3, :cond_2

    .line 672
    const-string v0, "rbx.login"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callLoginWithApi() code:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " action:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v0, p0, Lcom/roblox/client/i/h$6;->c:Lcom/roblox/client/i/h;

    invoke-static {v0, v3, v2, p1}, Lcom/roblox/client/i/h;->a(Lcom/roblox/client/i/h;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/http/j;)V

    .line 675
    :cond_2
    return-void

    .line 501
    :catch_0
    move-exception v0

    .line 502
    const-string v0, "rbx.login"

    const-string v2, "callLoginWithApi. Error parsing server response on 200."

    invoke-static {v0, v2}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/16 v0, -0x3e8

    .line 504
    const-string v2, "Failure2SVJSON"

    .line 505
    const-string v4, "Android-AppLogin-Failure-UnknownError"

    move-object v10, v1

    move-object v1, v4

    move-object v4, v10

    goto :goto_0

    .line 520
    :catch_1
    move-exception v0

    .line 521
    const-string v0, "rbx.login"

    const-string v1, "callLoginWithApi. Error parsing 2SV response."

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/16 v0, -0x3e8

    .line 523
    const-string v2, "FailureJSON"

    .line 524
    const-string v1, "Android-AppLogin-Failure-UnknownError"

    goto :goto_1

    .line 527
    :cond_3
    const-wide/16 v4, -0x1

    cmp-long v4, v8, v4

    if-nez v4, :cond_4

    .line 530
    const-string v0, "rbx.login"

    const-string v1, "callLoginWithApi() Error no user ID"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const/16 v0, -0x3e8

    .line 532
    const-string v2, "MissingUserInfo"

    .line 533
    const-string v1, "Android-AppLogin-Failure-UnknownError"

    goto :goto_1

    .line 536
    :cond_4
    const-string v4, "rbx.login"

    const-string v5, "callLoginWithApi(). code=200."

    invoke-static {v4, v5}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v4, p0, Lcom/roblox/client/i/h$6;->c:Lcom/roblox/client/i/h;

    invoke-virtual {v4, v8, v9}, Lcom/roblox/client/i/h;->b(J)V

    .line 538
    iget-object v4, p0, Lcom/roblox/client/i/h$6;->a:Lcom/roblox/client/i/h$c;

    invoke-interface {v4}, Lcom/roblox/client/i/h$c;->a()V

    goto :goto_1

    .line 543
    :cond_5
    const/4 v1, 0x0

    .line 545
    :try_start_2
    new-instance v0, Lcom/roblox/client/i/h$d;

    invoke-virtual {p1}, Lcom/roblox/client/http/j;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/roblox/client/i/h$d;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v4

    move-object v4, v0

    move v0, v2

    move-object v2, v5

    .line 553
    :goto_3
    if-eqz v4, :cond_7

    .line 554
    sparse-switch v6, :sswitch_data_0

    .line 659
    const/16 v0, -0x3e8

    .line 660
    const-string v2, "FailureUnknownError"

    .line 661
    const-string v1, "Android-AppLogin-Failure-UnknownError"

    move-object v10, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v0

    move-object v0, v10

    goto/16 :goto_2

    .line 546
    :catch_2
    move-exception v0

    .line 548
    const/16 v0, -0x3e8

    .line 549
    const-string v4, "FailureJSON"

    .line 550
    const-string v2, "Android-AppLogin-Failure-UnknownError"

    move-object v10, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v10

    goto :goto_3

    .line 557
    :sswitch_0
    const/16 v1, -0x3e9

    .line 558
    iget-object v0, v4, Lcom/roblox/client/i/h$d;->b:Ljava/lang/String;

    .line 559
    const-string v3, "FailureInvalidUsernamePassword"

    .line 560
    const-string v2, "Android-AppLogin-Failure-400-BadRequest"

    goto/16 :goto_2

    .line 563
    :sswitch_1
    iget v1, v4, Lcom/roblox/client/i/h$d;->a:I

    .line 565
    packed-switch v1, :pswitch_data_0

    .line 617
    :pswitch_0
    const/16 v0, -0x3e8

    .line 618
    const-string v2, "FailureUnknownError"

    .line 619
    const-string v1, "Android-AppLogin-Failure-UnknownError"

    move-object v10, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v0

    move-object v0, v10

    .line 620
    goto/16 :goto_2

    .line 568
    :pswitch_1
    iget-object v1, p0, Lcom/roblox/client/i/h$6;->c:Lcom/roblox/client/i/h;

    iget-object v2, p0, Lcom/roblox/client/i/h$6;->c:Lcom/roblox/client/i/h;

    invoke-static {v2}, Lcom/roblox/client/i/h;->d(Lcom/roblox/client/i/h;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/roblox/client/i/h;->a(Lcom/roblox/client/i/h;I)I

    .line 570
    iget-object v1, p0, Lcom/roblox/client/i/h$6;->c:Lcom/roblox/client/i/h;

    invoke-static {v1}, Lcom/roblox/client/i/h;->d(Lcom/roblox/client/i/h;)I

    move-result v1

    invoke-static {}, Lcom/roblox/client/b;->ai()I

    move-result v2

    if-le v1, v2, :cond_6

    .line 571
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 572
    const-string v2, "DialogTitle"

    const v4, 0x7f0e0050

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 573
    const-string v2, "DialogMessage"

    const v4, 0x7f0e0044

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 574
    const-string v2, "PositiveButton"

    const v4, 0x7f0e002b

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 575
    const-string v2, "NegativeButton"

    const v4, 0x7f0e00ed

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 576
    const-string v2, "CallContext"

    const-string v4, "WrongCredentialsForgotPassword"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v2, p0, Lcom/roblox/client/i/h$6;->a:Lcom/roblox/client/i/h$c;

    invoke-interface {v2, v1}, Lcom/roblox/client/i/h$c;->a(Landroid/os/Bundle;)V

    .line 582
    :goto_4
    const-string v2, "FailureInvalidUsernamePassword"

    .line 583
    const-string v1, "Android-AppLogin-Failure-403-Credentials"

    move-object v10, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v0

    move-object v0, v10

    .line 584
    goto/16 :goto_2

    .line 580
    :cond_6
    const/16 v0, -0x3ea

    goto :goto_4

    .line 587
    :pswitch_2
    iget-object v0, p0, Lcom/roblox/client/i/h$6;->c:Lcom/roblox/client/i/h;

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->e()V

    .line 588
    const/16 v0, -0x3f0

    .line 589
    const-string v2, "Captcha"

    .line 590
    const-string v1, "Android-AppLogin-Failure-403-Captcha"

    move-object v10, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v0

    move-object v0, v10

    .line 591
    goto/16 :goto_2

    .line 594
    :pswitch_3
    iget-object v1, p0, Lcom/roblox/client/i/h$6;->c:Lcom/roblox/client/i/h;

    invoke-virtual {v1}, Lcom/roblox/client/i/h;->e()V

    .line 595
    iget-object v1, p0, Lcom/roblox/client/i/h$6;->a:Lcom/roblox/client/i/h$c;

    invoke-interface {v1}, Lcom/roblox/client/i/h$c;->b()V

    .line 596
    const-string v2, "FailureResetPasswordRequired"

    .line 597
    const-string v1, "Android-AppLogin-Failure-403-PasswordResetRequired"

    move-object v10, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v0

    move-object v0, v10

    .line 598
    goto/16 :goto_2

    .line 601
    :pswitch_4
    const/16 v1, -0x3eb

    .line 602
    iget-object v0, v4, Lcom/roblox/client/i/h$d;->b:Ljava/lang/String;

    .line 603
    const-string v3, "FailureLoginNullPasswordSocialLogin"

    .line 604
    const-string v2, "Android-AppLogin-Failure-403-NullPassword"

    goto/16 :goto_2

    .line 611
    :pswitch_5
    const/16 v1, -0x3ec

    .line 612
    iget-object v0, v4, Lcom/roblox/client/i/h$d;->b:Ljava/lang/String;

    .line 613
    const-string v3, "FailureTwoStepVerification"

    .line 614
    const-string v2, "Android-AppLogin-Failure-403-TwoStepVerification"

    goto/16 :goto_2

    .line 625
    :sswitch_2
    const/16 v0, -0x3ed

    .line 626
    const-string v2, "FailureUnknownError"

    .line 627
    const-string v1, "Android-AppLogin-Failure-0-Timeout"

    move-object v10, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v0

    move-object v0, v10

    .line 628
    goto/16 :goto_2

    .line 631
    :sswitch_3
    const/16 v0, -0x3ee

    .line 632
    const-string v2, "FailureUnknownError"

    .line 633
    const-string v1, "Android-AppLogin-Failure-404-NotFound"

    move-object v10, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v0

    move-object v0, v10

    .line 634
    goto/16 :goto_2

    .line 637
    :sswitch_4
    iget-object v1, p0, Lcom/roblox/client/i/h$6;->c:Lcom/roblox/client/i/h;

    invoke-virtual {v1}, Lcom/roblox/client/i/h;->e()V

    .line 639
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 640
    const-string v2, "DialogTitle"

    const v4, 0x7f0e0130

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 641
    const-string v2, "DialogMessage"

    const v4, 0x7f0e0053

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 642
    const-string v2, "PositiveButton"

    const v4, 0x7f0e005e

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 643
    const-string v2, "NegativeButton"

    const v4, 0x7f0e00ed

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 644
    const-string v2, "CallContext"

    const-string v4, "FloodcheckedResetPassword"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v2, p0, Lcom/roblox/client/i/h$6;->a:Lcom/roblox/client/i/h$c;

    invoke-interface {v2, v1}, Lcom/roblox/client/i/h$c;->a(Landroid/os/Bundle;)V

    .line 647
    const-string v2, "FailureLoginFloodcheck"

    .line 648
    const-string v1, "Android-AppLogin-Failure-429-Throttled"

    move-object v10, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v0

    move-object v0, v10

    .line 649
    goto/16 :goto_2

    .line 652
    :sswitch_5
    const/16 v1, -0x3ef

    .line 653
    iget-object v0, v4, Lcom/roblox/client/i/h$d;->b:Ljava/lang/String;

    .line 654
    const-string v3, "FailureUnknownError"

    .line 655
    const-string v2, "Android-AppLogin-Failure-500-InternalServerError"

    goto/16 :goto_2

    :cond_7
    move-object v10, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v0

    move-object v0, v10

    goto/16 :goto_2

    .line 554
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x190 -> :sswitch_0
        0x193 -> :sswitch_1
        0x194 -> :sswitch_3
        0x1ad -> :sswitch_4
        0x1f4 -> :sswitch_5
    .end sparse-switch

    .line 565
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
