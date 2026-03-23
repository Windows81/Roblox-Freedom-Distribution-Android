.class public Lcom/roblox/client/signup/b;
.super Lcom/roblox/client/l/g;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/signup/f$d;


# static fields
.field private static i:Lcom/roblox/client/signup/a$b;


# instance fields
.field b:Landroid/widget/EditText;

.field c:Lcom/roblox/client/components/RbxEditText;

.field d:Landroid/widget/EditText;

.field e:Lcom/roblox/client/components/RbxLoadingEditText;

.field f:Lcom/roblox/client/components/RbxGenderPicker;

.field g:Lcom/roblox/client/components/RbxBirthdayPicker;

.field h:Lcom/roblox/client/components/RbxCheckBox;

.field private j:Landroid/view/View;

.field private k:Lcom/roblox/client/signup/UsernameSignUpEditText;

.field private l:Landroid/widget/EditText;

.field private m:Lcom/roblox/client/components/RbxEditText;

.field private n:Lcom/roblox/client/components/RbxTextView;

.field private o:Lcom/roblox/client/components/RbxProgressButton;

.field private p:Lcom/roblox/client/components/RbxButton;

.field private q:Lcom/roblox/client/signup/f$b;

.field private r:Lcom/roblox/abtesting/a;

.field private s:Lcom/roblox/client/l/a$a;

.field private t:Lcom/roblox/client/signup/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/roblox/client/signup/b$1;

    invoke-direct {v0}, Lcom/roblox/client/signup/b$1;-><init>()V

    sput-object v0, Lcom/roblox/client/signup/b;->i:Lcom/roblox/client/signup/a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lcom/roblox/client/l/g;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/roblox/client/signup/b;->k:Lcom/roblox/client/signup/UsernameSignUpEditText;

    .line 72
    iput-object v0, p0, Lcom/roblox/client/signup/b;->l:Landroid/widget/EditText;

    .line 73
    iput-object v0, p0, Lcom/roblox/client/signup/b;->m:Lcom/roblox/client/components/RbxEditText;

    .line 74
    iput-object v0, p0, Lcom/roblox/client/signup/b;->n:Lcom/roblox/client/components/RbxTextView;

    .line 75
    iput-object v0, p0, Lcom/roblox/client/signup/b;->o:Lcom/roblox/client/components/RbxProgressButton;

    .line 76
    iput-object v0, p0, Lcom/roblox/client/signup/b;->p:Lcom/roblox/client/components/RbxButton;

    .line 78
    iput-object v0, p0, Lcom/roblox/client/signup/b;->b:Landroid/widget/EditText;

    .line 80
    iput-object v0, p0, Lcom/roblox/client/signup/b;->c:Lcom/roblox/client/components/RbxEditText;

    .line 81
    iput-object v0, p0, Lcom/roblox/client/signup/b;->d:Landroid/widget/EditText;

    .line 82
    iput-object v0, p0, Lcom/roblox/client/signup/b;->e:Lcom/roblox/client/components/RbxLoadingEditText;

    .line 83
    iput-object v0, p0, Lcom/roblox/client/signup/b;->f:Lcom/roblox/client/components/RbxGenderPicker;

    .line 84
    iput-object v0, p0, Lcom/roblox/client/signup/b;->g:Lcom/roblox/client/components/RbxBirthdayPicker;

    .line 85
    iput-object v0, p0, Lcom/roblox/client/signup/b;->h:Lcom/roblox/client/components/RbxCheckBox;

    .line 93
    sget-object v0, Lcom/roblox/client/signup/b;->i:Lcom/roblox/client/signup/a$b;

    iput-object v0, p0, Lcom/roblox/client/signup/b;->t:Lcom/roblox/client/signup/a$b;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/signup/b;)Lcom/roblox/client/l/a$a;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/roblox/client/signup/b;->s:Lcom/roblox/client/l/a$a;

    return-object v0
.end method

.method static a()Lcom/roblox/client/signup/b;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/roblox/client/signup/b;

    invoke-direct {v0}, Lcom/roblox/client/signup/b;-><init>()V

    return-object v0
.end method

