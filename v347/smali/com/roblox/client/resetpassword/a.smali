.class public Lcom/roblox/client/resetpassword/a;
.super Lcom/roblox/client/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/resetpassword/a$a;
    }
.end annotation


# instance fields
.field a:Lcom/roblox/client/resetpassword/b$a;

.field private b:Lcom/roblox/client/resetpassword/b;

.field private c:Lcom/roblox/client/components/RbxEditText;

.field private d:Lcom/roblox/client/components/RbxProgressButton;

.field private e:Landroid/widget/LinearLayout;

.field private f:Lcom/roblox/client/resetpassword/a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/roblox/client/m;-><init>()V

    .line 179
    new-instance v0, Lcom/roblox/client/resetpassword/a$4;

    invoke-direct {v0, p0}, Lcom/roblox/client/resetpassword/a$4;-><init>(Lcom/roblox/client/resetpassword/a;)V

    iput-object v0, p0, Lcom/roblox/client/resetpassword/a;->a:Lcom/roblox/client/resetpassword/b$a;

    .line 62
    return-void
.end method

.method public static a()Lcom/roblox/client/resetpassword/a;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/roblox/client/resetpassword/a;

    invoke-direct {v0}, Lcom/roblox/client/resetpassword/a;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/roblox/client/resetpassword/a;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/roblox/client/resetpassword/a;->b()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/resetpassword/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/roblox/client/resetpassword/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/roblox/client/resetpassword/a;->c:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0, p1}, Lcom/roblox/client/components/RbxEditText;->a(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/roblox/client/resetpassword/a;->d:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->a:Lcom/roblox/client/components/RbxProgressButton$b;

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;)V

    .line 177
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const v3, 0x7f0e0063

    .line 153
    iget-object v0, p0, Lcom/roblox/client/resetpassword/a;->d:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->b:Lcom/roblox/client/components/RbxProgressButton$b;

    const v2, 0x7f0e005d

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;I)V

    .line 154
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/roblox/client/resetpassword/a;->a(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/roblox/client/resetpassword/a;->c:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 167
    const-string v2, "resetPassword"

    const-string v3, "username"

    invoke-static {v2, v3, v1}, Lcom/roblox/client/i;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/roblox/client/resetpassword/a;->b:Lcom/roblox/client/resetpassword/b;

    iget-object v2, p0, Lcom/roblox/client/resetpassword/a;->a:Lcom/roblox/client/resetpassword/b$a;

    invoke-virtual {v1, v0, v2}, Lcom/roblox/client/resetpassword/b;->a(Ljava/lang/String;Lcom/roblox/client/resetpassword/b$a;)V

    .line 172
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {p0, v3}, Lcom/roblox/client/resetpassword/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/resetpassword/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p0, v3}, Lcom/roblox/client/resetpassword/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/resetpassword/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/roblox/client/resetpassword/a;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/roblox/client/resetpassword/a;->d()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/roblox/client/resetpassword/a;->d:Lcom/roblox/client/components/RbxProgressButton;

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$b;->a:Lcom/roblox/client/components/RbxProgressButton$b;

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxProgressButton;->a(Lcom/roblox/client/components/RbxProgressButton$b;)V

    .line 204
    new-instance v0, Landroid/support/v7/app/b$a;

    invoke-virtual {p0}, Lcom/roblox/client/resetpassword/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e00f1

    .line 205
    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->a(I)Landroid/support/v7/app/b$a;

    move-result-object v0

    const v1, 0x7f0e0062

    .line 206
    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->b(I)Landroid/support/v7/app/b$a;

    move-result-object v0

    const v1, 0x7f0e00ed

    new-instance v2, Lcom/roblox/client/resetpassword/a$5;

    invoke-direct {v2, p0}, Lcom/roblox/client/resetpassword/a$5;-><init>(Lcom/roblox/client/resetpassword/a;)V

    .line 207
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 213
    invoke-virtual {v0, v1}, Landroid/support/v7/app/b$a;->a(Z)Landroid/support/v7/app/b$a;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/support/v7/app/b$a;->c()Landroid/support/v7/app/b;

    .line 215
    return-void
.end method

