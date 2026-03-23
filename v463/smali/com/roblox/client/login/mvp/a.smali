.class public Lcom/roblox/client/login/mvp/a;
.super Lcom/roblox/client/u/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/login/mvp/a$a;
    }
.end annotation


# instance fields
.field private aA:Lcom/roblox/client/components/RbxTextView;

.field private aB:Lcom/roblox/client/components/RbxProgressButton;

.field private aC:Lcom/roblox/client/components/RbxButton;

.field private aD:Lcom/roblox/client/components/RbxButton;

.field private aE:Lcom/roblox/client/components/RbxButton;

.field private aF:Landroid/view/View;

.field private aG:Z

.field private aH:Z

.field protected as:Lcom/roblox/client/components/RbxEditText;

.field protected at:Lcom/roblox/client/login/mvp/a$a;

.field private av:Landroid/widget/EditText;

.field private aw:Landroid/widget/EditText;

.field private ax:Lcom/roblox/client/components/RbxEditText;

.field private ay:Lcom/roblox/client/components/RbxTextView;

.field private az:Lcom/roblox/client/components/RbxTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/roblox/client/u/g;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/login/mvp/a;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/a;->av()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/login/mvp/a;Ljava/lang/String;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/login/mvp/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const-string p2, "focus"

    goto :goto_0

    :cond_0
    const-string p2, "offFocus"

    :goto_0
    const-string v0, "login"

    .line 361
    invoke-static {v0, p1, p2}, Lcom/roblox/client/p;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/login/mvp/a;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/roblox/client/login/mvp/a;->aG:Z

    return p1
.end method

.method public static aq()Lcom/roblox/client/login/mvp/a;
    .locals 1

    .line 75
    new-instance v0, Lcom/roblox/client/login/mvp/a;

    invoke-direct {v0}, Lcom/roblox/client/login/mvp/a;-><init>()V

    return-object v0
.end method

