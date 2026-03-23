.class public Lcom/roblox/client/login/a;
.super Lcom/roblox/client/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/login/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Lcom/roblox/client/components/RbxEditText;

.field private d:Lcom/roblox/client/components/RbxEditText;

.field private e:Lcom/roblox/client/components/RbxProgressButton;

.field private f:Landroid/view/View;

.field private g:Lcom/roblox/client/login/a$a;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/roblox/client/m;-><init>()V

    return-void
.end method

.method public static a()Lcom/roblox/client/login/a;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/roblox/client/login/a;

    invoke-direct {v0}, Lcom/roblox/client/login/a;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/login/a;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/roblox/client/login/a;->e()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/login/a;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/roblox/client/login/a;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/roblox/client/login/a;)Lcom/roblox/client/login/a$a;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/roblox/client/login/a;->g:Lcom/roblox/client/login/a$a;

    return-object v0
.end method

.method static synthetic b(Lcom/roblox/client/login/a;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/roblox/client/login/a;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/roblox/client/login/a;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/roblox/client/login/a;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/roblox/client/login/a;)Lcom/roblox/client/components/RbxEditText;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/roblox/client/login/a;->c:Lcom/roblox/client/components/RbxEditText;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/roblox/client/login/a;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/login/a$6;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/a$6;-><init>(Lcom/roblox/client/login/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 220
    iget-object v0, p0, Lcom/roblox/client/login/a;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/login/a$7;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/a$7;-><init>(Lcom/roblox/client/login/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 235
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 238
    const-string v0, "FragmentLogin"

    const-string v1, "onLoginButtonClick: ENTER"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p0}, Lcom/roblox/client/login/a;->alertIfNetworkNotConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/login/a;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 244
    iget-object v0, p0, Lcom/roblox/client/login/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 245
    iget-object v0, p0, Lcom/roblox/client/login/a;->e:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->b:Lcom/roblox/client/components/RbxProgressButton$b;

    const v2, 0x7f0e011e

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;I)V

    .line 247
    iget-object v0, p0, Lcom/roblox/client/login/a;->f:Landroid/view/View;

    invoke-static {v0}, Lcom/roblox/client/p;->b(Landroid/view/View;)V

    .line 248
    invoke-direct {p0}, Lcom/roblox/client/login/a;->f()V

    .line 250
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 252
    new-instance v1, Lcom/roblox/client/login/a$8;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/a$8;-><init>(Lcom/roblox/client/login/a;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic e(Lcom/roblox/client/login/a;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/roblox/client/login/a;->i:Z

    return v0
.end method

.method static synthetic f(Lcom/roblox/client/login/a;)Lcom/roblox/client/components/RbxEditText;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/roblox/client/login/a;->d:Lcom/roblox/client/components/RbxEditText;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/roblox/client/login/a;->c:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->b()V

    .line 305
    iget-object v0, p0, Lcom/roblox/client/login/a;->d:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->b()V

    .line 306
    return-void
.end method

.method static synthetic g(Lcom/roblox/client/login/a;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/roblox/client/login/a;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/roblox/client/login/a;->e:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->a:Lcom/roblox/client/components/RbxProgressButton$b;

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;)V

    .line 310
    iget-object v0, p0, Lcom/roblox/client/login/a;->c:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->c()V

    .line 311
    iget-object v0, p0, Lcom/roblox/client/login/a;->d:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->c()V

    .line 312
    return-void
.end method

.method static synthetic h(Lcom/roblox/client/login/a;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/roblox/client/login/a;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/roblox/client/login/a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/roblox/client/login/a;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/roblox/client/login/a;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/roblox/client/login/a;->g()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/roblox/client/login/a;->e:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->a:Lcom/roblox/client/components/RbxProgressButton$b;

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;)V

    .line 300
    invoke-direct {p0}, Lcom/roblox/client/login/a;->g()V

    .line 301
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 315
    invoke-static {}, Lcom/roblox/client/b;->aH()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 317
    new-instance v1, Lcom/roblox/client/login/a$9;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/a$9;-><init>(Lcom/roblox/client/login/a;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 326
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/roblox/client/m;->onAttach(Landroid/content/Context;)V

    .line 186
    const-string v0, "FragmentLogin"

    const-string v1, "onAttach()"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    instance-of v0, p1, Lcom/roblox/client/login/a$a;

    if-eqz v0, :cond_0

    .line 188
    check-cast p1, Lcom/roblox/client/login/a$a;

    iput-object p1, p0, Lcom/roblox/client/login/a;->g:Lcom/roblox/client/login/a$a;

    .line 192
    return-void

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/roblox/client/m;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/roblox/client/login/a;->getTheme()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/login/a;->setStyle(II)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    const v1, 0x103000a

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/login/a;->setStyle(II)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/abtesting/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const v0, 0x7f0a006c

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 101
    :goto_0
    const v0, 0x7f0800c9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxEditText;

    iput-object v0, p0, Lcom/roblox/client/login/a;->c:Lcom/roblox/client/components/RbxEditText;

    .line 102
    iget-object v0, p0, Lcom/roblox/client/login/a;->c:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/login/a;->a:Landroid/widget/EditText;

    .line 104
    iget-object v0, p0, Lcom/roblox/client/login/a;->a:Landroid/widget/EditText;

    const v2, 0x7f0801f6

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setId(I)V

    .line 105
    iget-object v0, p0, Lcom/roblox/client/login/a;->c:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->getBottomLabel()Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f0801f5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 107
    iget-object v0, p0, Lcom/roblox/client/login/a;->a:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 108
    iget-object v0, p0, Lcom/roblox/client/login/a;->a:Landroid/widget/EditText;

    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/q/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iput-object v1, p0, Lcom/roblox/client/login/a;->f:Landroid/view/View;

    .line 112
    const v0, 0x7f0800c7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxEditText;

    iput-object v0, p0, Lcom/roblox/client/login/a;->d:Lcom/roblox/client/components/RbxEditText;

    .line 113
    iget-object v0, p0, Lcom/roblox/client/login/a;->d:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/login/a;->b:Landroid/widget/EditText;

    .line 114
    iget-object v0, p0, Lcom/roblox/client/login/a;->b:Landroid/widget/EditText;

    const v2, 0x7f0801f4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setId(I)V

    .line 115
    iget-object v0, p0, Lcom/roblox/client/login/a;->d:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->getBottomLabel()Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f0801f3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 117
    iget-object v0, p0, Lcom/roblox/client/login/a;->b:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 118
    iget-object v0, p0, Lcom/roblox/client/login/a;->b:Landroid/widget/EditText;

    new-instance v2, Lcom/roblox/client/login/a$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/login/a$1;-><init>(Lcom/roblox/client/login/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 128
    const v0, 0x7f0800c1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxButton;

    .line 129
    new-instance v2, Lcom/roblox/client/login/a$2;

    invoke-direct {v2, p0}, Lcom/roblox/client/login/a$2;-><init>(Lcom/roblox/client/login/a;)V

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v0, 0x7f0800c3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxProgressButton;

    iput-object v0, p0, Lcom/roblox/client/login/a;->e:Lcom/roblox/client/components/RbxProgressButton;

    .line 139
    iget-object v0, p0, Lcom/roblox/client/login/a;->e:Lcom/roblox/client/components/RbxProgressButton;

    new-instance v2, Lcom/roblox/client/login/a$3;

    invoke-direct {v2, p0}, Lcom/roblox/client/login/a$3;-><init>(Lcom/roblox/client/login/a;)V

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxProgressButton;->setOnRbxClickedListener(Lcom/roblox/client/components/g;)V

    .line 146
    const v0, 0x7f0800c4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxButton;

    .line 147
    new-instance v2, Lcom/roblox/client/login/a$4;

    invoke-direct {v2, p0}, Lcom/roblox/client/login/a$4;-><init>(Lcom/roblox/client/login/a;)V

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-static {}, Lcom/roblox/client/b;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const v0, 0x7f0800c2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxButton;

    .line 159
    invoke-virtual {v0, v3}, Lcom/roblox/client/components/RbxButton;->setVisibility(I)V

    .line 160
    new-instance v2, Lcom/roblox/client/login/a$5;

    invoke-direct {v2, p0}, Lcom/roblox/client/login/a$5;-><init>(Lcom/roblox/client/login/a;)V

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/login/a;->d()V

    .line 172
    return-object v1

    .line 86
    :cond_1
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0a0063

    move v1, v0

    .line 88
    :goto_1
    const v0, 0x7f0a0065

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 89
    const v0, 0x7f0800c8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 91
    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 93
    const v1, 0x7f0800c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 94
    const v1, 0x7f0a0062

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 97
    const v0, 0x7f0800c0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 98
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v1, v2

    goto/16 :goto_0

    .line 86
    :cond_2
    const v0, 0x7f0a0064

    move v1, v0

    goto :goto_1
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Lcom/roblox/client/m;->onDetach()V

    .line 197
    const-string v0, "FragmentLogin"

    const-string v1, "onDetach()"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/login/a;->g:Lcom/roblox/client/login/a$a;

    .line 199
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 292
    invoke-super {p0, p1}, Lcom/roblox/client/m;->onDismiss(Landroid/content/DialogInterface;)V

    .line 293
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    const-string v0, "login"

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/roblox/client/m;->onStart()V

    .line 180
    const-string v0, "login"

    invoke-static {v0}, Lcom/roblox/client/i;->b(Ljava/lang/String;)V

    .line 181
    return-void
.end method
