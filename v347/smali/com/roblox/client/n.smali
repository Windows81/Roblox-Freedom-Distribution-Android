.class public Lcom/roblox/client/n;
.super Lcom/roblox/client/m;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/n$b;,
        Lcom/roblox/client/n$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field final c:Lcom/roblox/client/purchase/c;

.field final d:Lcom/roblox/client/purchase/c;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/webkit/WebView;

.field private g:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Landroid/app/ProgressDialog;

.field private n:Z

.field private o:Lcom/roblox/client/n$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/roblox/client/m;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/roblox/client/n;->e:Landroid/widget/TextView;

    .line 62
    iput-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    .line 63
    iput-object v0, p0, Lcom/roblox/client/n;->g:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 64
    iput-object v0, p0, Lcom/roblox/client/n;->a:Ljava/lang/String;

    .line 65
    iput v1, p0, Lcom/roblox/client/n;->h:I

    .line 66
    iput v1, p0, Lcom/roblox/client/n;->i:I

    .line 67
    iput-boolean v1, p0, Lcom/roblox/client/n;->j:Z

    .line 68
    iput-boolean v1, p0, Lcom/roblox/client/n;->k:Z

    .line 69
    iput-object v0, p0, Lcom/roblox/client/n;->b:Ljava/lang/String;

    .line 630
    new-instance v0, Lcom/roblox/client/n$3;

    invoke-direct {v0, p0}, Lcom/roblox/client/n$3;-><init>(Lcom/roblox/client/n;)V

    iput-object v0, p0, Lcom/roblox/client/n;->c:Lcom/roblox/client/purchase/c;

    .line 653
    new-instance v0, Lcom/roblox/client/n$4;

    invoke-direct {v0, p0}, Lcom/roblox/client/n$4;-><init>(Lcom/roblox/client/n;)V

    iput-object v0, p0, Lcom/roblox/client/n;->d:Lcom/roblox/client/purchase/c;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 98
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 103
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 104
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 105
    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/n;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/roblox/client/n;->g:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/n;Lcom/roblox/client/purchase/d;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/roblox/client/n;->a(Lcom/roblox/client/purchase/d;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/n;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/n;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Lcom/roblox/client/purchase/d;)V
    .locals 2

    .prologue
    .line 673
    invoke-direct {p0}, Lcom/roblox/client/n;->e()V

    .line 675
    invoke-virtual {p0}, Lcom/roblox/client/n;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    .line 676
    if-nez v0, :cond_0

    .line 689
    :goto_0
    return-void

    .line 680
    :cond_0
    invoke-virtual {p1, v0}, Lcom/roblox/client/purchase/d;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 682
    invoke-virtual {p1}, Lcom/roblox/client/purchase/d;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 683
    invoke-virtual {p0, v0}, Lcom/roblox/client/n;->contactSupport(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 687
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/n;->alertMessageFromServerOkButton(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 367
    const-string v0, "sponsored"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 373
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/roblox/client/n;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/roblox/client/n;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/roblox/client/n;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic c(Lcom/roblox/client/n;)Lcom/roblox/client/n$a;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/roblox/client/n;->o:Lcom/roblox/client/n$a;

    return-object v0
.end method

.method static synthetic d(Lcom/roblox/client/n;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/roblox/client/n;->n:Z

    return v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 343
    const/4 v1, 0x0

    .line 344
    const-string v2, "mailto:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 346
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 352
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 354
    const/4 v0, 0x0

    .line 362
    :goto_1
    return v0

    .line 347
    :cond_1
    const-string v2, "tel:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 355
    :cond_2
    invoke-virtual {p0}, Lcom/roblox/client/n;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/roblox/client/util/h;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 357
    invoke-virtual {p0, v1}, Lcom/roblox/client/n;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 361
    :cond_3
    const v1, 0x7f0e0129

    invoke-virtual {p0, v1, v0}, Lcom/roblox/client/n;->showToast(II)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/roblox/client/n;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/roblox/client/n;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/roblox/client/n;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    const v1, 0x7f0e01b1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 93
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/roblox/client/q/d;->j()I

    move-result v4

    invoke-static {v4}, Lcom/roblox/client/purchase/e;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 92
    invoke-virtual {p0, v1, v2}, Lcom/roblox/client/n;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/roblox/client/n;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/roblox/client/n;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/roblox/client/n;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    .line 110
    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/n;->m:Landroid/app/ProgressDialog;

    if-nez v1, :cond_1

    .line 115
    const/4 v1, 0x0

    const v2, 0x7f0e0123

    invoke-virtual {p0, v2}, Lcom/roblox/client/n;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/roblox/client/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/n;->m:Landroid/app/ProgressDialog;

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/n;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/roblox/client/n;->m:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/n;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/roblox/client/n;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 124
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/roblox/client/n;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/roblox/client/n;->e()V

    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/roblox/client/n;->k:Z

    if-eqz v0, :cond_0

    .line 606
    const-string v0, "buildersClub"

    .line 612
    :goto_0
    return-object v0

    .line 608
    :cond_0
    iget-boolean v0, p0, Lcom/roblox/client/n;->j:Z

    if-eqz v0, :cond_1

    .line 609
    const-string v0, "robux"

    goto :goto_0

    .line 612
    :cond_1
    const-string v0, "undefinedWebContext"

    goto :goto_0
.end method

.method static synthetic h(Lcom/roblox/client/n;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/roblox/client/n;->f()V

    return-void
.end method

.method static synthetic i(Lcom/roblox/client/n;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/roblox/client/n;->g()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/roblox/client/n;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/roblox/client/n;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/k;

    invoke-virtual {v0}, Lcom/roblox/client/k;->p()Z

    move-result v0

    if-nez v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/n;->g:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_0
.end method

.method public a(Landroid/webkit/WebView;I)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public a(Lcom/roblox/client/n$a;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/roblox/client/n;->o:Lcom/roblox/client/n$a;

    .line 85
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/roblox/client/n;->a:Ljava/lang/String;

    .line 572
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 561
    iput-object p1, p0, Lcom/roblox/client/n;->a:Ljava/lang/String;

    .line 565
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 578
    iget-object v1, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/roblox/client/n;->a(Ljava/lang/String;Z)V

    .line 580
    iget-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 581
    const/4 v0, 0x1

    .line 583
    :cond_0
    return v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/n;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/roblox/client/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 591
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 499
    invoke-super {p0, p1}, Lcom/roblox/client/m;->onCreate(Landroid/os/Bundle;)V

    .line 501
    invoke-static {}, Lcom/roblox/a/a/b;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 503
    invoke-virtual {p0}, Lcom/roblox/client/n;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 504
    if-eqz v0, :cond_1

    .line 505
    const-string v1, "DEFAULT_URL"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 506
    const-string v2, "rbx.web"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: default-URL = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    if-eqz v1, :cond_0

    .line 508
    iput-object v1, p0, Lcom/roblox/client/n;->b:Ljava/lang/String;

    .line 509
    iget-object v2, p0, Lcom/roblox/client/n;->a:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 511
    iput-object v1, p0, Lcom/roblox/client/n;->a:Ljava/lang/String;

    .line 514
    :cond_0
    const-string v1, "WEB_VIEW_TAG"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/n;->l:Ljava/lang/String;

    .line 516
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 378
    const v0, 0x7f0a0073

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 380
    const v0, 0x7f080202

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roblox/client/n;->e:Landroid/widget/TextView;

    .line 382
    new-instance v2, Lcom/roblox/client/n$b;

    invoke-direct {v2, p0, v4}, Lcom/roblox/client/n$b;-><init>(Lcom/roblox/client/n;Lcom/roblox/client/n$1;)V

    .line 383
    const v0, 0x7f080201

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    .line 385
    iget-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/roblox/client/n;->l:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    .line 386
    iget-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 387
    iget-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    new-instance v2, Lcom/roblox/client/n$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/n$1;-><init>(Lcom/roblox/client/n;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 394
    iget-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 395
    iget-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->userAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 397
    iget-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 398
    iget-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 401
    iget-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 402
    iget-object v2, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 403
    iget-object v2, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    .line 404
    iget-object v3, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 406
    const-string v0, "Chrome/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    :cond_0
    invoke-static {}, Lcom/roblox/client/d/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 411
    iget-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    invoke-static {v6}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/n;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/roblox/client/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 416
    iput-object v4, p0, Lcom/roblox/client/n;->a:Ljava/lang/String;

    .line 419
    :cond_2
    const v0, 0x7f0801be

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/roblox/client/n;->g:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 420
    iget-object v0, p0, Lcom/roblox/client/n;->g:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$b;)V

    .line 421
    iget-object v0, p0, Lcom/roblox/client/n;->g:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 428
    invoke-virtual {p0}, Lcom/roblox/client/n;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_5

    .line 431
    const-string v2, "showRobux"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 433
    iput-boolean v6, p0, Lcom/roblox/client/n;->j:Z

    .line 434
    invoke-direct {p0}, Lcom/roblox/client/n;->e()V

    .line 436
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v2

    new-instance v3, Lcom/roblox/client/n$2;

    invoke-direct {v3, p0}, Lcom/roblox/client/n$2;-><init>(Lcom/roblox/client/n;)V

    new-instance v4, Lcom/roblox/client/http/h;

    invoke-direct {v4}, Lcom/roblox/client/http/h;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/roblox/client/i/h;->a(Lcom/roblox/client/i/h$a;Lcom/roblox/client/http/f;)V

    .line 447
    :cond_3
    :goto_0
    const-string v2, "dialogHeight"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/roblox/client/n;->h:I

    .line 448
    const-string v2, "dialogWidth"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/roblox/client/n;->i:I

    .line 449
    const-string v2, "enablePullToRefresh"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 450
    iget-object v2, p0, Lcom/roblox/client/n;->g:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v2, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 453
    :cond_4
    const-string v2, "USING_LOGIN_WEB_URL"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/roblox/client/n;->n:Z

    .line 459
    :cond_5
    invoke-virtual {p0}, Lcom/roblox/client/n;->alertIfNetworkNotConnected()Z

    .line 463
    return-object v1

    .line 443
    :cond_6
    const-string v2, "showBC"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 444
    iput-boolean v6, p0, Lcom/roblox/client/n;->k:Z

    goto :goto_0

    .line 421
    :array_0
    .array-data 4
        0x7f050017
        0x7f050017
        0x7f0500b2
        0x7f0500b2
    .end array-data
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 534
    invoke-static {}, Lcom/roblox/a/a/b;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    .line 535
    invoke-super {p0}, Lcom/roblox/client/m;->onDestroy()V

    .line 536
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 595
    invoke-super {p0, p1}, Lcom/roblox/client/m;->onDismiss(Landroid/content/DialogInterface;)V

    .line 596
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 598
    iget-boolean v0, p0, Lcom/roblox/client/n;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/roblox/client/n;->j:Z

    if-eqz v0, :cond_1

    .line 599
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/n;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :cond_1
    return-void
.end method

.method public onEmitRbHybridEvent(Lcom/roblox/a/a/a;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 623
    iget-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    instance-of v0, v0, Lcom/roblox/client/hybrid/RBHybridWebView;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    check-cast v0, Lcom/roblox/client/hybrid/RBHybridWebView;

    iget-object v1, p1, Lcom/roblox/a/a/a;->a:Lcom/roblox/a/b;

    invoke-virtual {v0, v1}, Lcom/roblox/client/hybrid/RBHybridWebView;->a(Lcom/roblox/a/b;)V

    .line 626
    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .prologue
    .line 487
    invoke-super {p0, p1}, Lcom/roblox/client/m;->onHiddenChanged(Z)V

    .line 489
    if-nez p1, :cond_0

    .line 490
    invoke-static {}, Lcom/roblox/client/f/f;->a()Lcom/roblox/client/f/f;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    .line 491
    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 490
    invoke-virtual {v0, v1}, Lcom/roblox/client/f/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/roblox/client/n;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 495
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 542
    invoke-super {p0}, Lcom/roblox/client/m;->onPause()V

    .line 543
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 469
    invoke-super {p0}, Lcom/roblox/client/m;->onResume()V

    .line 471
    invoke-virtual {p0}, Lcom/roblox/client/n;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/roblox/client/n;->h:I

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/roblox/client/n;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_0

    .line 476
    iget v1, p0, Lcom/roblox/client/n;->i:I

    if-nez v1, :cond_1

    .line 477
    const/4 v1, -0x2

    iget v2, p0, Lcom/roblox/client/n;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget v1, p0, Lcom/roblox/client/n;->i:I

    iget v2, p0, Lcom/roblox/client/n;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 618
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 520
    invoke-super {p0}, Lcom/roblox/client/m;->onStart()V

    .line 521
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 525
    invoke-super {p0}, Lcom/roblox/client/m;->onStop()V

    .line 530
    return-void
.end method
