.class public abstract Lcom/roblox/client/q;
.super Lcom/roblox/client/r;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/ab/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/q$a;
    }
.end annotation


# static fields
.field public static k:I


# instance fields
.field protected l:Landroidx/appcompat/widget/Toolbar;

.field protected m:Lcom/roblox/client/ab/d;

.field private q:Landroidx/appcompat/app/b;

.field private r:Landroidx/appcompat/app/b;

.field private s:Landroidx/appcompat/app/b;

.field private t:Landroid/app/ProgressDialog;

.field private u:Z

.field private v:Lcom/roblox/client/p/b;

.field private w:Lcom/roblox/client/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/roblox/client/r;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/roblox/client/q;->u:Z

    .line 72
    invoke-virtual {p0}, Lcom/roblox/client/q;->o()Lcom/roblox/client/p/b;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/q;->v:Lcom/roblox/client/p/b;

    .line 74
    new-instance v0, Lcom/roblox/client/d/a;

    invoke-direct {v0}, Lcom/roblox/client/d/a;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/q;->w:Lcom/roblox/client/d/a;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/q;Landroidx/appcompat/app/b;)Landroidx/appcompat/app/b;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/roblox/client/q;->q:Landroidx/appcompat/app/b;

    return-object p1
.end method

.method static synthetic a(Lcom/roblox/client/q;)Lcom/roblox/client/d/a;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/roblox/client/q;->w:Lcom/roblox/client/d/a;

    return-object p0
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 617
    invoke-direct {p0}, Lcom/roblox/client/q;->s()V

    .line 618
    iget-object v0, p0, Lcom/roblox/client/q;->v:Lcom/roblox/client/p/b;

    invoke-virtual {v0}, Lcom/roblox/client/p/b;->a()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroidx/appcompat/app/b;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 412
    invoke-virtual {p1}, Landroidx/appcompat/app/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {p1}, Landroidx/appcompat/app/b;->dismiss()V

    :cond_0
    return-void
.end method