.method static synthetic b(Lcom/roblox/client/signup/b;)Lcom/roblox/client/signup/UsernameSignUpEditText;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/roblox/client/signup/b;->k:Lcom/roblox/client/signup/UsernameSignUpEditText;

    return-object v0
.end method

.method static synthetic c(Lcom/roblox/client/signup/b;)Lcom/roblox/client/signup/f$b;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/roblox/client/signup/b;->q:Lcom/roblox/client/signup/f$b;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lcom/roblox/client/signup/b;->j:Landroid/view/View;

    const v1, 0x7f0800df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/signup/UsernameSignUpEditText;

    iput-object v0, p0, Lcom/roblox/client/signup/b;->k:Lcom/roblox/client/signup/UsernameSignUpEditText;

    .line 155
    iget-object v0, p0, Lcom/roblox/client/signup/b;->k:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/b;->b:Landroid/widget/EditText;

    .line 156
    iget-object v0, p0, Lcom/roblox/client/signup/b;->b:Landroid/widget/EditText;

    const v1, 0x7f0801fd

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 157
    iget-object v0, p0, Lcom/roblox/client/signup/b;->k:Lcom/roblox/client/signup/UsernameSignUpEditText;

    invoke-virtual {v0}, Lcom/roblox/client/signup/UsernameSignUpEditText;->getBottomLabel()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0801fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 158
    iget-object v0, p0, Lcom/roblox/client/signup/b;->j:Landroid/view/View;

    const v1, 0x7f0800da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxEditText;

    iput-object v0, p0, Lcom/roblox/client/signup/b;->c:Lcom/roblox/client/components/RbxEditText;

    .line 159
    iget-object v0, p0, Lcom/roblox/client/signup/b;->c:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/b;->l:Landroid/widget/EditText;

    .line 160
    iget-object v0, p0, Lcom/roblox/client/signup/b;->l:Landroid/widget/EditText;

    const v1, 0x7f0801f9

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 161
    iget-object v0, p0, Lcom/roblox/client/signup/b;->c:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->getBottomLabel()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0801f8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 162
    iget-object v0, p0, Lcom/roblox/client/signup/b;->j:Landroid/view/View;

    const v1, 0x7f0800db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxEditText;

    iput-object v0, p0, Lcom/roblox/client/signup/b;->m:Lcom/roblox/client/components/RbxEditText;

    .line 163
    iget-object v0, p0, Lcom/roblox/client/signup/b;->m:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/b;->d:Landroid/widget/EditText;

    .line 164
    iget-object v0, p0, Lcom/roblox/client/signup/b;->d:Landroid/widget/EditText;

    const v1, 0x7f0801fb

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 165
    iget-object v0, p0, Lcom/roblox/client/signup/b;->m:Lcom/roblox/client/components/RbxEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxEditText;->getBottomLabel()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0801fa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 166
    iget-object v0, p0, Lcom/roblox/client/signup/b;->j:Landroid/view/View;

    const v1, 0x7f0800d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxGenderPicker;

    iput-object v0, p0, Lcom/roblox/client/signup/b;->f:Lcom/roblox/client/components/RbxGenderPicker;

    .line 167
    iget-object v0, p0, Lcom/roblox/client/signup/b;->j:Landroid/view/View;

    const v1, 0x7f0800d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxBirthdayPicker;

    iput-object v0, p0, Lcom/roblox/client/signup/b;->g:Lcom/roblox/client/components/RbxBirthdayPicker;

    .line 168
    iget-object v0, p0, Lcom/roblox/client/signup/b;->j:Landroid/view/View;

    const v1, 0x7f0800d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxLoadingEditText;

    iput-object v0, p0, Lcom/roblox/client/signup/b;->e:Lcom/roblox/client/components/RbxLoadingEditText;

    .line 169
    iget-object v0, p0, Lcom/roblox/client/signup/b;->j:Landroid/view/View;

    const v1, 0x7f0800d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxCheckBox;

    iput-object v0, p0, Lcom/roblox/client/signup/b;->h:Lcom/roblox/client/components/RbxCheckBox;

    .line 170
    iget-object v0, p0, Lcom/roblox/client/signup/b;->j:Landroid/view/View;

    const v1, 0x7f0800de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxTextView;

    iput-object v0, p0, Lcom/roblox/client/signup/b;->n:Lcom/roblox/client/components/RbxTextView;

    .line 171
    iget-object v0, p0, Lcom/roblox/client/signup/b;->j:Landroid/view/View;

    const v1, 0x7f0800dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxProgressButton;

    iput-object v0, p0, Lcom/roblox/client/signup/b;->o:Lcom/roblox/client/components/RbxProgressButton;

    .line 172
    iget-object v0, p0, Lcom/roblox/client/signup/b;->o:Lcom/roblox/client/components/RbxProgressButton;

    invoke-virtual {v0, v2}, Lcom/roblox/client/components/RbxProgressButton;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/roblox/client/signup/b;->j:Landroid/view/View;

    const v1, 0x7f0800d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxButton;

    iput-object v0, p0, Lcom/roblox/client/signup/b;->p:Lcom/roblox/client/components/RbxButton;

    .line 175
    iget-object v0, p0, Lcom/roblox/client/signup/b;->j:Landroid/view/View;

    const v1, 0x7f0800d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 176
    invoke-virtual {p0}, Lcom/roblox/client/signup/b;->getActivity()Landroid/support/v4/app/h;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/roblox/client/util/a/b;->b(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 177
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 178
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/roblox/client/signup/b;->j:Landroid/view/View;

    const v1, 0x7f0800d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/signup/b$5;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/b$5;-><init>(Lcom/roblox/client/signup/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/roblox/client/signup/b;->j:Landroid/view/View;

    const v1, 0x7f0800d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/signup/b$6;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/b$6;-><init>(Lcom/roblox/client/signup/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/roblox/client/signup/b;->o:Lcom/roblox/client/components/RbxProgressButton;

    new-instance v1, Lcom/roblox/client/signup/b$7;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/b$7;-><init>(Lcom/roblox/client/signup/b;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxProgressButton;->setOnRbxClickedListener(Lcom/roblox/client/components/g;)V

    .line 205
    invoke-static {}, Lcom/roblox/client/b;->aZ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/roblox/client/signup/b;->k:Lcom/roblox/client/signup/UsernameSignUpEditText;

    new-instance v1, Lcom/roblox/client/signup/b$8;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/b$8;-><init>(Lcom/roblox/client/signup/b;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/signup/UsernameSignUpEditText;->setGenerateUsernameIconTouchListener(Lcom/roblox/client/signup/c;)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/signup/b;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/signup/b$9;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/b$9;-><init>(Lcom/roblox/client/signup/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 223
    iget-object v0, p0, Lcom/roblox/client/signup/b;->c:Lcom/roblox/client/components/RbxEditText;

    new-instance v1, Lcom/roblox/client/signup/b$10;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/b$10;-><init>(Lcom/roblox/client/signup/b;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxEditText;->setRbxFocusChangedListener(Lcom/roblox/client/components/i;)V

    .line 229
    iget-object v0, p0, Lcom/roblox/client/signup/b;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/signup/b$11;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/b$11;-><init>(Lcom/roblox/client/signup/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 236
    iget-object v0, p0, Lcom/roblox/client/signup/b;->e:Lcom/roblox/client/components/RbxLoadingEditText;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxLoadingEditText;->getTextBox()Landroid/widget/EditText;

    move-result-object v0

    .line 237
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 238
    new-instance v1, Lcom/roblox/client/signup/b$12;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/b$12;-><init>(Lcom/roblox/client/signup/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 248
    new-instance v1, Lcom/roblox/client/signup/b$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/b$2;-><init>(Lcom/roblox/client/signup/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 255
    iget-object v0, p0, Lcom/roblox/client/signup/b;->f:Lcom/roblox/client/components/RbxGenderPicker;

    new-instance v1, Lcom/roblox/client/signup/b$3;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/b$3;-><init>(Lcom/roblox/client/signup/b;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxGenderPicker;->setOnGenderButtonPressedListener(Lcom/roblox/client/components/RbxGenderPicker$a;)V

    .line 264
    iget-object v0, p0, Lcom/roblox/client/signup/b;->h:Lcom/roblox/client/components/RbxCheckBox;

    new-instance v1, Lcom/roblox/client/signup/b$4;

    invoke-direct {v1, p0}, Lcom/roblox/client/signup/b$4;-><init>(Lcom/roblox/client/signup/b;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 272
    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/l/a$a;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/roblox/client/signup/b;->s:Lcom/roblox/client/l/a$a;

    .line 283
    return-void
.end method

.method public a(Lcom/roblox/client/l/e;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/roblox/client/signup/b;->a:Lcom/roblox/client/l/e;

    .line 288
    return-void
.end method

.method public a(Lcom/roblox/client/signup/f$b;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/roblox/client/signup/b;->q:Lcom/roblox/client/signup/f$b;

    .line 278
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Lcom/roblox/client/signup/f$b;

    invoke-virtual {p0, p1}, Lcom/roblox/client/signup/b;->a(Lcom/roblox/client/signup/f$b;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/roblox/client/signup/b;->t:Lcom/roblox/client/signup/a$b;

    invoke-interface {v0}, Lcom/roblox/client/signup/a$b;->l()V

    .line 293
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/roblox/client/signup/b;->t:Lcom/roblox/client/signup/a$b;

    invoke-interface {v0}, Lcom/roblox/client/signup/a$b;->m()V

    .line 302
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/roblox/client/l/g;->onAttach(Landroid/content/Context;)V

    .line 136
    instance-of v0, p1, Lcom/roblox/client/signup/a$b;

    if-eqz v0, :cond_0

    .line 137
    check-cast p1, Lcom/roblox/client/signup/a$b;

    iput-object p1, p0, Lcom/roblox/client/signup/b;->t:Lcom/roblox/client/signup/a$b;

    .line 143
    return-void

    .line 139
    :cond_0
    const-string v0, "signup_window_mvp"

    const-string v1, "Parent activity does not implement FragmentSignUp.OnFragmentInteractionListener!"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
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
    .locals 4

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/roblox/client/l/g;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/roblox/client/signup/b;->getTheme()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/signup/b;->setStyle(II)V

    .line 105
    invoke-static {}, Lcom/roblox/abtesting/a;->a()Lcom/roblox/abtesting/a;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/b;->r:Lcom/roblox/abtesting/a;

    .line 106
    new-instance v0, Lcom/roblox/client/signup/i;

    new-instance v1, Lcom/roblox/client/signup/h;

    new-instance v2, Lcom/roblox/client/signup/g;

    new-instance v3, Lcom/roblox/client/http/h;

    invoke-direct {v3}, Lcom/roblox/client/http/h;-><init>()V

    invoke-direct {v2, v3}, Lcom/roblox/client/signup/g;-><init>(Lcom/roblox/client/http/f;)V

    invoke-direct {v1, v2}, Lcom/roblox/client/signup/h;-><init>(Lcom/roblox/client/signup/g;)V

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/signup/i;-><init>(Lcom/roblox/client/signup/f$d;Lcom/roblox/client/signup/f$a;)V

    iput-object v0, p0, Lcom/roblox/client/signup/b;->q:Lcom/roblox/client/signup/f$b;

    .line 109
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 118
    const v0, 0x7f0a0071

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/signup/b;->j:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/roblox/client/signup/b;->j:Landroid/view/View;

    const v1, 0x7f0800dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 121
    const v1, 0x7f0a006f

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 123
    const v1, 0x7f0800d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 125
    const v1, 0x7f0a0070

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 127
    invoke-direct {p0}, Lcom/roblox/client/signup/b;->d()V

    .line 128
    invoke-direct {p0}, Lcom/roblox/client/signup/b;->e()V

    .line 130
    iget-object v0, p0, Lcom/roblox/client/signup/b;->j:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/roblox/client/l/g;->onDetach()V

    .line 149
    sget-object v0, Lcom/roblox/client/signup/b;->i:Lcom/roblox/client/signup/a$b;

    iput-object v0, p0, Lcom/roblox/client/signup/b;->t:Lcom/roblox/client/signup/a$b;

    .line 150
    return-void
.end method
