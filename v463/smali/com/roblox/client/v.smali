.class public Lcom/roblox/client/v;
.super Lcom/roblox/client/s;
.source "SourceFile"

# interfaces
.implements Landroidx/j/a/c$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/v$c;,
        Lcom/roblox/client/v$a;,
        Lcom/roblox/client/v$b;
    }
.end annotation


# instance fields
.field private aA:Landroidx/j/a/c;

.field private aB:I

.field private aC:I

.field private aD:Z

.field private aE:Z

.field private aF:Ljava/lang/String;

.field private aG:Landroid/app/ProgressDialog;

.field private aH:Z

.field private aI:Lcom/roblox/client/v$b;

.field private aJ:Z

.field private aK:Z

.field private aL:Lcom/roblox/client/app/b;

.field private final aM:Lcom/roblox/client/purchase/e;

.field protected as:Lcom/roblox/client/hybrid/RBHybridWebView;

.field protected at:Ljava/lang/String;

.field protected au:Ljava/lang/String;

.field protected av:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected aw:Z

.field final ax:Lcom/roblox/client/purchase/e;

.field final ay:Lcom/roblox/client/purchase/e;

.field private az:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/roblox/client/s;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/roblox/client/v;->az:Landroid/widget/TextView;

    .line 78
    iput-object v0, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    .line 79
    iput-object v0, p0, Lcom/roblox/client/v;->aA:Landroidx/j/a/c;

    .line 80
    iput-object v0, p0, Lcom/roblox/client/v;->at:Ljava/lang/String;

    const/4 v1, 0x0

    .line 81
    iput v1, p0, Lcom/roblox/client/v;->aB:I

    .line 82
    iput v1, p0, Lcom/roblox/client/v;->aC:I

    .line 83
    iput-boolean v1, p0, Lcom/roblox/client/v;->aD:Z

    .line 84
    iput-boolean v1, p0, Lcom/roblox/client/v;->aE:Z

    .line 85
    iput-object v0, p0, Lcom/roblox/client/v;->au:Ljava/lang/String;

    .line 94
    iput-boolean v1, p0, Lcom/roblox/client/v;->aJ:Z

    .line 95
    iput-boolean v1, p0, Lcom/roblox/client/v;->aK:Z

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/roblox/client/v;->aw:Z

    .line 796
    new-instance v0, Lcom/roblox/client/v$3;

    invoke-direct {v0, p0}, Lcom/roblox/client/v$3;-><init>(Lcom/roblox/client/v;)V

    iput-object v0, p0, Lcom/roblox/client/v;->ax:Lcom/roblox/client/purchase/e;

    .line 822
    new-instance v0, Lcom/roblox/client/v$4;

    invoke-direct {v0, p0}, Lcom/roblox/client/v$4;-><init>(Lcom/roblox/client/v;)V

    iput-object v0, p0, Lcom/roblox/client/v;->ay:Lcom/roblox/client/purchase/e;

    .line 841
    new-instance v0, Lcom/roblox/client/v$5;

    invoke-direct {v0, p0}, Lcom/roblox/client/v$5;-><init>(Lcom/roblox/client/v;)V

    iput-object v0, p0, Lcom/roblox/client/v;->aM:Lcom/roblox/client/purchase/e;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 1

    .line 124
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 127
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 128
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const/4 p1, 0x0

    .line 129
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    const/4 p1, 0x0

    .line 130
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/v;)Landroidx/j/a/c;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/roblox/client/v;->aA:Landroidx/j/a/c;

    return-object p0
.end method