.method private d(I)V
    .locals 2

    .line 612
    invoke-direct {p0}, Lcom/roblox/client/q;->s()V

    .line 613
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/q;->v:Lcom/roblox/client/p/b;

    invoke-virtual {v1}, Lcom/roblox/client/p/b;->a()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private n()V
    .locals 2

    .line 221
    invoke-static {}, Lcom/roblox/client/b;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Lcom/roblox/client/locale/d/a;

    invoke-direct {v0}, Lcom/roblox/client/locale/d/a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/roblox/client/locale/d/a;->a(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "using new api on app resume. mIsAppResumedFromColdStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/roblox/client/q;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.locale"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v0, Lcom/roblox/client/locale/i;

    invoke-direct {v0}, Lcom/roblox/client/locale/i;-><init>()V

    new-instance v1, Lcom/roblox/client/q$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/q$1;-><init>(Lcom/roblox/client/q;)V

    invoke-virtual {v0, p0, v1}, Lcom/roblox/client/locale/i;->a(Landroid/content/Context;Lcom/roblox/client/locale/i$b;)V

    return-void
.end method

.method private q()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/roblox/client/q;->q:Landroidx/appcompat/app/b;

    if-nez v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/roblox/client/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_ConnectionError:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-static {p0, v0}, Lcom/roblox/client/x;->a(Landroid/content/Context;Ljava/lang/String;)Landroidx/appcompat/app/b;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/q;->q:Landroidx/appcompat/app/b;

    .line 392
    new-instance v1, Lcom/roblox/client/q$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/q$2;-><init>(Lcom/roblox/client/q;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/b;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/b;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/roblox/client/q;->q:Landroidx/appcompat/app/b;

    invoke-virtual {v0}, Landroidx/appcompat/app/b;->show()V

    goto :goto_0

    :cond_1
    const-string v0, "RobloxActivity"

    const-string v1, "A network-disconnected alert already exists. Do nothing."

    .line 401
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private r()V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/roblox/client/q;->q:Landroidx/appcompat/app/b;

    invoke-direct {p0, v0}, Lcom/roblox/client/q;->a(Landroidx/appcompat/app/b;)V

    const/4 v0, 0x0

    .line 407
    iput-object v0, p0, Lcom/roblox/client/q;->q:Landroidx/appcompat/app/b;

    return-void
.end method

.method private s()V
    .locals 2

    .line 622
    iget-object v0, p0, Lcom/roblox/client/q;->v:Lcom/roblox/client/p/b;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/roblox/client/p/b;->a(Landroid/view/LayoutInflater;Lcom/roblox/client/r;)Landroid/view/View;

    move-result-object v0

    .line 625
    invoke-super {p0, v0}, Lcom/roblox/client/r;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected C()Z
    .locals 3

    .line 265
    invoke-static {p0}, Lcom/roblox/client/u;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ROBLOXCrash"

    const/4 v2, 0x0

    .line 266
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public D()Z
    .locals 1

    .line 337
    invoke-static {p0}, Lcom/roblox/client/x;->c(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 339
    invoke-direct {p0}, Lcom/roblox/client/q;->q()V

    :cond_0
    return v0
.end method

.method public E()V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/roblox/client/q;->t:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/roblox/client/q;->t:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 363
    iput-object v0, p0, Lcom/roblox/client/q;->t:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method protected F()V
    .locals 2

    .line 503
    invoke-direct {p0}, Lcom/roblox/client/q;->r()V

    .line 505
    iget-object v0, p0, Lcom/roblox/client/q;->r:Landroidx/appcompat/app/b;

    if-nez v0, :cond_0

    .line 506
    new-instance v0, Landroidx/appcompat/app/b$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_RestartRequiredTitle:I

    .line 507
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/b$a;->a(I)Landroidx/appcompat/app/b$a;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_ClearAppAndRestart:I

    .line 508
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/b$a;->b(I)Landroidx/appcompat/app/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 509
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/b$a;->a(Z)Landroidx/appcompat/app/b$a;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->b()Landroidx/appcompat/app/b;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/q;->r:Landroidx/appcompat/app/b;

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/q;->r:Landroidx/appcompat/app/b;

    invoke-virtual {v0}, Landroidx/appcompat/app/b;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/roblox/client/q;->r:Landroidx/appcompat/app/b;

    invoke-virtual {v0}, Landroidx/appcompat/app/b;->show()V

    :cond_1
    return-void
.end method

.method protected G()V
    .locals 3

    .line 522
    invoke-direct {p0}, Lcom/roblox/client/q;->r()V

    .line 524
    iget-object v0, p0, Lcom/roblox/client/q;->r:Landroidx/appcompat/app/b;

    if-nez v0, :cond_0

    .line 525
    new-instance v0, Landroidx/appcompat/app/b$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_RestartRequiredTitle:I

    .line 526
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/b$a;->a(I)Landroidx/appcompat/app/b$a;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$j;->AppRestart_SettingsChanged_Message_OutOfSync:I

    .line 527
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/b$a;->b(I)Landroidx/appcompat/app/b$a;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$j;->AppRestart_SettingsChanged_Action_RestartApp:I

    new-instance v2, Lcom/roblox/client/q$6;

    invoke-direct {v2, p0}, Lcom/roblox/client/q$6;-><init>(Lcom/roblox/client/q;)V

    .line 528
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 536
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/b$a;->a(Z)Landroidx/appcompat/app/b$a;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->b()Landroidx/appcompat/app/b;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/q;->r:Landroidx/appcompat/app/b;

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/q;->r:Landroidx/appcompat/app/b;

    invoke-virtual {v0}, Landroidx/appcompat/app/b;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/roblox/client/q;->r:Landroidx/appcompat/app/b;

    invoke-virtual {v0}, Landroidx/appcompat/app/b;->show()V

    :cond_1
    return-void
.end method

.method protected H()V
    .locals 2

    .line 578
    invoke-virtual {p0}, Lcom/roblox/client/q;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    .line 579
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 581
    iget-object v1, p0, Lcom/roblox/client/q;->p:Lcom/roblox/client/p/a;

    invoke-virtual {v1, v0}, Lcom/roblox/client/p/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .line 345
    sget v0, Lcom/roblox/client/o$j;->Authentication_Logout_Label_LoggingOut:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/q;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    sget v1, Lcom/roblox/client/o$j;->Authentication_Logout_Label_LoggingOutOfAccount:I

    invoke-virtual {p0, v1}, Lcom/roblox/client/q;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 348
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 349
    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 350
    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 351
    invoke-virtual {v2, p1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 p1, 0x0

    .line 352
    invoke-virtual {v2, p1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 353
    invoke-virtual {v2, p1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    const/4 p1, 0x0

    .line 354
    invoke-virtual {v2, p1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 356
    iput-object v2, p0, Lcom/roblox/client/q;->t:Landroid/app/ProgressDialog;

    .line 357
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public a(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    .line 142
    invoke-super {p0, p1}, Lcom/roblox/client/r;->a(Landroidx/appcompat/widget/Toolbar;)V

    .line 143
    iput-object p1, p0, Lcom/roblox/client/q;->l:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method

.method public a(Lcom/roblox/client/ab/e;)V
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".onThemeChanged() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.theme"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/roblox/client/q;->l:Landroidx/appcompat/widget/Toolbar;

    instance-of v1, v0, Lcom/roblox/client/components/RobloxToolbar;

    if-eqz v1, :cond_0

    .line 150
    check-cast v0, Lcom/roblox/client/components/RobloxToolbar;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/RobloxToolbar;->a(Lcom/roblox/client/ab/e;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/q;->v:Lcom/roblox/client/p/b;

    if-eqz v0, :cond_3

    .line 155
    sget-object v0, Lcom/roblox/client/q$7;->a:[I

    invoke-virtual {p1}, Lcom/roblox/client/ab/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/roblox/client/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$c;->darkThemeToolbar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/roblox/client/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$c;->RbxBlue3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/roblox/client/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$c;->lightThemeToolbar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 163
    :goto_0
    iget-object v1, p0, Lcom/roblox/client/q;->v:Lcom/roblox/client/p/b;

    invoke-virtual {v1, v0}, Lcom/roblox/client/p/b;->a(I)V

    .line 166
    :cond_3
    invoke-static {}, Lcom/roblox/client/b;->bO()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    invoke-virtual {p0, p1}, Lcom/roblox/client/q;->b(Lcom/roblox/client/ab/e;)V

    :cond_4
    return-void
.end method

.method public a(Lcom/roblox/client/s/c$e;)V
    .locals 2

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "navigateToPostLogoutUI: logoutType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", foreground = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {p0}, Lcom/roblox/client/q;->K()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RobloxActivity"

    .line 369
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-static {}, Lcom/roblox/client/x/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "navigateToPostLogoutUI: [New Startup] Launch Main activity..."

    .line 373
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-static {}, Lcom/roblox/client/l;->a()Lcom/roblox/client/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/l;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 375
    invoke-virtual {p0, v0}, Lcom/roblox/client/q;->startActivity(Landroid/content/Intent;)V

    .line 376
    sget-object v0, Lcom/roblox/client/s/c$e;->b:Lcom/roblox/client/s/c$e;

    if-eq p1, v0, :cond_1

    const-string p1, "navigateToPostLogoutUI: notify Lua about this 401 logout condition"

    .line 377
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "NativeShellEvent"

    const-string v0, "NETWORK_ERROR_401"

    .line 378
    invoke-static {p1, v0}, Lcom/roblox/engine/jni/memstorage/MemStorage;->fire(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "navigateToPostLogoutUI: [Old Startup] Launch Start activity..."

    .line 381
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-static {}, Lcom/roblox/client/l;->a()Lcom/roblox/client/l;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/roblox/client/l;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const v0, 0x10008000

    .line 383
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 384
    invoke-virtual {p0, p1}, Lcom/roblox/client/q;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(ZLcom/roblox/client/q$a;)V
    .locals 9

    .line 429
    iget-object v0, p0, Lcom/roblox/client/q;->q:Landroidx/appcompat/app/b;

    invoke-direct {p0, v0}, Lcom/roblox/client/q;->a(Landroidx/appcompat/app/b;)V

    .line 430
    iget-object v0, p0, Lcom/roblox/client/q;->s:Landroidx/appcompat/app/b;

    invoke-direct {p0, v0}, Lcom/roblox/client/q;->a(Landroidx/appcompat/app/b;)V

    .line 433
    invoke-virtual {p0}, Lcom/roblox/client/q;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 435
    invoke-static {}, Lcom/roblox/client/w;->a()Lcom/roblox/client/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/w;->c()Lcom/roblox/client/w$c;

    move-result-object v3

    .line 437
    invoke-static {}, Lcom/roblox/client/ae/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/roblox/client/o$j;->CommonUI_Features_Label_AmazonAppStore:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/roblox/client/o$j;->CommonUI_Features_Label_GooglePlayStore:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/roblox/client/q;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-static {}, Lcom/roblox/client/ae/l;->b()Z

    move-result v1

    const/4 v7, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    sget v0, Lcom/roblox/client/o$j;->Application_Upgrade_Response_UpgradeBodyString:I

    .line 439
    invoke-virtual {p0, v0}, Lcom/roblox/client/q;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget v1, Lcom/roblox/client/o$j;->Application_Upgrade_Response_UpgradeBodyString:I

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v7

    .line 440
    invoke-virtual {p0, v1, v4}, Lcom/roblox/client/q;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz p1, :cond_3

    .line 444
    iget-object p1, p0, Lcom/roblox/client/q;->r:Landroidx/appcompat/app/b;

    invoke-direct {p0, p1}, Lcom/roblox/client/q;->a(Landroidx/appcompat/app/b;)V

    .line 446
    invoke-virtual {p0}, Lcom/roblox/client/q;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/roblox/client/d/a;->a(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 447
    invoke-static {p0, v2, v3}, Lcom/roblox/client/d/a;->a(Landroid/app/Activity;ZLcom/roblox/client/w$c;)V

    return-void

    .line 451
    :cond_2
    new-instance p1, Landroidx/appcompat/app/b$a;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/roblox/client/o$j;->Application_Upgrade_Response_Title:I

    .line 452
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/b$a;->a(I)Landroidx/appcompat/app/b$a;

    move-result-object p1

    .line 453
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/b$a;->b(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$j;->Application_Upgrade_Action_Upgrade:I

    new-instance v8, Lcom/roblox/client/q$3;

    move-object v1, v8

    move-object v2, p0

    move-object v4, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/roblox/client/q$3;-><init>(Lcom/roblox/client/q;Lcom/roblox/client/w$c;Landroid/app/Activity;Ljava/lang/String;Lcom/roblox/client/q$a;)V

    .line 454
    invoke-virtual {p1, v0, v8}, Landroidx/appcompat/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    .line 466
    invoke-virtual {p1}, Landroidx/appcompat/app/b$a;->b()Landroidx/appcompat/app/b;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/q;->s:Landroidx/appcompat/app/b;

    goto :goto_2

    .line 468
    :cond_3
    new-instance p1, Landroidx/appcompat/app/b$a;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/roblox/client/o$j;->Application_Upgrade_Response_Title:I

    .line 469
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/b$a;->a(I)Landroidx/appcompat/app/b$a;

    move-result-object p1

    .line 470
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/b$a;->b(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$j;->Application_Upgrade_Action_Upgrade:I

    new-instance v8, Lcom/roblox/client/q$5;

    move-object v1, v8

    move-object v2, p0

    move-object v4, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/roblox/client/q$5;-><init>(Lcom/roblox/client/q;Lcom/roblox/client/w$c;Landroid/app/Activity;Ljava/lang/String;Lcom/roblox/client/q$a;)V

    .line 471
    invoke-virtual {p1, v0, v8}, Landroidx/appcompat/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$j;->Application_Upgrade_Action_NotNow:I

    new-instance v1, Lcom/roblox/client/q$4;

    invoke-direct {v1, p0, p2}, Lcom/roblox/client/q$4;-><init>(Lcom/roblox/client/q;Lcom/roblox/client/q$a;)V

    .line 484
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object p1

    .line 490
    invoke-virtual {p1}, Landroidx/appcompat/app/b$a;->b()Landroidx/appcompat/app/b;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/q;->s:Landroidx/appcompat/app/b;

    .line 493
    :goto_2
    iget-object p1, p0, Lcom/roblox/client/q;->s:Landroidx/appcompat/app/b;

    invoke-virtual {p1, v7}, Landroidx/appcompat/app/b;->setCancelable(Z)V

    .line 494
    iget-object p1, p0, Lcom/roblox/client/q;->s:Landroidx/appcompat/app/b;

    invoke-virtual {p1}, Landroidx/appcompat/app/b;->show()V

    return-void
.end method

.method public b(Lcom/roblox/client/ab/e;)V
    .locals 4

    .line 547
    sget-object v0, Lcom/roblox/client/ab/e;->a:Lcom/roblox/client/ab/e;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 548
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 550
    invoke-virtual {p0}, Lcom/roblox/client/q;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 552
    invoke-virtual {p0}, Lcom/roblox/client/q;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_1

    and-int/lit16 v0, v2, -0x2001

    goto :goto_1

    :cond_1
    or-int/lit16 v0, v2, 0x2000

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 555
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_5

    .line 557
    invoke-static {}, Lcom/roblox/client/u;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 559
    sget-object v0, Lcom/roblox/client/q$7;->a:[I

    invoke-virtual {p1}, Lcom/roblox/client/ab/e;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v1, :cond_3

    .line 564
    invoke-virtual {p0}, Lcom/roblox/client/q;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$c;->darkThemeToolbar:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_2

    .line 561
    :cond_3
    invoke-virtual {p0}, Lcom/roblox/client/q;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/roblox/client/o$c;->lightThemeToolbar:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 567
    :goto_2
    invoke-virtual {p0}, Lcom/roblox/client/q;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 572
    :cond_4
    invoke-virtual {p0}, Lcom/roblox/client/q;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/roblox/client/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$c;->darkNavigationBarColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_5
    return-void
.end method

.method protected b(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 423
    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/q;->a(ZLcom/roblox/client/q$a;)V

    return-void
.end method

.method protected m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected o()Lcom/roblox/client/p/b;
    .locals 1

    .line 77
    new-instance v0, Lcom/roblox/client/p/b;

    invoke-direct {v0}, Lcom/roblox/client/p/b;-><init>()V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RobloxActivity"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {p0}, Lcom/roblox/client/purchase/google/b;->a(Landroid/content/Context;)Lcom/roblox/client/purchase/google/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {v0, p1, p2, p3}, Lcom/roblox/client/purchase/google/b;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "onActivityResult handled by Store Manager"

    .line 329
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x2777

    if-ne p1, v0, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 312
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 313
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sharing with="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p0, p3}, Lcom/roblox/client/q;->startActivity(Landroid/content/Intent;)V

    .line 315
    invoke-static {p1}, Lcom/roblox/client/p;->d(Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object p1

    const-string p2, "Android-AppMain-GameShare-AppSelected"

    invoke-virtual {p1, p2}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "Sharing dialog dismissed."

    .line 320
    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {}, Lcom/roblox/client/s/f;->b()Lcom/roblox/client/s/f;

    move-result-object p1

    const-string p2, "Android-AppMain-GameShare-ChooserDismissed"

    invoke-virtual {p1, p2}, Lcom/roblox/client/s/f;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 326
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/r;->onActivityResult(IILandroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 87
    invoke-static {}, Lcom/roblox/client/s/c;->d()Lcom/roblox/client/s/c;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/s/c$b;->b:Lcom/roblox/client/s/c$b;

    invoke-virtual {v0, p0, v1}, Lcom/roblox/client/s/c;->a(Landroid/content/Context;Lcom/roblox/client/s/c$b;)V

    .line 90
    invoke-static {}, Lcom/roblox/client/RobloxApplication;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "Application.AppContext is null in Shell"

    .line 91
    invoke-static {v1, v0}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Z)V

    .line 95
    :cond_0
    invoke-static {}, Lcom/roblox/client/RobloxApplication;->a()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Application.Locale is null in Shell"

    .line 96
    invoke-static {v0}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;)V

    .line 104
    :cond_1
    invoke-static {}, Lcom/roblox/client/b;->a()Z

    move-result v0

    const-string v1, "RobloxActivity"

    if-nez v0, :cond_2

    const-string v2, "onCreate ... settingsLoaded = false. Load from preferences!!!"

    .line 107
    invoke-static {v1, v2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {p0}, Lcom/roblox/client/b;->b(Landroid/content/Context;)V

    .line 110
    :cond_2
    invoke-static {}, Lcom/roblox/client/locale/b;->a()Lcom/roblox/client/locale/b;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/roblox/client/locale/b;->b(Landroid/content/Context;)V

    .line 112
    invoke-static {}, Lcom/roblox/client/s/e;->a()Lcom/roblox/client/s/e;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/roblox/client/s/e;->a(Landroid/content/Context;)V

    .line 114
    invoke-super {p0, p1}, Lcom/roblox/client/r;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/roblox/client/q;->I()V

    .line 118
    invoke-static {}, Lcom/roblox/client/b;->bO()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 119
    invoke-virtual {p0}, Lcom/roblox/client/q;->H()V

    .line 122
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-static {p0}, Lcom/roblox/client/s/a;->a(Landroid/content/Context;)Lcom/roblox/client/s/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/roblox/client/s/a;->a(Ljava/lang/String;)V

    if-nez v0, :cond_4

    .line 129
    invoke-virtual {p0}, Lcom/roblox/client/q;->m()Z

    move-result v0

    if-nez v0, :cond_4

    .line 130
    invoke-static {}, Lcom/roblox/client/b;->V()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: no AppSettings in activity:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Finish self!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Lcom/roblox/client/q;->finish()V

    :cond_4
    const/4 p1, 0x1

    .line 134
    iput-boolean p1, p0, Lcom/roblox/client/q;->u:Z

    .line 136
    new-instance p1, Lcom/roblox/client/ab/d;

    invoke-direct {p1, p0}, Lcom/roblox/client/ab/d;-><init>(Lcom/roblox/client/ab/d$a;)V

    iput-object p1, p0, Lcom/roblox/client/q;->m:Lcom/roblox/client/ab/d;

    .line 137
    invoke-virtual {p1, p0}, Lcom/roblox/client/ab/d;->a(Landroidx/lifecycle/j;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 180
    invoke-super {p0}, Lcom/roblox/client/r;->onDestroy()V

    .line 183
    invoke-direct {p0}, Lcom/roblox/client/q;->r()V

    .line 184
    iget-object v0, p0, Lcom/roblox/client/q;->r:Landroidx/appcompat/app/b;

    invoke-direct {p0, v0}, Lcom/roblox/client/q;->a(Landroidx/appcompat/app/b;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 272
    invoke-super {p0}, Lcom/roblox/client/r;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 278
    invoke-super {p0}, Lcom/roblox/client/r;->onResume()V

    .line 282
    invoke-static {}, Lcom/roblox/client/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-static {p0}, Lcom/roblox/client/b;->a(Landroid/content/Context;)V

    .line 286
    :cond_0
    invoke-static {}, Lcom/roblox/client/pushnotification/l;->a()Lcom/roblox/client/pushnotification/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/roblox/client/pushnotification/l;->e(Landroid/content/Context;)V

    .line 288
    invoke-static {p0}, Lcom/roblox/client/remindernotification/a;->b(Landroid/content/Context;)V

    .line 294
    invoke-virtual {p0}, Lcom/roblox/client/q;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/remindernotification/a;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 190
    invoke-super {p0}, Lcom/roblox/client/r;->onStart()V

    .line 194
    invoke-static {}, Lcom/roblox/client/i/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/roblox/client/u;->ax()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RobloxActivity"

    const-string v1, "Alert: needs restart"

    .line 195
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0}, Lcom/roblox/client/q;->F()V

    .line 199
    :cond_0
    sget v0, Lcom/roblox/client/q;->k:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/roblox/client/q;->k:I

    if-nez v0, :cond_1

    .line 200
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-static {}, Lcom/roblox/client/s/b;->a()Lcom/roblox/client/s/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 202
    invoke-static {}, Lcom/roblox/client/s/c;->d()Lcom/roblox/client/s/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/c;->a(Z)V

    .line 204
    invoke-static {}, Lcom/roblox/engine/jni/NativeReportingInterface;->applicationForegrounded()V

    .line 206
    invoke-static {p0}, Lcom/roblox/client/u;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "ROBLOXCrash"

    .line 207
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 208
    iget-boolean v0, p0, Lcom/roblox/client/q;->u:Z

    if-nez v0, :cond_1

    .line 209
    invoke-direct {p0}, Lcom/roblox/client/q;->p()V

    .line 210
    invoke-direct {p0}, Lcom/roblox/client/q;->n()V

    .line 214
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {p0}, Lcom/roblox/client/s/a;->a(Landroid/content/Context;)Lcom/roblox/client/s/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/roblox/client/s/a;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 216
    iput-boolean v0, p0, Lcom/roblox/client/q;->u:Z

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 244
    sget v0, Lcom/roblox/client/q;->k:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/roblox/client/q;->k:I

    if-nez v0, :cond_0

    .line 245
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-static {}, Lcom/roblox/client/s/b;->a()Lcom/roblox/client/s/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    .line 247
    invoke-static {}, Lcom/roblox/client/s/c;->d()Lcom/roblox/client/s/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/s/c;->a(Z)V

    .line 249
    invoke-static {}, Lcom/roblox/engine/jni/NativeReportingInterface;->applicationBackgrounded()V

    .line 251
    invoke-static {p0}, Lcom/roblox/client/u;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ROBLOXCrash"

    .line 252
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "RobloxActivity"

    const-string v1, "The Shell is in background."

    .line 254
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {}, Lcom/roblox/client/analytics/c;->a()Lcom/roblox/client/analytics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/analytics/c;->c()V

    .line 258
    invoke-static {}, Lcom/roblox/client/analytics/c;->a()Lcom/roblox/client/analytics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/analytics/c;->d()V

    .line 261
    :cond_0
    invoke-super {p0}, Lcom/roblox/client/r;->onStop()V

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 586
    invoke-static {}, Lcom/roblox/client/b;->bO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    invoke-direct {p0, p1}, Lcom/roblox/client/q;->d(I)V

    goto :goto_0

    .line 589
    :cond_0
    invoke-super {p0, p1}, Lcom/roblox/client/r;->setContentView(I)V

    :goto_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 595
    invoke-static {}, Lcom/roblox/client/b;->bO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 596
    invoke-direct {p0, p1, v0}, Lcom/roblox/client/q;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 598
    :cond_0
    invoke-super {p0, p1}, Lcom/roblox/client/r;->setContentView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 604
    invoke-static {}, Lcom/roblox/client/b;->bO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/q;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 607
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/roblox/client/r;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method
