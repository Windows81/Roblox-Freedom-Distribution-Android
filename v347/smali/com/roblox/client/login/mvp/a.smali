.class public Lcom/roblox/client/login/mvp/a;
.super Lcom/roblox/client/l/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/login/mvp/a$a;
    }
.end annotation


# instance fields
.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Lcom/roblox/client/components/RbxEditText;

.field private e:Lcom/roblox/client/components/RbxEditText;

.field private f:Lcom/roblox/client/components/RbxProgressButton;

.field private g:Landroid/view/View;

.field private h:Lcom/roblox/client/login/mvp/a$a;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/roblox/client/l/g;-><init>()V

    return-void
.end method

.method public static a()Lcom/roblox/client/login/mvp/a;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/roblox/client/login/mvp/a;

    invoke-direct {v0}, Lcom/roblox/client/login/mvp/a;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/login/mvp/a;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/a;->f()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/login/mvp/a;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/roblox/client/login/mvp/a;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/roblox/client/login/mvp/a;)Lcom/roblox/client/login/mvp/a$a;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->h:Lcom/roblox/client/login/mvp/a$a;

    return-object v0
.end method

.method static synthetic b(Lcom/roblox/client/login/mvp/a;Z)Z
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/roblox/client/login/mvp/a;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/roblox/client/login/mvp/a;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/roblox/client/login/mvp/a;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/roblox/client/login/mvp/a;)Lcom/roblox/client/components/RbxEditText;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->d:Lcom/roblox/client/components/RbxEditText;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/login/mvp/a$7;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/mvp/a$7;-><init>(Lcom/roblox/client/login/mvp/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 224
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/login/mvp/a$8;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/mvp/a$8;-><init>(Lcom/roblox/client/login/mvp/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 241
    return-void
.end method

.method static synthetic e(Lcom/roblox/client/login/mvp/a;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/roblox/client/login/mvp/a;->j:Z

    return v0
.end method

.method static synthetic f(Lcom/roblox/client/login/mvp/a;)Lcom/roblox/client/components/RbxEditText;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->e:Lcom/roblox/client/components/RbxEditText;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 244
    const-string v0, "rbx.authlogin"

    const-string v1, "onLoginButtonClick: ENTER"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/a;->alertIfNetworkNotConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 250
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 251
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->f:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->b:Lcom/roblox/client/components/RbxProgressButton$b;

    const v2, 0x7f0e011e

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;I)V

    .line 253
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->g:Landroid/view/View;

    invoke-static {v0}, Lcom/roblox/client/p;->b(Landroid/view/View;)V

    .line 254
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/a;->h()V

    .line 256
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 258
    new-instance v1, Lcom/roblox/client/login/mvp/a$9;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/mvp/a$9;-><init>(Lcom/roblox/client/login/mvp/a;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic g(Lcom/roblox/client/login/mvp/a;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 294
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 295
    new-instance v1, Lcom/roblox/client/login/mvp/a$10;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/mvp/a$10;-><init>(Lcom/roblox/client/login/mvp/a;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 303
    return-void
.end method

.method static synthetic h(Lcom/roblox/client/login/mvp/a;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->d:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->b()V

    .line 318
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->e:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->b()V

    .line 319
    return-void
.end method

.method static synthetic i(Lcom/roblox/client/login/mvp/a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->g:Landroid/view/View;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->f:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->a:Lcom/roblox/client/components/RbxProgressButton$b;

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;)V

    .line 323
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->d:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->c()V

    .line 324
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->e:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->c()V

    .line 325
    return-void
.end method

.method static synthetic j(Lcom/roblox/client/login/mvp/a;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/a;->i()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 309
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->f:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->a:Lcom/roblox/client/components/RbxProgressButton$b;

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;)V

    .line 313
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/a;->i()V

    .line 314
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 328
    invoke-static {}, Lcom/roblox/client/b;->aH()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 330
    new-instance v1, Lcom/roblox/client/login/mvp/a$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/login/mvp/a$2;-><init>(Lcom/roblox/client/login/mvp/a;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 339
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->b:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 344
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->b:Landroid/widget/EditText;

    const v1, 0x7f0e003d

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 345
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/a;->g()V

    .line 346
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/roblox/client/l/g;->onAttach(Landroid/content/Context;)V

    .line 188
    const-string v0, "rbx.authlogin"

    const-string v1, "onAttach()"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    instance-of v0, p1, Lcom/roblox/client/login/mvp/a$a;

    if-eqz v0, :cond_0

    .line 190
    check-cast p1, Lcom/roblox/client/login/mvp/a$a;

    iput-object p1, p0, Lcom/roblox/client/login/mvp/a;->h:Lcom/roblox/client/login/mvp/a$a;

    .line 194
    return-void

    .line 192
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
    .line 67
    invoke-super {p0, p1}, Lcom/roblox/client/l/g;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/roblox/client/login/mvp/a;->getTheme()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/login/mvp/a;->setStyle(II)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    const v1, 0x103000a

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/login/mvp/a;->setStyle(II)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    .line 81
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/abtesting/a;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    const v0, 0x7f0a006c

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 100
    :goto_0
    const v0, 0x7f0800c9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxEditText;

    iput-object v0, p0, Lcom/roblox/client/login/mvp/a;->d:Lcom/roblox/client/components/RbxEditText;

    .line 101
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->d:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/login/mvp/a;->b:Landroid/widget/EditText;

    .line 103
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->b:Landroid/widget/EditText;

    const v2, 0x7f0801f6

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setId(I)V

    .line 104
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->d:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->getBottomLabel()Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f0801f5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 106
    invoke-static {}, Lcom/roblox/client/b;->bL()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/roblox/client/b;->bM()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 108
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->b:Landroid/widget/EditText;

    const v2, 0x7f0e003f

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 116
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->b:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 118
    iput-object v1, p0, Lcom/roblox/client/login/mvp/a;->g:Landroid/view/View;

    .line 120
    const v0, 0x7f0800c7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxEditText;

    iput-object v0, p0, Lcom/roblox/client/login/mvp/a;->e:Lcom/roblox/client/components/RbxEditText;

    .line 121
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->e:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/login/mvp/a;->c:Landroid/widget/EditText;

    .line 122
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->c:Landroid/widget/EditText;

    const v2, 0x7f0801f4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setId(I)V

    .line 123
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->e:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->getBottomLabel()Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f0801f3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 125
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->c:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 126
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->c:Landroid/widget/EditText;

    new-instance v2, Lcom/roblox/client/login/mvp/a$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/login/mvp/a$1;-><init>(Lcom/roblox/client/login/mvp/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 136
    const v0, 0x7f0800c1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxButton;

    .line 137
    new-instance v2, Lcom/roblox/client/login/mvp/a$3;

    invoke-direct {v2, p0}, Lcom/roblox/client/login/mvp/a$3;-><init>(Lcom/roblox/client/login/mvp/a;)V

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v0, 0x7f0800c3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxProgressButton;

    iput-object v0, p0, Lcom/roblox/client/login/mvp/a;->f:Lcom/roblox/client/components/RbxProgressButton;

    .line 145
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->f:Lcom/roblox/client/components/RbxProgressButton;

    new-instance v2, Lcom/roblox/client/login/mvp/a$4;

    invoke-direct {v2, p0}, Lcom/roblox/client/login/mvp/a$4;-><init>(Lcom/roblox/client/login/mvp/a;)V

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxProgressButton;->setOnRbxClickedListener(Lcom/roblox/client/components/g;)V

    .line 152
    const v0, 0x7f0800c4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxButton;

    .line 153
    new-instance v2, Lcom/roblox/client/login/mvp/a$5;

    invoke-direct {v2, p0}, Lcom/roblox/client/login/mvp/a$5;-><init>(Lcom/roblox/client/login/mvp/a;)V

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-static {}, Lcom/roblox/client/b;->S()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const v0, 0x7f0800c2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxButton;

    .line 163
    invoke-virtual {v0, v3}, Lcom/roblox/client/components/RbxButton;->setVisibility(I)V

    .line 164
    new-instance v2, Lcom/roblox/client/login/mvp/a$6;

    invoke-direct {v2, p0}, Lcom/roblox/client/login/mvp/a$6;-><init>(Lcom/roblox/client/login/mvp/a;)V

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    :cond_1
    invoke-direct {p0}, Lcom/roblox/client/login/mvp/a;->e()V

    .line 174
    return-object v1

    .line 84
    :cond_2
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0a0063

    move v1, v0

    .line 86
    :goto_2
    const v0, 0x7f0a0065

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 87
    const v0, 0x7f0800c8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 89
    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 91
    const v1, 0x7f0800c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 93
    const v1, 0x7f0a0062

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 96
    const v0, 0x7f0800c0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v1, v2

    goto/16 :goto_0

    .line 84
    :cond_3
    const v0, 0x7f0a0064

    move v1, v0

    goto :goto_2

    .line 109
    :cond_4
    invoke-static {}, Lcom/roblox/client/b;->bM()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 110
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 111
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->b:Landroid/widget/EditText;

    const v2, 0x7f0e003e

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    goto/16 :goto_1

    .line 112
    :cond_5
    invoke-static {}, Lcom/roblox/client/b;->bL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a;->b:Landroid/widget/EditText;

    const v2, 0x7f0e0040

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    goto/16 :goto_1
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Lcom/roblox/client/l/g;->onDetach()V

    .line 199
    const-string v0, "rbx.authlogin"

    const-string v1, "onDetach()"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/login/mvp/a;->h:Lcom/roblox/client/login/mvp/a$a;

    .line 201
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Lcom/roblox/client/l/g;->onStart()V

    .line 182
    const-string v0, "login"

    invoke-static {v0}, Lcom/roblox/client/i;->b(Ljava/lang/String;)V

    .line 183
    return-void
.end method