.method private a(Lcom/roblox/client/purchase/f;)V
    .locals 1

    .line 865
    invoke-direct {p0}, Lcom/roblox/client/v;->au()V

    .line 867
    invoke-virtual {p0}, Lcom/roblox/client/v;->r()Landroidx/fragment/app/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 872
    :cond_0
    invoke-virtual {p1, v0}, Lcom/roblox/client/purchase/f;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 874
    invoke-virtual {p1}, Lcom/roblox/client/purchase/f;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 875
    invoke-virtual {p0, v0}, Lcom/roblox/client/v;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 879
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/v;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/v;Lcom/roblox/client/purchase/f;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/roblox/client/v;->a(Lcom/roblox/client/purchase/f;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/v;Ljava/lang/String;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/v;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "sponsored"

    .line 466
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 467
    iget-object p1, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    invoke-virtual {p1}, Lcom/roblox/client/hybrid/RBHybridWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    goto :goto_0

    .line 470
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    invoke-virtual {p1}, Lcom/roblox/client/hybrid/RBHybridWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/v;Ljava/lang/String;)Z
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/roblox/client/v;->h(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private au()V
    .locals 5

    .line 116
    invoke-virtual {p0}, Lcom/roblox/client/v;->c()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    sget v1, Lcom/roblox/client/o$j;->Purchasing_RobloxProducts_Label_RobuxBalance:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 119
    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/roblox/client/ad/c;->j()I

    move-result v4

    invoke-static {v4}, Lcom/roblox/client/purchase/g;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 118
    invoke-virtual {p0, v1, v2}, Lcom/roblox/client/v;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private av()V
    .locals 3

    .line 135
    invoke-virtual {p0}, Lcom/roblox/client/v;->r()Landroidx/fragment/app/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/v;->aG:Landroid/app/ProgressDialog;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 141
    sget v2, Lcom/roblox/client/o$j;->CommonUI_Messages_Label_Working_InProgress:I

    invoke-virtual {p0, v2}, Lcom/roblox/client/v;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/roblox/client/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/v;->aG:Landroid/app/ProgressDialog;

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/v;->aG:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private aw()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/roblox/client/v;->aG:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/roblox/client/v;->aG:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private ax()Ljava/lang/String;
    .locals 1

    .line 764
    iget-boolean v0, p0, Lcom/roblox/client/v;->aE:Z

    if-eqz v0, :cond_0

    const-string v0, "buildersClub"

    return-object v0

    .line 767
    :cond_0
    iget-boolean v0, p0, Lcom/roblox/client/v;->aD:Z

    if-eqz v0, :cond_1

    const-string v0, "robux"

    return-object v0

    :cond_1
    const-string v0, "undefinedWebContext"

    return-object v0
.end method

.method static synthetic b(Lcom/roblox/client/v;)Lcom/roblox/client/v$b;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/roblox/client/v;->aI:Lcom/roblox/client/v$b;

    return-object p0
.end method

.method static synthetic b(Lcom/roblox/client/v;Ljava/lang/String;)Z
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/roblox/client/v;->g(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/roblox/client/v;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/roblox/client/v;->aH:Z

    return p0
.end method

.method static synthetic d(Lcom/roblox/client/v;)Lcom/roblox/client/purchase/e;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/roblox/client/v;->aM:Lcom/roblox/client/purchase/e;

    return-object p0
.end method

.method static synthetic e(Lcom/roblox/client/v;)Ljava/lang/String;
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/roblox/client/v;->ax()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/roblox/client/v;)Landroid/widget/TextView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/roblox/client/v;->az:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/roblox/client/v;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/roblox/client/v;->au()V

    return-void
.end method

.method private g(Ljava/lang/String;)Z
    .locals 3

    .line 426
    invoke-static {}, Lcom/roblox/client/m/c;->a()Lcom/roblox/client/m/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/m/e;->cU()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 430
    :cond_0
    new-instance v0, Lcom/roblox/client/z/c;

    const-string v2, "rbx.web"

    invoke-direct {v0, v2}, Lcom/roblox/client/z/c;-><init>(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v0, p1}, Lcom/roblox/client/z/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    invoke-virtual {p0}, Lcom/roblox/client/v;->r()Landroidx/fragment/app/c;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p1}, Lcom/roblox/client/z/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method static synthetic h(Lcom/roblox/client/v;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/roblox/client/v;->av()V

    return-void
.end method

.method private h(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "mailto:"

    .line 443
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const-string v0, "tel:"

    .line 446
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const/4 p1, 0x0

    return p1

    .line 454
    :cond_2
    invoke-virtual {p0}, Lcom/roblox/client/v;->p()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/roblox/client/ae/l;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 456
    invoke-virtual {p0, v0}, Lcom/roblox/client/v;->a(Landroid/content/Intent;)V

    return v1

    .line 460
    :cond_3
    sget p1, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_NoOpenLinkAppInstalled:I

    invoke-virtual {p0, p1, v1}, Lcom/roblox/client/v;->c(II)V

    return v1
.end method

.method static synthetic i(Lcom/roblox/client/v;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/roblox/client/v;->aw()V

    return-void
.end method

.method static synthetic j(Lcom/roblox/client/v;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/roblox/client/v;->aE:Z

    return p0
.end method


# virtual methods
.method public F()V
    .locals 3

    .line 613
    invoke-super {p0}, Lcom/roblox/client/s;->F()V

    .line 615
    invoke-virtual {p0}, Lcom/roblox/client/v;->c()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/roblox/client/v;->aB:I

    if-eqz v0, :cond_1

    .line 618
    invoke-virtual {p0}, Lcom/roblox/client/v;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 620
    iget v1, p0, Lcom/roblox/client/v;->aC:I

    if-nez v1, :cond_0

    const/4 v1, -0x2

    .line 621
    iget v2, p0, Lcom/roblox/client/v;->aB:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    .line 623
    :cond_0
    iget v2, p0, Lcom/roblox/client/v;->aB:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 629
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    if-eqz v0, :cond_2

    .line 630
    invoke-virtual {v0}, Lcom/roblox/client/hybrid/RBHybridWebView;->onResume()V

    :cond_2
    return-void
.end method

.method public G()V
    .locals 1

    .line 695
    invoke-super {p0}, Lcom/roblox/client/s;->G()V

    .line 699
    iget-object v0, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {v0}, Lcom/roblox/client/hybrid/RBHybridWebView;->onPause()V

    :cond_0
    return-void
.end method

.method public H()V
    .locals 1

    .line 687
    invoke-static {}, Lcom/roblox/a/a/b;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    .line 688
    invoke-super {p0}, Lcom/roblox/client/s;->H()V

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 491
    sget p3, Lcom/roblox/client/o$g;->fragment_webview:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 493
    sget p2, Lcom/roblox/client/o$f;->swipe_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 495
    sget p3, Lcom/roblox/client/o$f;->webview_urlbar:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/roblox/client/v;->az:Landroid/widget/TextView;

    .line 497
    new-instance p3, Lcom/roblox/client/v$c;

    invoke-direct {p3, p0}, Lcom/roblox/client/v$c;-><init>(Lcom/roblox/client/v;)V

    .line 498
    invoke-virtual {p0}, Lcom/roblox/client/v;->ar()Lcom/roblox/client/hybrid/RBHybridWebView;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    .line 499
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    iget-object p2, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    iget-object v1, p0, Lcom/roblox/client/v;->aF:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/roblox/client/hybrid/RBHybridWebView;->setTag(Ljava/lang/Object;)V

    .line 502
    iget-object p2, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    invoke-virtual {p2, p3}, Lcom/roblox/client/hybrid/RBHybridWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 503
    iget-object p2, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    new-instance p3, Lcom/roblox/client/v$1;

    invoke-direct {p3, p0}, Lcom/roblox/client/v$1;-><init>(Lcom/roblox/client/v;)V

    invoke-virtual {p2, p3}, Lcom/roblox/client/hybrid/RBHybridWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 521
    iget-object p2, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    invoke-virtual {p2}, Lcom/roblox/client/hybrid/RBHybridWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 522
    iget-object p2, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    invoke-virtual {p2}, Lcom/roblox/client/hybrid/RBHybridWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-static {}, Lcom/roblox/client/u;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 523
    iget-object p2, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    invoke-virtual {p2}, Lcom/roblox/client/hybrid/RBHybridWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 524
    iget-object p2, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    invoke-virtual {p2, v0}, Lcom/roblox/client/hybrid/RBHybridWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 525
    iget-object p2, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    invoke-virtual {p2, v0}, Lcom/roblox/client/hybrid/RBHybridWebView;->setVerticalScrollBarEnabled(Z)V

    .line 528
    iget-object p2, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    invoke-virtual {p2}, Lcom/roblox/client/hybrid/RBHybridWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p2

    .line 529
    iget-object v1, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    invoke-virtual {v1}, Lcom/roblox/client/hybrid/RBHybridWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    invoke-virtual {v1}, Lcom/roblox/client/hybrid/RBHybridWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    .line 531
    iget-object v3, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    invoke-virtual {v3}, Lcom/roblox/client/hybrid/RBHybridWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    const-string p2, "Chrome/"

    .line 533
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 537
    invoke-static {}, Lcom/roblox/client/i/b;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt p2, v1, :cond_0

    .line 538
    invoke-static {p3}, Lcom/roblox/client/hybrid/RBHybridWebView;->setWebContentsDebuggingEnabled(Z)V

    .line 541
    :cond_0
    iget-object p2, p0, Lcom/roblox/client/v;->at:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 542
    iget-object v1, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    invoke-virtual {v1, p2}, Lcom/roblox/client/hybrid/RBHybridWebView;->loadUrl(Ljava/lang/String;)V

    .line 543
    iput-object v2, p0, Lcom/roblox/client/v;->at:Ljava/lang/String;

    .line 546
    :cond_1
    sget p2, Lcom/roblox/client/o$f;->swipe_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/j/a/c;

    iput-object p2, p0, Lcom/roblox/client/v;->aA:Landroidx/j/a/c;

    .line 547
    invoke-virtual {p2, p0}, Landroidx/j/a/c;->setOnRefreshListener(Landroidx/j/a/c$b;)V

    .line 548
    iget-object p2, p0, Lcom/roblox/client/v;->aA:Landroidx/j/a/c;

    const/4 v1, 0x4

    new-array v1, v1, [I

    sget v2, Lcom/roblox/client/o$c;->RbxRed1:I

    aput v2, v1, v0

    sget v2, Lcom/roblox/client/o$c;->RbxRed1:I

    aput v2, v1, p3

    const/4 v2, 0x2

    sget v3, Lcom/roblox/client/o$c;->white:I

    aput v3, v1, v2

    const/4 v2, 0x3

    sget v3, Lcom/roblox/client/o$c;->white:I

    aput v3, v1, v2

    invoke-virtual {p2, v1}, Landroidx/j/a/c;->setColorSchemeResources([I)V

    .line 555
    invoke-virtual {p0}, Lcom/roblox/client/v;->n()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string v1, "showRobux"

    .line 558
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 560
    iput-boolean p3, p0, Lcom/roblox/client/v;->aD:Z

    .line 561
    invoke-direct {p0}, Lcom/roblox/client/v;->au()V

    .line 563
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object v1

    new-instance v2, Lcom/roblox/client/v$2;

    invoke-direct {v2, p0}, Lcom/roblox/client/v$2;-><init>(Lcom/roblox/client/v;)V

    new-instance v3, Lcom/roblox/client/http/h;

    invoke-direct {v3}, Lcom/roblox/client/http/h;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/roblox/client/s/h;->a(Lcom/roblox/client/s/h$a;Lcom/roblox/client/http/f;)V

    goto :goto_0

    :cond_2
    const-string v1, "showBC"

    .line 570
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 571
    iput-boolean p3, p0, Lcom/roblox/client/v;->aE:Z

    :cond_3
    :goto_0
    const-string v1, "dialogHeight"

    .line 574
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/roblox/client/v;->aB:I

    const-string v1, "dialogWidth"

    .line 575
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/roblox/client/v;->aC:I

    const-string v1, "enablePullToRefresh"

    .line 576
    invoke-virtual {p2, v1, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 577
    iget-object v1, p0, Lcom/roblox/client/v;->aA:Landroidx/j/a/c;

    invoke-virtual {v1, v0}, Landroidx/j/a/c;->setEnabled(Z)V

    :cond_4
    const-string v1, "USING_LOGIN_WEB_URL"

    .line 580
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/roblox/client/v;->aH:Z

    const-string v1, "VISIBLE"

    .line 581
    invoke-virtual {p2, v1, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/roblox/client/v;->aw:Z

    const-string p3, "BACK_NAVIGATION_DISABLED"

    .line 582
    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/roblox/client/v;->aK:Z

    .line 588
    :cond_5
    invoke-virtual {p0}, Lcom/roblox/client/v;->ap()Z

    .line 590
    iget-object p2, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    invoke-virtual {p2}, Lcom/roblox/client/hybrid/RBHybridWebView;->a()V

    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x278b

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/net/Uri;

    const/4 p2, 0x0

    .line 602
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    aput-object p3, p1, p2

    .line 603
    iget-object p2, p0, Lcom/roblox/client/v;->av:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "rbx.web"

    const-string p2, "Result of file chooser invalid."

    .line 605
    invoke-static {p1, p2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object p1, p0, Lcom/roblox/client/v;->av:Landroid/webkit/ValueCallback;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/roblox/client/ab/e;)V
    .locals 2

    .line 789
    invoke-super {p0, p1}, Lcom/roblox/client/s;->a(Lcom/roblox/client/ab/e;)V

    .line 791
    iget-object p1, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    iget-object v0, p0, Lcom/roblox/client/v;->aL:Lcom/roblox/client/app/b;

    invoke-static {}, Lcom/roblox/client/ad/c;->a()Lcom/roblox/client/ad/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/ad/c;->m()Lcom/roblox/client/ab/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/app/b;->a(Lcom/roblox/client/ab/e;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/roblox/client/hybrid/RBHybridWebView;->setBackgroundColor(I)V

    return-void
.end method

.method public a(Lcom/roblox/client/app/d;)V
    .locals 1

    .line 164
    iget-object v0, p1, Lcom/roblox/client/app/d;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p1, Lcom/roblox/client/app/d;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/v;->m(Z)V

    .line 168
    :cond_0
    iget-object v0, p1, Lcom/roblox/client/app/d;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 169
    iget-object p1, p1, Lcom/roblox/client/app/d;->e:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/v;->n(Z)V

    :cond_1
    return-void
.end method

.method public a(Lcom/roblox/client/v$b;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/roblox/client/v;->aI:Lcom/roblox/client/v$b;

    return-void
.end method

.method public aq()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/roblox/client/v;->aK:Z

    return v0
.end method

.method public ar()Lcom/roblox/client/hybrid/RBHybridWebView;
    .locals 2

    .line 475
    iget-boolean v0, p0, Lcom/roblox/client/v;->aJ:Z

    if-eqz v0, :cond_0

    .line 476
    new-instance v0, Lcom/roblox/client/hybrid/a;

    invoke-virtual {p0}, Lcom/roblox/client/v;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/roblox/client/hybrid/a;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 478
    :cond_0
    new-instance v0, Lcom/roblox/client/hybrid/RBHybridWebView;

    invoke-virtual {p0}, Lcom/roblox/client/v;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/roblox/client/hybrid/RBHybridWebView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public as()Ljava/lang/String;
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    if-nez v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/roblox/client/v;->at:Ljava/lang/String;

    return-object v0

    .line 731
    :cond_0
    invoke-virtual {v0}, Lcom/roblox/client/hybrid/RBHybridWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public at()Z
    .locals 2

    .line 737
    iget-object v0, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/roblox/client/hybrid/RBHybridWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    invoke-virtual {v0}, Lcom/roblox/client/hybrid/RBHybridWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/v;->a(Ljava/lang/String;Z)V

    .line 739
    iget-object v0, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    invoke-virtual {v0}, Lcom/roblox/client/hybrid/RBHybridWebView;->goBack()V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4

    .line 648
    invoke-super {p0, p1}, Lcom/roblox/client/s;->b(Landroid/os/Bundle;)V

    .line 650
    invoke-static {}, Lcom/roblox/a/a/b;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 652
    invoke-virtual {p0}, Lcom/roblox/client/v;->n()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "DEFAULT_URL"

    const/4 v1, 0x0

    .line 654
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate: default-URL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rbx.web"

    invoke-static {v3, v2}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 657
    iput-object v0, p0, Lcom/roblox/client/v;->au:Ljava/lang/String;

    .line 658
    iget-object v2, p0, Lcom/roblox/client/v;->at:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 660
    iput-object v0, p0, Lcom/roblox/client/v;->at:Ljava/lang/String;

    :cond_0
    const-string v0, "WEB_VIEW_TAG"

    .line 663
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/v;->aF:Ljava/lang/String;

    const-string v0, "USE_APP_HYBRID"

    .line 665
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/roblox/client/v;->aJ:Z

    .line 668
    :cond_1
    new-instance p1, Lcom/roblox/client/app/b;

    invoke-virtual {p0}, Lcom/roblox/client/v;->p()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/roblox/client/app/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/roblox/client/v;->aL:Lcom/roblox/client/app/b;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 636
    invoke-super {p0, p1}, Lcom/roblox/client/s;->d(Z)V

    if-nez p1, :cond_0

    .line 639
    invoke-static {}, Lcom/roblox/client/n/d;->a()Lcom/roblox/client/n/d;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    .line 640
    invoke-virtual {v0}, Lcom/roblox/client/hybrid/RBHybridWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 639
    invoke-virtual {p1, v0}, Lcom/roblox/client/n/d;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 641
    iget-object p1, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    invoke-virtual {p1}, Lcom/roblox/client/hybrid/RBHybridWebView;->reload()V

    :cond_0
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    if-nez v0, :cond_0

    .line 720
    iput-object p1, p0, Lcom/roblox/client/v;->at:Ljava/lang/String;

    goto :goto_0

    .line 722
    :cond_0
    invoke-virtual {v0, p1}, Lcom/roblox/client/hybrid/RBHybridWebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public g_()V
    .locals 2

    .line 707
    invoke-virtual {p0}, Lcom/roblox/client/v;->r()Landroidx/fragment/app/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 708
    invoke-virtual {p0}, Lcom/roblox/client/v;->r()Landroidx/fragment/app/c;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/q;

    invoke-virtual {v0}, Lcom/roblox/client/q;->D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    invoke-virtual {v0}, Lcom/roblox/client/hybrid/RBHybridWebView;->reload()V

    goto :goto_0

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/v;->aA:Landroidx/j/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/j/a/c;->setRefreshing(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public h()V
    .locals 0

    .line 673
    invoke-super {p0}, Lcom/roblox/client/s;->h()V

    return-void
.end method

.method public i()V
    .locals 0

    .line 678
    invoke-super {p0}, Lcom/roblox/client/s;->i()V

    return-void
.end method

.method public j()V
    .locals 1

    .line 484
    invoke-super {p0}, Lcom/roblox/client/s;->j()V

    .line 485
    iget-object v0, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    invoke-virtual {v0}, Lcom/roblox/client/hybrid/RBHybridWebView;->b()V

    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 175
    iput-boolean p1, p0, Lcom/roblox/client/v;->aw:Z

    return-void
.end method

.method public n(Z)V
    .locals 0

    .line 180
    iput-boolean p1, p0, Lcom/roblox/client/v;->aK:Z

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 754
    invoke-super {p0, p1}, Lcom/roblox/client/s;->onDismiss(Landroid/content/DialogInterface;)V

    .line 755
    invoke-static {}, Lcom/roblox/client/s/h;->a()Lcom/roblox/client/s/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/s/h;->d()Z

    move-result p1

    if-nez p1, :cond_1

    .line 757
    iget-boolean p1, p0, Lcom/roblox/client/v;->aE:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/roblox/client/v;->aD:Z

    if-eqz p1, :cond_1

    .line 758
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/v;->ax()Ljava/lang/String;

    move-result-object p1

    const-string v0, "close"

    invoke-static {p1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onEmitRbHybridEvent(Lcom/roblox/a/a/a;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/j;
        a = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 782
    iget-object v0, p0, Lcom/roblox/client/v;->as:Lcom/roblox/client/hybrid/RBHybridWebView;

    instance-of v1, v0, Lcom/roblox/client/hybrid/RBHybridWebView;

    if-eqz v1, :cond_0

    .line 783
    iget-object p1, p1, Lcom/roblox/a/a/a;->a:Lcom/roblox/a/b;

    invoke-virtual {v0, p1}, Lcom/roblox/client/hybrid/RBHybridWebView;->a(Lcom/roblox/a/b;)V

    :cond_0
    return-void
.end method
