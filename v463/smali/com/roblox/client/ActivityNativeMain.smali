.class public Lcom/roblox/client/ActivityNativeMain;
.super Lcom/roblox/client/q;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/app/a$a;
.implements Lcom/roblox/client/feature/c;
.implements Lcom/roblox/client/game/a$d;
.implements Lcom/roblox/client/s/e$b;
.implements Lcom/roblox/client/startup/b$a;
.implements Lcom/roblox/client/startup/d;
.implements Lcom/roblox/client/z/d;
.implements Lcom/roblox/engine/jni/NativeGLJavaInterface$OnAppShellReloadNeededListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/ActivityNativeMain$a;
    }
.end annotation


# instance fields
.field private A:Lcom/roblox/client/app/c;

.field private final B:Lcom/roblox/client/http/m;

.field private q:Z

.field private r:Lcom/roblox/client/feature/a;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Landroid/content/ServiceConnection;

.field private v:Z

.field private w:Z

.field private x:I

.field private y:Lcom/roblox/client/locale/f;

.field private z:Lcom/roblox/client/app/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/roblox/client/q;-><init>()V

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->z:Lcom/roblox/client/app/a;

    .line 589
    new-instance v0, Lcom/roblox/client/ActivityNativeMain$3;

    invoke-direct {v0, p0}, Lcom/roblox/client/ActivityNativeMain$3;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->B:Lcom/roblox/client/http/m;

    return-void
.end method