.method static synthetic c(Lcom/roblox/client/resetpassword/a;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/roblox/client/resetpassword/a;->c()V

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/roblox/client/resetpassword/a;->e:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/roblox/client/p;->b(Landroid/view/View;)V

    .line 219
    iget-object v0, p0, Lcom/roblox/client/resetpassword/a;->f:Lcom/roblox/client/resetpassword/a$a;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/roblox/client/resetpassword/a;->f:Lcom/roblox/client/resetpassword/a$a;

    invoke-interface {v0}, Lcom/roblox/client/resetpassword/a$a;->x()V

    .line 222
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/roblox/client/m;->onAttach(Landroid/content/Context;)V

    .line 71
    const-string v0, "FragmentResetPassword"

    const-string v1, "onAttach()"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    instance-of v0, p1, Lcom/roblox/client/resetpassword/a$a;

    if-eqz v0, :cond_0

    .line 73
    check-cast p1, Lcom/roblox/client/resetpassword/a$a;

    iput-object p1, p0, Lcom/roblox/client/resetpassword/a;->f:Lcom/roblox/client/resetpassword/a$a;

    .line 77
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement OnFragmentInteractionListener."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/roblox/client/m;->onCreate(Landroid/os/Bundle;)V

    .line 90
    new-instance v0, Lcom/roblox/client/resetpassword/b;

    new-instance v1, Lcom/roblox/client/b/f;

    invoke-direct {v1}, Lcom/roblox/client/b/f;-><init>()V

    new-instance v2, Lcom/roblox/client/http/h;

    invoke-direct {v2}, Lcom/roblox/client/http/h;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/resetpassword/b;-><init>(Lcom/roblox/client/b/f;Lcom/roblox/client/http/f;)V

    iput-object v0, p0, Lcom/roblox/client/resetpassword/a;->b:Lcom/roblox/client/resetpassword/b;

    .line 92
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 98
    const v0, 0x7f0a006d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/roblox/client/resetpassword/a;->e:Landroid/widget/LinearLayout;

    .line 99
    iget-object v0, p0, Lcom/roblox/client/resetpassword/a;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0800cd

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 101
    const v1, 0x7f0a006e

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 103
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/roblox/client/resetpassword/a;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0800ca

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 105
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 107
    iget-object v0, p0, Lcom/roblox/client/resetpassword/a;->e:Landroid/widget/LinearLayout;

    const v1, 0x3fcccccd    # 1.6f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/resetpassword/a;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0800cf

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxEditText;

    iput-object v0, p0, Lcom/roblox/client/resetpassword/a;->c:Lcom/roblox/client/components/RbxEditText;

    .line 111
    iget-object v0, p0, Lcom/roblox/client/resetpassword/a;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0800ce

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxProgressButton;

    iput-object v0, p0, Lcom/roblox/client/resetpassword/a;->d:Lcom/roblox/client/components/RbxProgressButton;

    .line 112
    iget-object v0, p0, Lcom/roblox/client/resetpassword/a;->d:Lcom/roblox/client/components/RbxProgressButton;

    new-instance v1, Lcom/roblox/client/resetpassword/a$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/resetpassword/a$1;-><init>(Lcom/roblox/client/resetpassword/a;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxProgressButton;->setOnRbxClickedListener(Lcom/roblox/client/components/g;)V

    .line 119
    iget-object v0, p0, Lcom/roblox/client/resetpassword/a;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0800cb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxButton;

    .line 120
    new-instance v1, Lcom/roblox/client/resetpassword/a$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/resetpassword/a$2;-><init>(Lcom/roblox/client/resetpassword/a;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/roblox/client/resetpassword/a;->c:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object v0

    .line 128
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 129
    new-instance v1, Lcom/roblox/client/resetpassword/a$3;

    invoke-direct {v1, p0}, Lcom/roblox/client/resetpassword/a$3;-><init>(Lcom/roblox/client/resetpassword/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 139
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 140
    iget-object v1, p0, Lcom/roblox/client/resetpassword/a;->e:Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Lcom/roblox/client/p;->a(Landroid/view/View;Landroid/widget/EditText;)V

    .line 142
    iget-object v0, p0, Lcom/roblox/client/resetpassword/a;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/roblox/client/m;->onDetach()V

    .line 82
    const-string v0, "FragmentResetPassword"

    const-string v1, "onDetach()"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/resetpassword/a;->f:Lcom/roblox/client/resetpassword/a$a;

    .line 84
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/roblox/client/m;->onStart()V

    .line 149
    const-string v0, "passwordReset"

    invoke-static {v0}, Lcom/roblox/client/i;->b(Ljava/lang/String;)V

    .line 150
    return-void
.end method