.method private au()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->av:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/login/mvp/a$11;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/mvp/a$11;-><init>(Lcom/roblox/client/login/mvp/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 273
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->aw:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/login/mvp/a$12;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/mvp/a$12;-><init>(Lcom/roblox/client/login/mvp/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private av()V
    .locals 5

    const-string v0, "rbx.authlogin"

    const-string v1, "onLoginButtonClick: ENTER"

    .line 293
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/a;->p()Landroid/content/Context;

    move-result-object v0

    .line 296
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/a;->ap()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/login/mvp/a;->av:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 301
    iget-object v1, p0, Lcom/roblox/client/login/mvp/a;->aw:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 302
    iget-object v1, p0, Lcom/roblox/client/login/mvp/a;->aB:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v2, Lcom/roblox/client/components/RbxProgressButton$b;->b:Lcom/roblox/client/components/RbxProgressButton$b;

    sget v3, Lcom/roblox/client/o$j;->CommonUI_Messages_Action_Validating:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/roblox/client/login/mvp/a;->aF:Landroid/view/View;

    invoke-static {v1}, Lcom/roblox/client/x;->b(Landroid/view/View;)V

    .line 305
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/a;->ax()V

    .line 307
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 309
    new-instance v2, Lcom/roblox/client/login/mvp/a$2;

    invoke-direct {v2, p0, v0}, Lcom/roblox/client/login/mvp/a$2;-><init>(Lcom/roblox/client/login/mvp/a;Landroid/content/Context;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private aw()V
    .locals 4

    .line 349
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 350
    new-instance v1, Lcom/roblox/client/login/mvp/a$3;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/mvp/a$3;-><init>(Lcom/roblox/client/login/mvp/a;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private ax()V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->as:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->b()V

    .line 385
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->ax:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->b()V

    .line 386
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->aC:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxButton;->a()V

    .line 387
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->aD:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxButton;->a()V

    .line 388
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->aE:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxButton;->a()V

    return-void
.end method

.method private ay()V
    .locals 5

    .line 392
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->aB:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->a:Lcom/roblox/client/components/RbxProgressButton$b;

    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/a;->p()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/roblox/client/o$j;->Authentication_Login_Action_LogInCapitalized:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->as:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->c()V

    .line 394
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->ax:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->c()V

    .line 395
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->aC:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxButton;->b()V

    .line 396
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->aD:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxButton;->b()V

    .line 397
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->aE:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxButton;->b()V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/login/mvp/a;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/roblox/client/login/mvp/a;->aG:Z

    return p0
.end method

.method static synthetic b(Lcom/roblox/client/login/mvp/a;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/roblox/client/login/mvp/a;->aH:Z

    return p1
.end method

.method static synthetic c(Lcom/roblox/client/login/mvp/a;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/roblox/client/login/mvp/a;->aH:Z

    return p0
.end method

.method static synthetic d(Lcom/roblox/client/login/mvp/a;)Lcom/roblox/client/components/RbxEditText;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/roblox/client/login/mvp/a;->ax:Lcom/roblox/client/components/RbxEditText;

    return-object p0
.end method

.method static synthetic e(Lcom/roblox/client/login/mvp/a;)Landroid/widget/EditText;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/roblox/client/login/mvp/a;->av:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic f(Lcom/roblox/client/login/mvp/a;)Landroid/widget/EditText;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/roblox/client/login/mvp/a;->aw:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic g(Lcom/roblox/client/login/mvp/a;)Landroid/view/View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/roblox/client/login/mvp/a;->aF:Landroid/view/View;

    return-object p0
.end method

.method static synthetic h(Lcom/roblox/client/login/mvp/a;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/a;->ay()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 94
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/a;->p()Landroid/content/Context;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/abtesting/a;->j()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 97
    sget v1, Lcom/roblox/client/o$g;->fragment_new_login:I

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 98
    sget p2, Lcom/roblox/client/o$f;->fragment_login_textView_DontHaveAct:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxTextView;

    iput-object p2, p0, Lcom/roblox/client/login/mvp/a;->ay:Lcom/roblox/client/components/RbxTextView;

    .line 99
    sget p2, Lcom/roblox/client/o$f;->fragment_login_btn_cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxButton;

    iput-object p2, p0, Lcom/roblox/client/login/mvp/a;->aC:Lcom/roblox/client/components/RbxButton;

    .line 100
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->ay:Lcom/roblox/client/components/RbxTextView;

    sget v1, Lcom/roblox/client/o$j;->Authentication_Login_Label_DontHaveAnAccount:I

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/roblox/client/components/RbxTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 102
    :cond_0
    invoke-static {}, Lcom/roblox/client/u;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/roblox/client/o$g;->fragment_login_card_phone:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/roblox/client/o$g;->fragment_login_card_tablet:I

    .line 104
    :goto_0
    sget v3, Lcom/roblox/client/o$g;->fragment_login_new:I

    invoke-virtual {p1, v3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 105
    sget v3, Lcom/roblox/client/o$f;->fragment_login_swap_container:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 107
    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 109
    sget v3, Lcom/roblox/client/o$f;->fragment_login_card_inner_container:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 111
    sget v3, Lcom/roblox/client/o$g;->fragment_login_card_common:I

    invoke-virtual {p1, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 114
    sget p1, Lcom/roblox/client/o$f;->fragment_login_background:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget p1, Lcom/roblox/client/o$f;->fragment_login_btn_cancel:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/components/RbxButton;

    iput-object p1, p0, Lcom/roblox/client/login/mvp/a;->aC:Lcom/roblox/client/components/RbxButton;

    .line 117
    sget p1, Lcom/roblox/client/o$f;->fragment_login_notAMember_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/roblox/client/components/RbxTextView;

    iput-object p1, p0, Lcom/roblox/client/login/mvp/a;->aA:Lcom/roblox/client/components/RbxTextView;

    .line 118
    sget v1, Lcom/roblox/client/o$j;->Authentication_Login_Label_NotAMember:I

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/roblox/client/components/RbxTextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object p1, p0, Lcom/roblox/client/login/mvp/a;->aC:Lcom/roblox/client/components/RbxButton;

    sget v1, Lcom/roblox/client/o$j;->Authentication_Login_Action_Cancel:I

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/roblox/client/components/RbxButton;->setText(Ljava/lang/CharSequence;)V

    move-object p1, p2

    .line 122
    :goto_1
    sget p2, Lcom/roblox/client/o$f;->fragment_login_label_login:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxTextView;

    iput-object p2, p0, Lcom/roblox/client/login/mvp/a;->az:Lcom/roblox/client/components/RbxTextView;

    .line 123
    sget p2, Lcom/roblox/client/o$f;->fragment_login_username:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxEditText;

    iput-object p2, p0, Lcom/roblox/client/login/mvp/a;->as:Lcom/roblox/client/components/RbxEditText;

    .line 124
    invoke-virtual {p2}, Lcom/roblox/client/components/RbxEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object p2

    iput-object p2, p0, Lcom/roblox/client/login/mvp/a;->av:Landroid/widget/EditText;

    .line 126
    sget v1, Lcom/roblox/client/o$f;->view_login_username_field:I

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setId(I)V

    .line 127
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->as:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {p2}, Lcom/roblox/client/components/RbxEditText;->getBottomLabel()Landroid/widget/TextView;

    move-result-object p2

    sget v1, Lcom/roblox/client/o$f;->view_login_username_bottom_label:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setId(I)V

    .line 129
    iput-object p1, p0, Lcom/roblox/client/login/mvp/a;->aF:Landroid/view/View;

    .line 131
    sget p2, Lcom/roblox/client/o$f;->fragment_login_password:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxEditText;

    iput-object p2, p0, Lcom/roblox/client/login/mvp/a;->ax:Lcom/roblox/client/components/RbxEditText;

    .line 132
    invoke-virtual {p2}, Lcom/roblox/client/components/RbxEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object p2

    iput-object p2, p0, Lcom/roblox/client/login/mvp/a;->aw:Landroid/widget/EditText;

    .line 133
    sget v1, Lcom/roblox/client/o$f;->view_login_password_field:I

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setId(I)V

    .line 134
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->ax:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {p2}, Lcom/roblox/client/components/RbxEditText;->getBottomLabel()Landroid/widget/TextView;

    move-result-object p2

    sget v1, Lcom/roblox/client/o$f;->view_login_password_bottom_label:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setId(I)V

    .line 136
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->aw:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 137
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->aw:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/login/mvp/a$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/mvp/a$1;-><init>(Lcom/roblox/client/login/mvp/a;)V

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 147
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->aC:Lcom/roblox/client/components/RbxButton;

    new-instance v1, Lcom/roblox/client/login/mvp/a$5;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/mvp/a$5;-><init>(Lcom/roblox/client/login/mvp/a;)V

    invoke-virtual {p2, v1}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    sget p2, Lcom/roblox/client/o$f;->fragment_login_btn_login:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxProgressButton;

    iput-object p2, p0, Lcom/roblox/client/login/mvp/a;->aB:Lcom/roblox/client/components/RbxProgressButton;

    .line 155
    new-instance v1, Lcom/roblox/client/login/mvp/a$6;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/mvp/a$6;-><init>(Lcom/roblox/client/login/mvp/a;)V

    invoke-virtual {p2, v1}, Lcom/roblox/client/components/RbxProgressButton;->setOnRbxClickedListener(Lcom/roblox/client/components/d;)V

    .line 162
    sget p2, Lcom/roblox/client/o$f;->fragment_login_btn_signup:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxButton;

    iput-object p2, p0, Lcom/roblox/client/login/mvp/a;->aD:Lcom/roblox/client/components/RbxButton;

    .line 163
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->az:Lcom/roblox/client/components/RbxTextView;

    sget v1, Lcom/roblox/client/o$j;->Authentication_Login_Label_Login_Uppercase:I

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/roblox/client/components/RbxTextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->aB:Lcom/roblox/client/components/RbxProgressButton;

    sget v1, Lcom/roblox/client/o$j;->Authentication_Login_Action_LogInCapitalized:I

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/roblox/client/components/RbxProgressButton;->setText(Ljava/lang/String;)V

    .line 165
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->aC:Lcom/roblox/client/components/RbxButton;

    sget v1, Lcom/roblox/client/o$j;->Authentication_Login_Description_CancelButtonContentDesc:I

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/roblox/client/components/RbxButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 166
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->aB:Lcom/roblox/client/components/RbxProgressButton;

    sget v1, Lcom/roblox/client/o$j;->Authentication_Login_Description_LoginButtonContentDesc:I

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/roblox/client/components/RbxProgressButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 167
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->ax:Lcom/roblox/client/components/RbxEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_Login_Description_PasswordContentDescription:I

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/roblox/client/components/RbxEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 168
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->ax:Lcom/roblox/client/components/RbxEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_Login_Label_Password:I

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/roblox/client/components/RbxEditText;->setHintText(Ljava/lang/String;)V

    .line 169
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->as:Lcom/roblox/client/components/RbxEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_Login_Description_UsernameContentDescription:I

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/roblox/client/components/RbxEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->as:Lcom/roblox/client/components/RbxEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_Login_Label_Username:I

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/roblox/client/components/RbxEditText;->setHintText(Ljava/lang/String;)V

    .line 171
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->aD:Lcom/roblox/client/components/RbxButton;

    sget v1, Lcom/roblox/client/o$j;->Authentication_Login_Action_SignUp:I

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/roblox/client/components/RbxButton;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-static {}, Lcom/roblox/client/b;->aN()Z

    move-result p2

    const/16 v1, 0x20

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/roblox/client/b;->aO()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 175
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->av:Landroid/widget/EditText;

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 176
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->as:Lcom/roblox/client/components/RbxEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_Login_Label_UsernameEmailPhone:I

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/roblox/client/components/RbxEditText;->setHintText(Ljava/lang/String;)V

    goto :goto_2

    .line 177
    :cond_2
    invoke-static {}, Lcom/roblox/client/b;->aO()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 178
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->av:Landroid/widget/EditText;

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 179
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->as:Lcom/roblox/client/components/RbxEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_Login_Label_UsernameEmail:I

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/roblox/client/components/RbxEditText;->setHintText(Ljava/lang/String;)V

    goto :goto_2

    .line 180
    :cond_3
    invoke-static {}, Lcom/roblox/client/b;->aN()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 181
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->as:Lcom/roblox/client/components/RbxEditText;

    sget v1, Lcom/roblox/client/o$j;->Authentication_Login_Label_UsernamePhone:I

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/roblox/client/components/RbxEditText;->setHintText(Ljava/lang/String;)V

    .line 184
    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->av:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 186
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->aD:Lcom/roblox/client/components/RbxButton;

    new-instance v1, Lcom/roblox/client/login/mvp/a$7;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/mvp/a$7;-><init>(Lcom/roblox/client/login/mvp/a;)V

    invoke-virtual {p2, v1}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    sget p2, Lcom/roblox/client/o$f;->fragment_login_btn_forgot_password:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxButton;

    iput-object p2, p0, Lcom/roblox/client/login/mvp/a;->aE:Lcom/roblox/client/components/RbxButton;

    .line 195
    sget v1, Lcom/roblox/client/o$j;->Authentication_Login_Action_ForgotPasswordOrUsernameQuestion:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/roblox/client/components/RbxButton;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->aE:Lcom/roblox/client/components/RbxButton;

    new-instance v0, Lcom/roblox/client/login/mvp/a$8;

    invoke-direct {v0, p0}, Lcom/roblox/client/login/mvp/a$8;-><init>(Lcom/roblox/client/login/mvp/a;)V

    invoke-virtual {p2, v0}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->av:Landroid/widget/EditText;

    new-instance v0, Lcom/roblox/client/login/mvp/a$9;

    invoke-direct {v0, p0}, Lcom/roblox/client/login/mvp/a$9;-><init>(Lcom/roblox/client/login/mvp/a;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 210
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->aw:Landroid/widget/EditText;

    new-instance v0, Lcom/roblox/client/login/mvp/a$10;

    invoke-direct {v0, p0}, Lcom/roblox/client/login/mvp/a$10;-><init>(Lcom/roblox/client/login/mvp/a;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 217
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/a;->au()V

    if-nez p3, :cond_5

    .line 220
    iget-object p2, p0, Lcom/roblox/client/login/mvp/a;->at:Lcom/roblox/client/login/mvp/a$a;

    invoke-interface {p2}, Lcom/roblox/client/login/mvp/a$a;->z()V

    :cond_5
    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 236
    invoke-super {p0, p1}, Lcom/roblox/client/u/g;->a(Landroid/content/Context;)V

    const-string v0, "rbx.authlogin"

    const-string v1, "onAttach()"

    .line 237
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    instance-of v0, p1, Lcom/roblox/client/login/mvp/a$a;

    if-eqz v0, :cond_0

    .line 239
    check-cast p1, Lcom/roblox/client/login/mvp/a$a;

    iput-object p1, p0, Lcom/roblox/client/login/mvp/a;->at:Lcom/roblox/client/login/mvp/a$a;

    return-void

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->at:Lcom/roblox/client/login/mvp/a$a;

    invoke-interface {v0, p1, p2}, Lcom/roblox/client/login/mvp/a$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ar()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->aB:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->a:Lcom/roblox/client/components/RbxProgressButton$b;

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;)V

    .line 380
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/a;->ay()V

    return-void
.end method

.method public as()V
    .locals 4

    .line 401
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 402
    new-instance v1, Lcom/roblox/client/login/mvp/a$4;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/mvp/a$4;-><init>(Lcom/roblox/client/login/mvp/a;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public at()V
    .locals 4

    .line 413
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->av:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 415
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->av:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/a;->p()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/roblox/client/o$j;->Authentication_Login_Label_Username:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 416
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/a;->aw()V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Lcom/roblox/client/u/g;->b(Landroid/os/Bundle;)V

    .line 83
    invoke-static {}, Lcom/roblox/client/u;->j()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 84
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/a;->d()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/login/mvp/a;->a(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const v0, 0x103000a

    .line 86
    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/login/mvp/a;->a(II)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->av:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object p1, p0, Lcom/roblox/client/login/mvp/a;->aw:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->av:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->av:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 247
    invoke-super {p0}, Lcom/roblox/client/u/g;->f()V

    const-string v0, "rbx.authlogin"

    const-string v1, "onDetach()"

    .line 248
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 249
    iput-object v0, p0, Lcom/roblox/client/login/mvp/a;->at:Lcom/roblox/client/login/mvp/a$a;

    return-void
.end method

.method public h()V
    .locals 1

    .line 229
    invoke-super {p0}, Lcom/roblox/client/u/g;->h()V

    const-string v0, "login"

    .line 231
    invoke-static {v0}, Lcom/roblox/client/p;->b(Ljava/lang/String;)V

    return-void
.end method