.method private M()V
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 218
    check-cast v0, Landroid/view/ViewGroup;

    .line 220
    sget v1, Lcom/roblox/client/o$f;->gl_apps_root_view:I

    iput v1, p0, Lcom/roblox/client/ActivityNativeMain;->x:I

    .line 222
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 223
    sget v2, Lcom/roblox/client/o$f;->gl_apps_root_view:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 224
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "rbx.main"

    const-string v3, "createGlAppsFrame() apps frame created"

    .line 226
    invoke-static {v2, v3}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 227
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private N()V
    .locals 3

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupMainTabs: tabs-loaded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/roblox/client/ActivityNativeMain;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.main"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 531
    iput-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->q:Z

    .line 535
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/roblox/client/ae/l;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 537
    new-instance v0, Lcom/roblox/client/feature/FeatureState;

    const-string v1, "GAMES_TAG"

    invoke-direct {v0, v1}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 540
    :cond_1
    new-instance v0, Lcom/roblox/client/feature/FeatureState;

    const-string v1, "CUSTOM_LUAVIEW_TAG"

    invoke-direct {v0, v1}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    .line 544
    :goto_0
    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->b(Lcom/roblox/client/feature/FeatureState;)V

    .line 546
    invoke-static {}, Lcom/roblox/client/x/c;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 547
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->z:Lcom/roblox/client/app/a;

    if-nez v0, :cond_2

    .line 548
    new-instance v0, Lcom/roblox/client/app/a;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/app/a;-><init>(Lcom/roblox/client/app/a$a;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->z:Lcom/roblox/client/app/a;

    .line 549
    invoke-virtual {v0}, Lcom/roblox/client/app/a;->a()V

    .line 553
    :cond_2
    invoke-static {}, Lcom/roblox/client/b;->ct()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 554
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->A:Lcom/roblox/client/app/c;

    if-nez v0, :cond_3

    .line 555
    new-instance v0, Lcom/roblox/client/app/c;

    invoke-direct {v0, p0}, Lcom/roblox/client/app/c;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->A:Lcom/roblox/client/app/c;

    .line 556
    invoke-virtual {v0}, Lcom/roblox/client/app/c;->a()V

    :cond_3
    return-void
.end method

.method private O()Z
    .locals 3

    .line 582
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "loginAfterSignup"

    .line 584
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    return v1
.end method

.method private P()V
    .locals 3

    const-string v0, "rbx.main"

    const-string v1, "internalOnResume:"

    .line 602
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-static {}, Lcom/roblox/client/w;->a()Lcom/roblox/client/w;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/ActivityNativeMain$4;

    invoke-direct {v1, p0}, Lcom/roblox/client/ActivityNativeMain$4;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/w;->a(Lcom/roblox/client/w$b;)V

    .line 622
    invoke-static {}, Lcom/roblox/client/b;->bA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    invoke-static {}, Lcom/roblox/client/startup/a;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    invoke-static {p0}, Lcom/roblox/client/startup/a;->a(Landroidx/fragment/app/c;)V

    .line 629
    :cond_0
    invoke-static {}, Lcom/roblox/client/m/c;->a()Lcom/roblox/client/m/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 630
    invoke-static {}, Lcom/roblox/client/b;->cc()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/h;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 631
    :cond_1
    invoke-static {p0}, Lcom/roblox/client/x;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 632
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/ActivityNativeMain;->B:Lcom/roblox/client/http/m;

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/h;->a(Lcom/roblox/client/http/m;)V

    .line 634
    :cond_2
    invoke-static {}, Lcom/roblox/client/s/e;->a()Lcom/roblox/client/s/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/s/e;->a(Lcom/roblox/client/s/e$b;)V

    .line 636
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->O()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 637
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/abtesting/a;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->w:Z

    if-nez v0, :cond_3

    .line 639
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/signup/chooseyouradventure/ActivityChooseYourAdventure;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x2786

    .line 640
    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/ActivityNativeMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 644
    :cond_3
    invoke-static {}, Lcom/roblox/client/pushnotification/l;->a()Lcom/roblox/client/pushnotification/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/l;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 645
    invoke-static {p0}, Lcom/roblox/client/x;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 646
    iget-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 647
    iput-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Z

    .line 649
    :cond_4
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->S()V

    .line 653
    :cond_5
    iget-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Z

    if-eqz v0, :cond_6

    .line 654
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->Q()V

    .line 657
    :cond_6
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->U()Lcom/roblox/client/feature/a;

    move-result-object v0

    .line 662
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->j()Landroidx/fragment/app/g;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/g;->b()Z

    .line 664
    invoke-virtual {v0}, Lcom/roblox/client/feature/a;->b()Lcom/roblox/client/game/a;

    move-result-object v1

    if-nez v1, :cond_7

    .line 670
    new-instance v1, Lcom/roblox/client/feature/FeatureState;

    const-string v2, "CUSTOM_LUAVIEW_TAG"

    invoke-direct {v1, v2}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/feature/a;->a(Lcom/roblox/client/feature/FeatureState;)V

    .line 674
    :cond_7
    invoke-static {}, Lcom/roblox/client/routing/a;->a()Lcom/roblox/client/routing/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/routing/a;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 675
    invoke-static {}, Lcom/roblox/client/routing/a;->a()Lcom/roblox/client/routing/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/routing/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 676
    invoke-static {v0}, Lcom/roblox/engine/jni/NativeAppBridgeInterface;->processInAppLink(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private Q()V
    .locals 1

    .line 681
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->R()V

    const/4 v0, 0x0

    .line 683
    iput-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Z

    return-void
.end method

.method private R()V
    .locals 2

    .line 691
    invoke-static {}, Lcom/roblox/client/b;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    invoke-static {}, Lcom/roblox/client/e/a/b;->a()Lcom/roblox/client/e/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/e/a/b;->b()I

    move-result v0

    .line 693
    invoke-static {}, Lcom/roblox/client/b;->M()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 694
    invoke-static {}, Lcom/roblox/client/b/b;->a()Lcom/roblox/client/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/b/b;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private S()V
    .locals 8

    const-string v0, "rbx.main"

    const-string v1, "processPushNotification."

    .line 700
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-static {}, Lcom/roblox/client/pushnotification/l;->a()Lcom/roblox/client/pushnotification/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/l;->c()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "EXTRA_NOTIFICATION_TYPE"

    const-string v2, ""

    .line 706
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "FriendRequestReceived"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_1
    const-string v3, "DefaultNotification"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_2
    const-string v3, "PrivateMessageReceived"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_3
    const-string v3, "ChatNewMessage"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "FriendRequestAccepted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    :cond_1
    :goto_0
    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    goto :goto_1

    .line 722
    :cond_2
    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->a(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    const-string v1, "EXTRA_CONVERSATION_ID"

    const-wide/16 v2, -0x1

    .line 716
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    .line 718
    invoke-direct {p0, v0, v1}, Lcom/roblox/client/ActivityNativeMain;->a(J)V

    goto :goto_1

    .line 713
    :cond_4
    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->b(Landroid/os/Bundle;)V

    goto :goto_1

    .line 709
    :cond_5
    invoke-static {}, Lcom/roblox/client/routing/a;->a()Lcom/roblox/client/routing/a;

    move-result-object v1

    const-string v2, "EXTRA_NOTIFICATION_CUSTOM_DATA"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/roblox/client/routing/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 728
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x253fa4b8 -> :sswitch_4
        0x3766c7df -> :sswitch_3
        0x3ea07f25 -> :sswitch_2
        0x664121ac -> :sswitch_1
        0x74fceef2 -> :sswitch_0
    .end sparse-switch
.end method

.method private T()V
    .locals 3

    .line 809
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/roblox/client/o$j;->Application_Leave_Response_LeaveAppConfirmation:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$j;->Application_Leave_Action_LeaveApp:I

    new-instance v2, Lcom/roblox/client/ActivityNativeMain$7;

    invoke-direct {v2, p0}, Lcom/roblox/client/ActivityNativeMain$7;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    .line 810
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$j;->CommonUI_Controls_Action_Cancel:I

    new-instance v2, Lcom/roblox/client/ActivityNativeMain$6;

    invoke-direct {v2, p0}, Lcom/roblox/client/ActivityNativeMain$6;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    .line 817
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/ActivityNativeMain$5;

    invoke-direct {v1, p0}, Lcom/roblox/client/ActivityNativeMain$5;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    .line 823
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 829
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 830
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private U()Lcom/roblox/client/feature/a;
    .locals 2

    .line 860
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->r:Lcom/roblox/client/feature/a;

    if-nez v0, :cond_0

    .line 861
    new-instance v0, Lcom/roblox/client/feature/a;

    iget v1, p0, Lcom/roblox/client/ActivityNativeMain;->x:I

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/feature/a;-><init>(Lcom/roblox/client/feature/c;I)V

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->r:Lcom/roblox/client/feature/a;

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->r:Lcom/roblox/client/feature/a;

    return-object v0
.end method

.method private V()Z
    .locals 1

    .line 867
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->j()Landroidx/fragment/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/g;->e()I

    move-result v0

    if-lez v0, :cond_0

    .line 868
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->j()Landroidx/fragment/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/g;->c()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private W()V
    .locals 1

    .line 933
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->finish()V

    .line 935
    invoke-static {}, Lcom/roblox/client/l;->a()Lcom/roblox/client/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/l;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 936
    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private X()V
    .locals 2

    .line 1108
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->s:Landroid/view/View;

    new-instance v1, Lcom/roblox/client/ActivityNativeMain$8;

    invoke-direct {v1, p0}, Lcom/roblox/client/ActivityNativeMain$8;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private Y()Ljava/lang/String;
    .locals 2

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OVERLAY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->j()Landroidx/fragment/app/g;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/g;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private Z()V
    .locals 2

    const-string v0, "rbx.main"

    const-string v1, "startup:"

    .line 1136
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-static {p0}, Lcom/roblox/client/startup/c;->a(Landroid/content/Context;)Lcom/roblox/client/startup/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/startup/c;->d()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/ActivityNativeMain;)Landroid/view/View;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/roblox/client/ActivityNativeMain;->t:Landroid/view/View;

    return-object p0
.end method

.method private a(IILandroid/content/Intent;)V
    .locals 3

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "On UnivFriendsActivity result. RequestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". ResultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.main"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    const/16 v1, 0x64

    const/16 v2, 0x2782

    if-ne p1, v2, :cond_1

    if-eq p2, v1, :cond_0

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    invoke-direct {p0, p3}, Lcom/roblox/client/ActivityNativeMain;->c(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x2785

    if-ne p1, v2, :cond_3

    if-eq p2, v1, :cond_2

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 415
    :cond_2
    invoke-direct {p0, p3}, Lcom/roblox/client/ActivityNativeMain;->c(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(J)V
    .locals 2

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "navigateToConversation() conversation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.main"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    new-instance v0, Lcom/roblox/client/feature/FeatureState;

    const-string v1, "CHAT_TAG"

    invoke-direct {v0, v1}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    const-string v1, "CHAT_CONVERSATION_ID"

    .line 903
    invoke-virtual {v0, v1, p1, p2}, Lcom/roblox/client/feature/FeatureState;->a(Ljava/lang/String;J)V

    .line 904
    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->c(Lcom/roblox/client/feature/FeatureState;)V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "EXTRA_CONVERSATION_ID"

    const-wide/16 v1, -0x1

    .line 735
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-nez p1, :cond_0

    .line 738
    invoke-static {}, Lcom/roblox/client/u;->T()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 740
    :cond_0
    invoke-static {v3, v4}, Lcom/roblox/client/u;->f(J)Ljava/lang/String;

    move-result-object p1

    .line 742
    :goto_0
    invoke-direct {p0, p1}, Lcom/roblox/client/ActivityNativeMain;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/roblox/client/ActivityNativeMain;Z)V
    .locals 1

    .line 836
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->U()Lcom/roblox/client/feature/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/feature/a;->b()Lcom/roblox/client/game/a;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 841
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->j()Landroidx/fragment/app/g;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/k;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/k;->d()I

    :cond_0
    const-string p0, "rbx.appshell"

    const-string p1, "removeGlApp() clearing app shell"

    .line 845
    invoke-static {p0, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/roblox/client/game/b;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 922
    invoke-static {p2}, Lcom/roblox/client/ae/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/roblox/client/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private aa()V
    .locals 3

    .line 1313
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->ab()Lcom/roblox/client/startup/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "rbx.main"

    const-string v2, "Dismiss the existing Retry UI..."

    .line 1315
    invoke-static {v1, v2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    invoke-virtual {v0}, Lcom/roblox/client/startup/b;->b()V

    :cond_0
    return-void
.end method

.method private ab()Lcom/roblox/client/startup/b;
    .locals 2

    .line 1321
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->j()Landroidx/fragment/app/g;

    move-result-object v0

    const-string v1, "FragmentRetry"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 1322
    instance-of v1, v0, Lcom/roblox/client/startup/b;

    if-eqz v1, :cond_0

    .line 1323
    check-cast v0, Lcom/roblox/client/startup/b;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic b(Lcom/roblox/client/ActivityNativeMain;)Lcom/roblox/client/feature/a;
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->U()Lcom/roblox/client/feature/a;

    move-result-object p0

    return-object p0
.end method

.method private b(IILandroid/content/Intent;)V
    .locals 2

    const-string p1, "HOME_TAG"

    const/16 p3, 0x2782

    const-string v0, "TabToShowKey"

    packed-switch p2, :pswitch_data_0

    .line 447
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ResultCode from Choose-Your-Adventure not recognized: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "rbx.main"

    invoke-static {p2, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 444
    :pswitch_0
    new-instance p1, Lcom/roblox/client/feature/FeatureState;

    const-string p2, "GAMES_TAG"

    invoke-direct {p1, p2}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/roblox/client/ActivityNativeMain;->c(Lcom/roblox/client/feature/FeatureState;)V

    goto :goto_0

    .line 427
    :pswitch_1
    new-instance p1, Lcom/roblox/client/feature/FeatureState;

    const-string p2, "AVATAR_EDITOR_TAG"

    invoke-direct {p1, p2}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/roblox/client/ActivityNativeMain;->c(Lcom/roblox/client/feature/FeatureState;)V

    goto :goto_0

    .line 430
    :pswitch_2
    new-instance p2, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/friends/ActivityUniversalFriends;

    invoke-direct {p2, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    .line 431
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0, p2, p3}, Lcom/roblox/client/ActivityNativeMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 434
    new-instance p2, Lcom/roblox/client/feature/FeatureState;

    invoke-direct {p2, p1}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/roblox/client/ActivityNativeMain;->c(Lcom/roblox/client/feature/FeatureState;)V

    goto :goto_0

    .line 437
    :pswitch_3
    new-instance p2, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/friends/ActivityUniversalFriends;

    invoke-direct {p2, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    .line 438
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 439
    invoke-virtual {p0, p2, p3}, Lcom/roblox/client/ActivityNativeMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 441
    new-instance p2, Lcom/roblox/client/feature/FeatureState;

    invoke-direct {p2, p1}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/roblox/client/ActivityNativeMain;->c(Lcom/roblox/client/feature/FeatureState;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(J)V
    .locals 2

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "navigateToUserConversation() user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.main"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    new-instance v0, Lcom/roblox/client/feature/FeatureState;

    const-string v1, "CHAT_TAG"

    invoke-direct {v0, v1}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    const-string v1, "USER_ID_EXTRA"

    .line 910
    invoke-virtual {v0, v1, p1, p2}, Lcom/roblox/client/feature/FeatureState;->a(Ljava/lang/String;J)V

    .line 911
    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->c(Lcom/roblox/client/feature/FeatureState;)V

    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 13

    const-string v0, "EXTRA_NOTIFICATION_USER_ID"

    const-wide/16 v1, -0x1

    .line 754
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "EXTRA_NOTIFICATION_TYPE"

    .line 755
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "EXTRA_STACKED_NOTIFICATION"

    const/4 v6, 0x0

    .line 756
    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 759
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->finish()V

    goto/16 :goto_5

    :cond_0
    const-string v7, "FriendRequestReceived"

    const-string v8, "FriendRequestAccepted"

    const v9, 0x74fceef2

    const v10, 0x253fa4b8

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-nez p1, :cond_8

    .line 763
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-eq p1, v10, :cond_2

    if-eq p1, v9, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v6, -0x1

    :goto_1
    if-eqz v6, :cond_6

    if-eq v6, v12, :cond_4

    goto/16 :goto_5

    :cond_4
    cmp-long p1, v3, v1

    if-nez p1, :cond_5

    .line 776
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/s/h;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/roblox/client/u;->e(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 779
    :cond_5
    invoke-static {v3, v4}, Lcom/roblox/client/u;->c(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    cmp-long p1, v3, v1

    if-nez p1, :cond_7

    .line 767
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/s/h;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/roblox/client/u;->d(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 770
    :cond_7
    invoke-static {v3, v4}, Lcom/roblox/client/u;->c(J)Ljava/lang/String;

    move-result-object p1

    :goto_2
    move-object v5, p1

    goto :goto_5

    .line 785
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    if-eq p1, v10, :cond_a

    if-eq p1, v9, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_4

    :cond_a
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 v6, 0x1

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v6, -0x1

    :goto_4
    if-eqz v6, :cond_d

    if-eq v6, v12, :cond_c

    goto :goto_5

    .line 792
    :cond_c
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/s/h;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/roblox/client/u;->e(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 788
    :cond_d
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/s/h;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/roblox/client/u;->d(J)Ljava/lang/String;

    move-result-object v5

    .line 797
    :goto_5
    invoke-direct {p0, v5}, Lcom/roblox/client/ActivityNativeMain;->f(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/roblox/client/feature/FeatureState;)V
    .locals 2

    const-string v0, "rbx.appshell"

    const-string v1, "loadDataModel()"

    .line 562
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/game/b;->a(Landroid/content/Context;)V

    .line 566
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/ActivityNativeMain$1;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/ActivityNativeMain$1;-><init>(Lcom/roblox/client/ActivityNativeMain;Lcom/roblox/client/feature/FeatureState;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/game/b;->b(Lcom/roblox/client/game/b$g;)V

    return-void
.end method

.method static synthetic c(Lcom/roblox/client/ActivityNativeMain;)Landroid/view/View;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/roblox/client/ActivityNativeMain;->s:Landroid/view/View;

    return-object p0
.end method

.method private c(Landroid/content/Intent;)V
    .locals 5

    if-eqz p1, :cond_6

    const-string v0, "FEATURE_EXTRA"

    .line 454
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "CHAT_TAG"

    .line 457
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "USER_ID_EXTRA"

    const-wide/16 v1, -0x1

    .line 459
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 461
    invoke-direct {p0, v3, v4}, Lcom/roblox/client/ActivityNativeMain;->b(J)V

    goto :goto_0

    :cond_0
    const-string v0, "CONVERSATION_ID_EXTRA"

    .line 464
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 465
    invoke-direct {p0, v0, v1}, Lcom/roblox/client/ActivityNativeMain;->a(J)V

    goto :goto_0

    :cond_1
    const-string v1, "PROFILE_TAG"

    .line 467
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "PATH_EXTRA"

    if-eqz v1, :cond_2

    .line 468
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$j;->CommonUI_Features_Label_Profile:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/roblox/client/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "SETTINGS_TAG"

    .line 469
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 470
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$j;->CommonUI_Features_Label_Settings:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/roblox/client/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "GAME_DETAILS_TAG"

    .line 471
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 472
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$j;->CommonUI_Features_Heading_GameDetails:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/roblox/client/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "AVATAR_EDITOR_TAG"

    .line 473
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 474
    new-instance p1, Lcom/roblox/client/feature/FeatureState;

    invoke-direct {p1, v1}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/roblox/client/ActivityNativeMain;->c(Lcom/roblox/client/feature/FeatureState;)V

    goto :goto_0

    .line 478
    :cond_5
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 482
    invoke-static {p0, v0}, Lcom/roblox/client/feature/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-static {p0, p1, v0}, Lcom/roblox/client/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private c(Lcom/roblox/client/feature/FeatureState;)V
    .locals 2

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "navigateToFeature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bundle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/client/feature/FeatureState;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.main"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    invoke-virtual {p0, p1}, Lcom/roblox/client/ActivityNativeMain;->a(Lcom/roblox/client/feature/FeatureState;)V

    return-void
.end method

.method private d(I)V
    .locals 3

    const-string v0, "rbx.main"

    const-string v1, "showRetryFragment: "

    .line 1299
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->ab()Lcom/roblox/client/startup/b;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "showRetryFragment: Found an existing Retry fragment."

    .line 1303
    invoke-static {v0, v2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    invoke-virtual {p0, p1}, Lcom/roblox/client/ActivityNativeMain;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/roblox/client/startup/b;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v1, "showRetryFragment: Create a new FragmentRetry..."

    .line 1306
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    invoke-static {p1}, Lcom/roblox/client/startup/b;->d(I)Lcom/roblox/client/startup/b;

    move-result-object p1

    .line 1308
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->j()Landroidx/fragment/app/g;

    move-result-object v0

    const-string v1, "FragmentRetry"

    invoke-virtual {p1, v0, v1}, Lcom/roblox/client/startup/b;->a(Landroidx/fragment/app/g;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 2

    .line 801
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/RobloxWebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "URL_EXTRA"

    .line 802
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 803
    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->startActivity(Landroid/content/Intent;)V

    .line 804
    sget p1, Lcom/roblox/client/o$a;->slide_up_short:I

    sget v0, Lcom/roblox/client/o$a;->stay:I

    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/ActivityNativeMain;->overridePendingTransition(II)V

    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 7

    const-string v0, "rbx.main"

    .line 1143
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "openFunCaptchaActivity: Exception parsing json data."

    .line 1146
    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_8

    const-string p1, "captchaType"

    .line 1150
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "login"

    .line 1153
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "cvalueType"

    .line 1154
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "cvalue"

    .line 1155
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 1158
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x247fbcc6

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    const v4, -0xfd6772a

    if-eq v3, v4, :cond_1

    const v4, 0x5c24b9c

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "email"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const-string v3, "username"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const-string v3, "phone_number"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x2

    :cond_3
    :goto_1
    if-eqz v2, :cond_6

    if-eq v2, v6, :cond_5

    if-ne v2, v5, :cond_4

    .line 1166
    sget-object p1, Lcom/roblox/client/captcha/LoginCaptchaConfig$a;->c:Lcom/roblox/client/captcha/LoginCaptchaConfig$a;

    goto :goto_2

    .line 1169
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported credential Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1163
    :cond_5
    sget-object p1, Lcom/roblox/client/captcha/LoginCaptchaConfig$a;->b:Lcom/roblox/client/captcha/LoginCaptchaConfig$a;

    goto :goto_2

    .line 1160
    :cond_6
    sget-object p1, Lcom/roblox/client/captcha/LoginCaptchaConfig$a;->a:Lcom/roblox/client/captcha/LoginCaptchaConfig$a;

    .line 1172
    :goto_2
    new-instance v2, Lcom/roblox/client/captcha/LoginCaptchaConfig;

    invoke-direct {v2, p1, v1}, Lcom/roblox/client/captcha/LoginCaptchaConfig;-><init>(Lcom/roblox/client/captcha/LoginCaptchaConfig$a;Ljava/lang/String;)V

    goto :goto_3

    .line 1174
    :cond_7
    new-instance v2, Lcom/roblox/client/captcha/SignUpCaptchaConfig;

    invoke-direct {v2}, Lcom/roblox/client/captcha/SignUpCaptchaConfig;-><init>()V

    .line 1177
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openFunCaptchaActivity: config = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    invoke-static {p0, v2}, Lcom/roblox/client/captcha/ActivityFunCaptcha;->a(Landroid/content/Context;Lcom/roblox/client/captcha/CaptchaConfig;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x2783

    .line 1178
    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/ActivityNativeMain;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_8
    return-void
.end method


# virtual methods
.method public A()V
    .locals 0

    .line 1372
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->V()Z

    return-void
.end method

.method public B()V
    .locals 1

    .line 1428
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1433
    :cond_0
    new-instance v0, Lcom/roblox/client/ActivityNativeMain$2;

    invoke-direct {v0, p0, p0}, Lcom/roblox/client/ActivityNativeMain$2;-><init>(Lcom/roblox/client/ActivityNativeMain;Lcom/roblox/client/ActivityNativeMain;)V

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 894
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->j()Landroidx/fragment/app/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "game_init_params"

    .line 989
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/roblox/client/game/h;->a(Landroid/os/Bundle;)Lcom/roblox/client/game/h;

    move-result-object p1

    .line 990
    invoke-static {p1, p0}, Lcom/roblox/client/a;->a(Lcom/roblox/client/game/h;Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const-string p1, "rbx.main"

    const-string v0, "ANM.handleNotification() Logout event..."

    .line 995
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeAppBridgeV2UserDidLogout()V

    .line 997
    invoke-static {}, Lcom/roblox/client/x/c;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 998
    new-instance p1, Lcom/roblox/client/ActivityNativeMain$a;

    invoke-direct {p1, p0}, Lcom/roblox/client/ActivityNativeMain$a;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    .line 999
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p2, v0}, Lcom/roblox/client/ActivityNativeMain$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1001
    :cond_2
    invoke-static {p2}, Lcom/roblox/client/s/c;->a(Landroid/os/Bundle;)Lcom/roblox/client/s/c$e;

    move-result-object p1

    .line 1002
    invoke-virtual {p0, p1}, Lcom/roblox/client/ActivityNativeMain;->a(Lcom/roblox/client/s/c$e;)V

    :goto_0
    return-void
.end method

.method public a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 882
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->j()Landroidx/fragment/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/k;

    move-result-object v0

    .line 883
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->x()Z

    move-result v1

    if-nez v1, :cond_0

    .line 884
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/k;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    goto :goto_0

    .line 886
    :cond_0
    invoke-virtual {v0, p2}, Landroidx/fragment/app/k;->c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/k;

    .line 888
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/k;->d()I

    :cond_1
    return-void
.end method

.method public a(Lcom/roblox/client/app/d;)V
    .locals 5

    .line 1331
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->X()V

    .line 1334
    iget-object v0, p1, Lcom/roblox/client/app/d;->d:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/roblox/client/app/d;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1335
    new-instance v0, Lcom/roblox/client/t;

    invoke-direct {v0}, Lcom/roblox/client/t;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/roblox/client/n/c;

    invoke-direct {v0}, Lcom/roblox/client/n/c;-><init>()V

    .line 1336
    :goto_1
    invoke-virtual {v0}, Lcom/roblox/client/v;->g()Landroidx/lifecycle/g;

    move-result-object v2

    new-instance v3, Lcom/roblox/client/app/AppWebViewLifecycleObserver;

    invoke-direct {v3}, Lcom/roblox/client/app/AppWebViewLifecycleObserver;-><init>()V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/i;)V

    .line 1337
    invoke-virtual {v0}, Lcom/roblox/client/v;->g()Landroidx/lifecycle/g;

    move-result-object v2

    new-instance v3, Lcom/roblox/client/app/AppInputFocusLifecycleObserver;

    invoke-direct {v3}, Lcom/roblox/client/app/AppInputFocusLifecycleObserver;-><init>()V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/i;)V

    .line 1339
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1342
    iget-object v3, p1, Lcom/roblox/client/app/d;->a:Ljava/lang/String;

    const-string v4, "DEFAULT_URL"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "USE_APP_HYBRID"

    .line 1343
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1344
    iget-object v3, p1, Lcom/roblox/client/app/d;->c:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "VISIBLE"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1345
    iget-object v3, p1, Lcom/roblox/client/app/d;->e:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "BACK_NAVIGATION_DISABLED"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1348
    iget-object p1, p1, Lcom/roblox/client/app/d;->b:Ljava/lang/String;

    const-string v3, "TITLE_STRING"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "HAS_PARENT"

    .line 1349
    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "HIDE_ACCESSORY_BUTTONS"

    .line 1350
    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1352
    invoke-virtual {v0, v2}, Lcom/roblox/client/v;->g(Landroid/os/Bundle;)V

    .line 1354
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->j()Landroidx/fragment/app/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/k;

    move-result-object p1

    .line 1355
    sget v1, Lcom/roblox/client/o$f;->content_overlay:I

    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Landroidx/fragment/app/k;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/k;

    const/4 v0, 0x0

    .line 1356
    invoke-virtual {p1, v0}, Landroidx/fragment/app/k;->a(Ljava/lang/String;)Landroidx/fragment/app/k;

    .line 1357
    invoke-virtual {p1}, Landroidx/fragment/app/k;->d()I

    return-void
.end method

.method public a(Lcom/roblox/client/feature/FeatureState;)V
    .locals 2

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANM.showFeature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/roblox/client/feature/FeatureState;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.main"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->U()Lcom/roblox/client/feature/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/feature/a;->a(Lcom/roblox/client/feature/FeatureState;)V

    return-void
.end method

.method protected a(Z)V
    .locals 2

    .line 1420
    new-instance v0, Lcom/roblox/engine/b/a;

    invoke-direct {v0, p1}, Lcom/roblox/engine/b/a;-><init>(Z)V

    .line 1421
    iget-object p1, v0, Lcom/roblox/engine/b/a;->b:Ljava/lang/String;

    iget-object v1, v0, Lcom/roblox/engine/b/a;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/roblox/engine/b/a;->d:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeBroadcastEventWithNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/roblox/client/app/d;)V
    .locals 2

    .line 1362
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->j()Landroidx/fragment/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/g;->e()I

    move-result v0

    if-lez v0, :cond_0

    .line 1363
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->j()Landroidx/fragment/app/g;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$f;->content_overlay:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->a(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 1364
    instance-of v1, v0, Lcom/roblox/client/v;

    if-eqz v1, :cond_0

    .line 1365
    check-cast v0, Lcom/roblox/client/v;

    invoke-virtual {v0, p1}, Lcom/roblox/client/v;->a(Lcom/roblox/client/app/d;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAppReady: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.main"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->t:Landroid/view/View;

    new-instance v1, Lcom/roblox/client/ActivityNativeMain$9;

    invoke-direct {v1, p0}, Lcom/roblox/client/ActivityNativeMain$9;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1240
    :cond_0
    invoke-static {}, Lcom/roblox/client/x/c;->h()Z

    move-result v0

    const-string v1, "Home"

    if-eqz v0, :cond_2

    const-string v0, "Landing"

    .line 1241
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1242
    :cond_1
    invoke-static {}, Lcom/roblox/client/w;->a()Lcom/roblox/client/w;

    move-result-object v0

    new-instance v2, Lcom/roblox/client/ActivityNativeMain$10;

    invoke-direct {v2, p0}, Lcom/roblox/client/ActivityNativeMain$10;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    invoke-virtual {v0, v2}, Lcom/roblox/client/w;->a(Lcom/roblox/client/w$b;)V

    goto :goto_0

    .line 1253
    :cond_2
    invoke-static {}, Lcom/roblox/client/x/c;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->A:Lcom/roblox/client/app/c;

    if-eqz v0, :cond_3

    const-string v0, "Login"

    .line 1255
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1257
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->A:Lcom/roblox/client/app/c;

    invoke-virtual {v0}, Lcom/roblox/client/app/c;->c()V

    .line 1261
    :cond_3
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->x()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1262
    invoke-static {p0}, Lcom/roblox/client/a;->a(Landroid/app/Activity;)V

    :cond_4
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 5

    .line 1378
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "rbx.main"

    if-eqz v0, :cond_0

    const-string p1, "Share data is empty"

    .line 1379
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1386
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "url"

    .line 1387
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "context"

    .line 1388
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1394
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1398
    :cond_1
    invoke-static {v0}, Lcom/roblox/client/z/b;->a(Ljava/lang/String;)V

    .line 1399
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 1400
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    .line 1401
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1403
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/ShareAppChosenReceiver;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x8000000

    const/4 v2, 0x0

    .line 1404
    invoke-static {p0, v2, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 1407
    invoke-virtual {p0, v2}, Lcom/roblox/client/ActivityNativeMain;->a(Z)V

    .line 1409
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    const/16 v3, 0x278c

    const/4 v4, 0x0

    if-lt v1, v2, :cond_2

    .line 1411
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    .line 1410
    invoke-static {v0, v4, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/roblox/client/ActivityNativeMain;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1414
    :cond_2
    invoke-static {v0, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/roblox/client/ActivityNativeMain;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :catch_0
    const-string p1, "Error parsing share data."

    .line 1390
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public n()V
    .locals 0

    .line 522
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->T()V

    return-void
.end method

.method protected o()Lcom/roblox/client/p/b;
    .locals 1

    .line 1132
    new-instance v0, Lcom/roblox/client/p/d;

    invoke-direct {v0}, Lcom/roblox/client/p/d;-><init>()V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    const/16 v1, 0x2776

    const-string v2, "rbx.main"

    if-eq p1, v1, :cond_a

    const/16 v1, 0x2778

    const/4 v3, 0x1

    if-eq p1, v1, :cond_8

    const/16 v1, 0x277e

    if-eq p1, v1, :cond_7

    const/16 v0, 0x2789

    if-eq p1, v0, :cond_6

    const/16 v0, 0x278c

    if-eq p1, v0, :cond_4

    const/16 v0, 0x2782

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2783

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2785

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2786

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 361
    :cond_0
    iput-boolean v3, p0, Lcom/roblox/client/ActivityNativeMain;->w:Z

    .line 362
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/ActivityNativeMain;->b(IILandroid/content/Intent;)V

    goto/16 :goto_3

    .line 365
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onActivityResult from FunCaptcha: code:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", result:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x65

    if-ne p2, p3, :cond_2

    const-string p2, "success"

    goto :goto_0

    :cond_2
    const-string p2, "dismiss"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object p1

    new-instance p2, Lcom/roblox/engine/b/a;

    invoke-direct {p2, v3}, Lcom/roblox/engine/b/a;-><init>(Z)V

    invoke-virtual {p1, p2}, Lcom/roblox/client/game/b;->a(Lcom/roblox/engine/b/c;)V

    .line 368
    new-instance p1, Lcom/roblox/client/feature/FeatureState;

    const-string p2, "HOME_TAG"

    invoke-direct {p1, p2}, Lcom/roblox/client/feature/FeatureState;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/roblox/client/ActivityNativeMain;->a(Lcom/roblox/client/feature/FeatureState;)V

    goto/16 :goto_3

    .line 338
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/ActivityNativeMain;->a(IILandroid/content/Intent;)V

    goto :goto_3

    .line 376
    :cond_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x16

    if-lt p1, p2, :cond_5

    .line 377
    invoke-static {}, Lcom/roblox/client/z/b;->a()V

    .line 379
    :cond_5
    invoke-virtual {p0, v3}, Lcom/roblox/client/ActivityNativeMain;->a(Z)V

    goto :goto_3

    .line 371
    :cond_6
    iget-object p1, p0, Lcom/roblox/client/ActivityNativeMain;->A:Lcom/roblox/client/app/c;

    if-eqz p1, :cond_e

    .line 372
    invoke-virtual {p1, p2, p3}, Lcom/roblox/client/app/c;->a(ILandroid/content/Intent;)V

    goto :goto_3

    :cond_7
    if-ne p2, v0, :cond_e

    .line 343
    invoke-direct {p0, p3}, Lcom/roblox/client/ActivityNativeMain;->c(Landroid/content/Intent;)V

    goto :goto_3

    .line 356
    :cond_8
    iput-boolean v3, p0, Lcom/roblox/client/ActivityNativeMain;->v:Z

    .line 358
    invoke-static {}, Lcom/roblox/client/b;->a()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "Loaded"

    goto :goto_1

    :cond_9
    const-string p1, "NotLoaded"

    :goto_1
    const-string p2, "Experiment"

    const-string p3, "SettingsAfterGame"

    .line 357
    invoke-static {p2, p3, p1}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 347
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onActivityResult from Splash. resultCode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x67

    if-ne p2, p1, :cond_b

    .line 350
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->N()V

    goto :goto_3

    .line 352
    :cond_b
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->W()V

    goto :goto_3

    .line 382
    :cond_c
    invoke-static {}, Lcom/roblox/client/m/c;->a()Lcom/roblox/client/m/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cR()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3

    .line 394
    :cond_d
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/q;->onActivityResult(IILandroid/content/Intent;)V

    :cond_e
    :goto_3
    return-void
.end method

.method public onBackButtonNotConsumedEvent(Lcom/roblox/client/l/c;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1014
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->n()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 495
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->j()Landroidx/fragment/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/g;->e()I

    move-result v0

    if-lez v0, :cond_2

    .line 496
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->j()Landroidx/fragment/app/g;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$f;->content_overlay:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/g;->a(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 497
    instance-of v1, v0, Lcom/roblox/client/v;

    if-eqz v1, :cond_0

    .line 499
    check-cast v0, Lcom/roblox/client/v;

    .line 500
    invoke-virtual {v0}, Lcom/roblox/client/v;->aq()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/roblox/client/v;->at()Z

    move-result v0

    if-nez v0, :cond_1

    .line 502
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->j()Landroidx/fragment/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/g;->c()V

    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->j()Landroidx/fragment/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/g;->c()V

    :cond_1
    :goto_0
    return-void

    .line 512
    :cond_2
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->U()Lcom/roblox/client/feature/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/feature/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 518
    :cond_3
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->n()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 144
    invoke-super {p0, p1}, Lcom/roblox/client/q;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-static {}, Lcom/roblox/client/locale/b;->a()Lcom/roblox/client/locale/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/locale/b;->b()Lcom/roblox/client/locale/f;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->y:Lcom/roblox/client/locale/f;

    .line 148
    invoke-static {}, Lcom/roblox/client/x/c;->h()Z

    move-result v0

    const-string v1, "rbx.main"

    if-eqz v0, :cond_0

    .line 149
    invoke-static {p0}, Lcom/roblox/client/startup/c;->a(Landroid/content/Context;)Lcom/roblox/client/startup/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/startup/c;->a(Lcom/roblox/client/startup/d;)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {}, Lcom/roblox/client/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const-string p1, "onCreate restarting app"

    .line 154
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object p1, Lcom/roblox/client/startup/e;->d:Lcom/roblox/client/startup/e;

    invoke-static {p0, p1}, Lcom/roblox/client/startup/ActivitySplash;->a(Landroid/content/Context;Lcom/roblox/client/startup/e;)Landroid/content/Intent;

    move-result-object p1

    .line 156
    invoke-virtual {p0, p1}, Lcom/roblox/client/ActivityNativeMain;->startActivity(Landroid/content/Intent;)V

    .line 157
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->finish()V

    return-void

    :cond_1
    :goto_0
    const-string v0, "onCreate NativeMain."

    .line 161
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget v0, Lcom/roblox/client/o$g;->activity_main:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->setContentView(I)V

    if-eqz p1, :cond_2

    const-string v0, "BACK_FROM_GAME"

    .line 166
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Z

    const-string v0, "CHOOSE_ADV_SHOWN"

    .line 167
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/roblox/client/ActivityNativeMain;->w:Z

    .line 170
    :cond_2
    invoke-static {}, Lcom/roblox/client/b;->a()Z

    move-result p1

    .line 171
    invoke-static {}, Lcom/roblox/client/x/c;->h()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    const-string v0, "onCreate no AppSettings."

    .line 173
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v0, Lcom/roblox/client/startup/e;->c:Lcom/roblox/client/startup/e;

    .line 176
    invoke-static {p0, v0}, Lcom/roblox/client/startup/ActivitySplash;->a(Landroid/content/Context;Lcom/roblox/client/startup/e;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x2776

    .line 178
    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/ActivityNativeMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 181
    :cond_3
    sget v0, Lcom/roblox/client/o$f;->content_main:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->s:Landroid/view/View;

    .line 183
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->M()V

    .line 185
    sget v0, Lcom/roblox/client/o$f;->loading_view:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->t:Landroid/view/View;

    .line 187
    invoke-static {}, Lcom/roblox/client/x/c;->h()Z

    move-result v0

    if-nez v0, :cond_5

    .line 188
    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/game/b;->h()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 191
    :cond_4
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->t:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 189
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->t:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    :goto_2
    invoke-static {}, Lcom/roblox/client/x/c;->h()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p1, :cond_6

    .line 195
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->N()V

    .line 197
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/ad/c;->e()Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 199
    invoke-static {}, Lcom/roblox/client/ae/l;->b()Z

    move-result v0

    if-nez v0, :cond_6

    .line 200
    invoke-static {}, Lcom/roblox/client/b;->X()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 208
    invoke-static {p0}, Lcom/roblox/client/purchase/google/b;->a(Landroid/content/Context;)Lcom/roblox/client/purchase/google/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/purchase/google/b;->a(Ljava/lang/String;)V

    .line 213
    :cond_6
    invoke-static {p0}, Lcom/roblox/engine/jni/NativeGLJavaInterface;->setAppShellReloadNeededListener(Lcom/roblox/engine/jni/NativeGLJavaInterface$OnAppShellReloadNeededListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy. isFinishing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.main"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 298
    invoke-static {v0}, Lcom/roblox/engine/jni/NativeGLJavaInterface;->setAppShellReloadNeededListener(Lcom/roblox/engine/jni/NativeGLJavaInterface$OnAppShellReloadNeededListener;)V

    .line 301
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->isFinishing()Z

    move-result v1

    .line 303
    invoke-static {p0, v1}, Lcom/roblox/client/ActivityNativeMain;->a(Lcom/roblox/client/ActivityNativeMain;Z)V

    .line 305
    invoke-static {}, Lcom/roblox/client/x/c;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 306
    iput-boolean v1, p0, Lcom/roblox/client/ActivityNativeMain;->q:Z

    .line 307
    invoke-static {p0}, Lcom/roblox/client/startup/c;->a(Landroid/content/Context;)Lcom/roblox/client/startup/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/roblox/client/startup/c;->b(Lcom/roblox/client/startup/d;)V

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeMain;->z:Lcom/roblox/client/app/a;

    if-eqz v1, :cond_1

    .line 311
    invoke-virtual {v1}, Lcom/roblox/client/app/a;->b()V

    .line 312
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->z:Lcom/roblox/client/app/a;

    .line 315
    :cond_1
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeMain;->A:Lcom/roblox/client/app/c;

    if-eqz v1, :cond_2

    .line 316
    invoke-virtual {v1}, Lcom/roblox/client/app/c;->b()V

    .line 317
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->A:Lcom/roblox/client/app/c;

    .line 320
    :cond_2
    invoke-super {p0}, Lcom/roblox/client/q;->onDestroy()V

    return-void
.end method

.method public onNavigateToConversationEvent(Lcom/roblox/client/l/i;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1119
    iget-wide v0, p1, Lcom/roblox/client/l/i;->b:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1120
    iget-wide v0, p1, Lcom/roblox/client/l/i;->b:J

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/ActivityNativeMain;->b(J)V

    goto :goto_0

    .line 1122
    :cond_0
    iget-wide v0, p1, Lcom/roblox/client/l/i;->a:J

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/ActivityNativeMain;->a(J)V

    :goto_0
    return-void
.end method

.method public onNavigateToFeatureEvent(Lcom/roblox/client/l/j;)V
    .locals 7
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NavigateToFeature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.main"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v0, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    const-string v2, "PROFILE_TAG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p1, Lcom/roblox/client/l/j;->b:Ljava/lang/String;

    sget v1, Lcom/roblox/client/o$j;->CommonUI_Features_Label_Profile:I

    iget-boolean v2, p1, Lcom/roblox/client/l/j;->c:Z

    invoke-virtual {p1}, Lcom/roblox/client/l/j;->c()Z

    move-result p1

    invoke-static {p0, v0, v1, v2, p1}, Lcom/roblox/client/a;->a(Landroid/app/Activity;Ljava/lang/String;IZZ)V

    goto/16 :goto_3

    .line 1024
    :cond_0
    iget-object v0, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    const-string v2, "GAME_DETAILS_TAG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "games/"

    if-eqz v0, :cond_1

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/u;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/roblox/client/l/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$j;->CommonUI_Features_Heading_GameDetails:I

    iget-boolean v2, p1, Lcom/roblox/client/l/j;->c:Z

    invoke-virtual {p1}, Lcom/roblox/client/l/j;->c()Z

    move-result p1

    invoke-static {p0, v0, v1, v2, p1}, Lcom/roblox/client/a;->a(Landroid/app/Activity;Ljava/lang/String;IZZ)V

    goto/16 :goto_3

    .line 1027
    :cond_1
    iget-object v0, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    const-string v3, "CUSTOM_WEBVIEW_TAG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "YOUTUBE_TAG"

    if-nez v0, :cond_e

    iget-object v0, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 1059
    :cond_2
    iget-object v0, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    const-string v3, "SOCIAL_MEDIA_TAG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1060
    new-instance v0, Lcom/roblox/client/z/a;

    invoke-direct {v0, v1}, Lcom/roblox/client/z/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/roblox/client/l/j;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/roblox/client/z/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1062
    :cond_3
    iget-object v0, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    const-string v3, "MY_FEED_TAG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/u;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "feeds/inapp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$j;->CommonUI_Features_Label_MyFeed:I

    iget-boolean v2, p1, Lcom/roblox/client/l/j;->c:Z

    invoke-virtual {p1}, Lcom/roblox/client/l/j;->c()Z

    move-result p1

    invoke-static {p0, v0, v1, v2, p1}, Lcom/roblox/client/a;->a(Landroid/app/Activity;Ljava/lang/String;IZZ)V

    goto/16 :goto_3

    .line 1065
    :cond_4
    iget-object v0, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    const-string v3, "SEARCH_GAMES_TAG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1066
    iget-object v0, p1, Lcom/roblox/client/l/j;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/u;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$j;->CommonUI_Features_Label_SearchGames:I

    iget-boolean v2, p1, Lcom/roblox/client/l/j;->c:Z

    invoke-virtual {p1}, Lcom/roblox/client/l/j;->c()Z

    move-result p1

    invoke-static {p0, v0, v1, v2, p1}, Lcom/roblox/client/a;->a(Landroid/app/Activity;Ljava/lang/String;IZZ)V

    goto/16 :goto_3

    .line 1068
    :cond_5
    iget-object v0, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    const-string v3, "GAMES_SEE_ALL_TAG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1069
    iget-object v0, p1, Lcom/roblox/client/l/j;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/u;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$j;->CommonUI_Features_Label_Game:I

    iget-boolean v2, p1, Lcom/roblox/client/l/j;->c:Z

    invoke-virtual {p1}, Lcom/roblox/client/l/j;->c()Z

    move-result p1

    invoke-static {p0, v0, v1, v2, p1}, Lcom/roblox/client/a;->a(Landroid/app/Activity;Ljava/lang/String;IZZ)V

    goto/16 :goto_3

    .line 1071
    :cond_6
    iget-object v0, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    const-string v3, "ABUSE_REPORT_TAG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1072
    iget-object v0, p1, Lcom/roblox/client/l/j;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/roblox/client/l/j;->c()Z

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/roblox/client/a;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 1074
    :cond_7
    iget-object v0, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    const-string v3, "UNIVERSAL_FRIENDS_TAG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1075
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/roblox/client/friends/ActivityUniversalFriends;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x2782

    .line 1076
    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/ActivityNativeMain;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 1078
    :cond_8
    iget-object v0, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    const-string v3, "ANIMATED_ASSET_DETAILS_TAG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1081
    iget-object v0, p1, Lcom/roblox/client/l/j;->b:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/u;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "catalog/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/roblox/client/l/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1086
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/u;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 1089
    sget v0, Lcom/roblox/client/o$j;->CommonUI_Features_Label_ViewDetails:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p1, Lcom/roblox/client/l/j;->c:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/roblox/client/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto/16 :goto_3

    .line 1091
    :cond_a
    iget-object v0, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    const-string v2, "FRIEND_FINDER_TAG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1092
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/roblox/client/friends/ActivityUniversalFriends;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x2785

    .line 1093
    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/ActivityNativeMain;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 1095
    :cond_b
    iget-object v0, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    const-string v2, "CAPTCHA_SUCCESS_TAG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "NavigateToFeature: Received \'CAPTCHA_SUCCESS\' tag. Do nothing for now."

    .line 1096
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1098
    :cond_c
    iget-object v0, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    const-string v1, "CAPTCHA_TAG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1099
    invoke-virtual {p1}, Lcom/roblox/client/l/j;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/roblox/client/ActivityNativeMain;->g(Ljava/lang/String;)V

    goto :goto_3

    .line 1102
    :cond_d
    iget-object v0, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/roblox/client/feature/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/roblox/client/l/j;->b:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/roblox/client/ActivityNativeMain;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_e
    :goto_1
    const/4 v0, 0x0

    .line 1030
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/roblox/client/l/j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_2

    :catch_0
    const-string v2, "Exception parsing data onNavigateToFeatureEvent CUSTOM_WEBVIEW_TAG"

    .line 1033
    invoke-static {v1, v2}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz v0, :cond_12

    const-string v2, "title"

    .line 1037
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "url"

    .line 1038
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1039
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    .line 1040
    iget-object v1, p1, Lcom/roblox/client/l/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/roblox/client/b;->bV()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1041
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1042
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1043
    invoke-virtual {p0, p1}, Lcom/roblox/client/ActivityNativeMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 1045
    :cond_f
    iget-boolean p1, p1, Lcom/roblox/client/l/j;->c:Z

    if-nez p1, :cond_10

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1046
    invoke-static {p0, v4, v2, p1, v0}, Lcom/roblox/client/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_3

    :cond_10
    const-string p1, "searchParams"

    .line 1051
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1052
    invoke-static {p0, v4, v2, p1}, Lcom/roblox/client/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_3

    :cond_11
    const-string p1, "URL must not be empty onNavigateToFeatureEvent CUSTOM_WEBVIEW_TAG"

    .line 1055
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_3
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 277
    invoke-super {p0}, Lcom/roblox/client/q;->onPause()V

    .line 279
    invoke-static {}, Lcom/roblox/client/s/e;->a()Lcom/roblox/client/s/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/s/e;->b(Lcom/roblox/client/s/e$b;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 251
    invoke-super {p0}, Lcom/roblox/client/q;->onResume()V

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume: IsLoggedIn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/s/h;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.main"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {}, Lcom/roblox/client/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Alert: needs restart due to settings changed."

    .line 255
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->G()V

    return-void

    .line 260
    :cond_0
    invoke-static {}, Lcom/roblox/client/locale/b;->a()Lcom/roblox/client/locale/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/locale/b;->b()Lcom/roblox/client/locale/f;

    move-result-object v0

    .line 261
    iget-object v2, p0, Lcom/roblox/client/ActivityNativeMain;->y:Lcom/roblox/client/locale/f;

    if-eq v2, v0, :cond_1

    .line 262
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->y:Lcom/roblox/client/locale/f;

    const-string v0, "onResume: Recreating activity due to Locale change."

    .line 263
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->recreate()V

    return-void

    .line 268
    :cond_1
    invoke-static {}, Lcom/roblox/client/x/c;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->Z()V

    goto :goto_0

    .line 270
    :cond_2
    invoke-static {}, Lcom/roblox/client/b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->P()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 326
    iget-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->v:Z

    const-string v1, "BACK_FROM_GAME"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 327
    iget-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->w:Z

    const-string v1, "CHOOSE_ADV_SHOWN"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 330
    invoke-super {p0, p1}, Lcom/roblox/client/q;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 237
    invoke-super {p0}, Lcom/roblox/client/q;->onStart()V

    .line 238
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/roblox/client/x;->a:Landroid/util/DisplayMetrics;

    .line 240
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 241
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {p0}, Lcom/roblox/client/realtime/RealtimeService;->a(Landroid/content/Context;)Landroid/content/ServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->u:Landroid/content/ServiceConnection;

    .line 245
    :cond_0
    invoke-static {}, Lcom/roblox/platform/http/g;->a()Lcom/roblox/platform/http/g;

    move-result-object v0

    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/g;->a(Lcom/roblox/platform/http/g$a;)V

    const-string v0, "main"

    .line 246
    invoke-static {v0}, Lcom/roblox/client/p;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 284
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    .line 285
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->u:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 286
    invoke-static {v0}, Lcom/roblox/client/realtime/RealtimeService;->a(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->u:Landroid/content/ServiceConnection;

    .line 289
    :cond_0
    invoke-static {}, Lcom/roblox/platform/http/g;->a()Lcom/roblox/platform/http/g;

    move-result-object v0

    invoke-static {}, Lcom/roblox/client/game/b;->a()Lcom/roblox/client/game/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/platform/http/g;->b(Lcom/roblox/platform/http/g$a;)V

    .line 291
    invoke-super {p0}, Lcom/roblox/client/q;->onStop()V

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public q()V
    .locals 2

    const-string v0, "rbx.main"

    const-string v1, "updateViewAppSettingsLoaded:"

    .line 1189
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->N()V

    return-void
.end method

.method public r()V
    .locals 2

    const-string v0, "rbx.main"

    const-string v1, "showRetryUI:"

    .line 1195
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1197
    sget v0, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_ConnectionError:I

    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->d(I)V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method public t()V
    .locals 0

    return-void
.end method

.method public u()V
    .locals 3

    const-string v0, "rbx.main"

    const-string v1, "navigateToLandingScreen:"

    .line 1206
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    invoke-static {}, Lcom/roblox/client/l;->a()Lcom/roblox/client/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/l;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "send_app_input_focus_to_lua"

    const/4 v2, 0x1

    .line 1208
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1209
    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->startActivity(Landroid/content/Intent;)V

    .line 1210
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->finish()V

    return-void
.end method

.method public v()V
    .locals 2

    .line 1215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "navigateToMainScreen: IsLoggedIn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/s/h;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.main"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->N()V

    .line 1218
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/s/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->P()V

    .line 1220
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->u:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 1221
    invoke-static {p0}, Lcom/roblox/client/realtime/RealtimeService;->a(Landroid/content/Context;)Landroid/content/ServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->u:Landroid/content/ServiceConnection;

    :cond_0
    return-void
.end method

.method public w()V
    .locals 3

    const-string v0, "rbx.main"

    const-string v1, "onAppStarted: "

    .line 1268
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/roblox/client/s/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    new-instance v0, Lcom/roblox/client/ActivityNativeMain$a;

    invoke-direct {v0, p0}, Lcom/roblox/client/ActivityNativeMain$a;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    .line 1271
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/ActivityNativeMain$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method protected x()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public y()V
    .locals 0

    .line 1287
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->aa()V

    .line 1288
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->Z()V

    return-void
.end method

.method public z()V
    .locals 0

    .line 1293
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->aa()V

    .line 1294
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->Z()V

    return-void
.end method
