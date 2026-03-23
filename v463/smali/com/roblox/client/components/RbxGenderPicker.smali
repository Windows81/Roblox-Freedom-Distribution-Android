.class public Lcom/roblox/client/components/RbxGenderPicker;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/components/RbxGenderPicker$SavedState;,
        Lcom/roblox/client/components/RbxGenderPicker$a;
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/client/components/RbxButton;

.field private b:Lcom/roblox/client/components/RbxButton;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/roblox/client/components/RbxTextView;

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/roblox/client/components/RbxGenderPicker$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->a:Lcom/roblox/client/components/RbxButton;

    .line 36
    iput-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->b:Lcom/roblox/client/components/RbxButton;

    .line 37
    iput-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->c:Landroid/widget/ImageView;

    .line 38
    iput-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->d:Landroid/widget/ImageView;

    .line 39
    iput-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->e:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->i:I

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/components/RbxGenderPicker;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/components/RbxGenderPicker;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/roblox/client/components/RbxGenderPicker;->i:I

    return p1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/roblox/client/o$g;->rbx_updated_gender_picker:I

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxGenderPicker;->getRootView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    sget v0, Lcom/roblox/client/o$f;->rbxGenderBtnMaleTextView:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxGenderPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->f:Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/roblox/client/o$f;->rbxGenderBtnFemaleTextView:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxGenderPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->g:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/roblox/client/o$c;->RbxGray4:I

    invoke-static {p1, v0}, Landroidx/core/a/b;->c(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->j:I

    .line 56
    sget v0, Lcom/roblox/client/o$c;->RbxBlack:I

    invoke-static {p1, v0}, Landroidx/core/a/b;->c(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->k:I

    .line 58
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->f:Landroid/widget/TextView;

    invoke-static {v0, p1, p2}, Lcom/roblox/client/components/h;->a(Landroid/widget/TextView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->g:Landroid/widget/TextView;

    invoke-static {v0, p1, p2}, Lcom/roblox/client/components/h;->a(Landroid/widget/TextView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    sget p2, Lcom/roblox/client/o$f;->rbxGenderBtnMale:I

    invoke-virtual {p0, p2}, Lcom/roblox/client/components/RbxGenderPicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxButton;

    iput-object p2, p0, Lcom/roblox/client/components/RbxGenderPicker;->a:Lcom/roblox/client/components/RbxButton;

    .line 62
    sget p2, Lcom/roblox/client/o$f;->rbxGenderBtnFemale:I

    invoke-virtual {p0, p2}, Lcom/roblox/client/components/RbxGenderPicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxButton;

    iput-object p2, p0, Lcom/roblox/client/components/RbxGenderPicker;->b:Lcom/roblox/client/components/RbxButton;

    .line 63
    sget p2, Lcom/roblox/client/o$f;->rbxGenderBtnMaleBg:I

    invoke-virtual {p0, p2}, Lcom/roblox/client/components/RbxGenderPicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/roblox/client/components/RbxGenderPicker;->c:Landroid/widget/ImageView;

    .line 64
    sget p2, Lcom/roblox/client/o$f;->rbxGenderBtnFemaleBg:I

    invoke-virtual {p0, p2}, Lcom/roblox/client/components/RbxGenderPicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/roblox/client/components/RbxGenderPicker;->d:Landroid/widget/ImageView;

    .line 65
    sget p2, Lcom/roblox/client/o$f;->rbxGenderContainer:I

    invoke-virtual {p0, p2}, Lcom/roblox/client/components/RbxGenderPicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/roblox/client/components/RbxGenderPicker;->e:Landroid/widget/LinearLayout;

    .line 66
    sget p2, Lcom/roblox/client/o$f;->rbxGenderBottomText:I

    invoke-virtual {p0, p2}, Lcom/roblox/client/components/RbxGenderPicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/components/RbxTextView;

    iput-object p2, p0, Lcom/roblox/client/components/RbxGenderPicker;->h:Lcom/roblox/client/components/RbxTextView;

    .line 68
    iget-object p2, p0, Lcom/roblox/client/components/RbxGenderPicker;->b:Lcom/roblox/client/components/RbxButton;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Description_GenderPickerFemaleContentDesc:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/roblox/client/components/RbxButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 69
    iget-object p2, p0, Lcom/roblox/client/components/RbxGenderPicker;->a:Lcom/roblox/client/components/RbxButton;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Description_GenderPickerMaleContentDesc:I

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/roblox/client/components/RbxButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 70
    iget-object p2, p0, Lcom/roblox/client/components/RbxGenderPicker;->g:Landroid/widget/TextView;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Female:I

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p2, p0, Lcom/roblox/client/components/RbxGenderPicker;->h:Lcom/roblox/client/components/RbxTextView;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_GenderRequired:I

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/roblox/client/components/RbxTextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p2, p0, Lcom/roblox/client/components/RbxGenderPicker;->f:Landroid/widget/TextView;

    sget v0, Lcom/roblox/client/o$j;->Authentication_SignUp_Label_Male:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/roblox/client/locale/a/a;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    new-instance p1, Lcom/roblox/client/components/RbxGenderPicker$1;

    invoke-direct {p1, p0}, Lcom/roblox/client/components/RbxGenderPicker$1;-><init>(Lcom/roblox/client/components/RbxGenderPicker;)V

    invoke-virtual {p0, p1}, Lcom/roblox/client/components/RbxGenderPicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object p1, p0, Lcom/roblox/client/components/RbxGenderPicker;->a:Lcom/roblox/client/components/RbxButton;

    new-instance p2, Lcom/roblox/client/components/RbxGenderPicker$2;

    invoke-direct {p2, p0}, Lcom/roblox/client/components/RbxGenderPicker$2;-><init>(Lcom/roblox/client/components/RbxGenderPicker;)V

    invoke-virtual {p1, p2}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object p1, p0, Lcom/roblox/client/components/RbxGenderPicker;->b:Lcom/roblox/client/components/RbxButton;

    new-instance p2, Lcom/roblox/client/components/RbxGenderPicker$3;

    invoke-direct {p2, p0}, Lcom/roblox/client/components/RbxGenderPicker$3;-><init>(Lcom/roblox/client/components/RbxGenderPicker;)V

    invoke-virtual {p1, p2}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/components/RbxGenderPicker;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/roblox/client/components/RbxGenderPicker;->e()V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/components/RbxGenderPicker;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/roblox/client/components/RbxGenderPicker;->i:I

    return p0
.end method

.method static synthetic c(Lcom/roblox/client/components/RbxGenderPicker;)Landroid/widget/ImageView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/roblox/client/components/RbxGenderPicker;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/roblox/client/components/RbxGenderPicker;)Landroid/widget/ImageView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/roblox/client/components/RbxGenderPicker;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic e(Lcom/roblox/client/components/RbxGenderPicker;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/roblox/client/components/RbxGenderPicker;->k:I

    return p0
.end method

.method private e()V
    .locals 2

    const/4 v0, 0x0

    .line 176
    iput v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->i:I

    .line 177
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->d:Landroid/widget/ImageView;

    sget v1, Lcom/roblox/client/o$e;->icon_female:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->c:Landroid/widget/ImageView;

    sget v1, Lcom/roblox/client/o$e;->icon_male:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->e:Landroid/widget/LinearLayout;

    sget v1, Lcom/roblox/client/o$e;->rbx_bg_gender_full:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 181
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->f:Landroid/widget/TextView;

    iget v1, p0, Lcom/roblox/client/components/RbxGenderPicker;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->g:Landroid/widget/TextView;

    iget v1, p0, Lcom/roblox/client/components/RbxGenderPicker;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method static synthetic f(Lcom/roblox/client/components/RbxGenderPicker;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/roblox/client/components/RbxGenderPicker;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/roblox/client/components/RbxGenderPicker;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/roblox/client/components/RbxGenderPicker;->j:I

    return p0
.end method

.method static synthetic h(Lcom/roblox/client/components/RbxGenderPicker;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/roblox/client/components/RbxGenderPicker;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i(Lcom/roblox/client/components/RbxGenderPicker;)Lcom/roblox/client/components/RbxGenderPicker$a;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/roblox/client/components/RbxGenderPicker;->l:Lcom/roblox/client/components/RbxGenderPicker$a;

    return-object p0
.end method

.method static synthetic j(Lcom/roblox/client/components/RbxGenderPicker;)Lcom/roblox/client/components/RbxButton;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/roblox/client/components/RbxGenderPicker;->a:Lcom/roblox/client/components/RbxButton;

    return-object p0
.end method

.method static synthetic k(Lcom/roblox/client/components/RbxGenderPicker;)Lcom/roblox/client/components/RbxButton;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/roblox/client/components/RbxGenderPicker;->b:Lcom/roblox/client/components/RbxButton;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 187
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->e:Landroid/widget/LinearLayout;

    sget v1, Lcom/roblox/client/o$e;->rbx_bg_gender_full_error:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 189
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->h:Lcom/roblox/client/components/RbxTextView;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/roblox/client/components/RbxGenderPicker;->h:Lcom/roblox/client/components/RbxTextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0xc8

    invoke-static/range {v1 .. v6}, Lcom/roblox/client/components/g;->a(Landroid/view/View;IFFJ)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->e:Landroid/widget/LinearLayout;

    sget v1, Lcom/roblox/client/o$e;->rbx_bg_gender_full_success:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 196
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->h:Lcom/roblox/client/components/RbxTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxTextView;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 204
    invoke-static {p0}, Lcom/roblox/client/components/g;->a(Landroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 205
    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxGenderPicker;->startAnimation(Landroid/view/animation/Animation;)V

    .line 206
    new-instance v0, Lcom/roblox/client/components/RbxGenderPicker$4;

    invoke-direct {v0, p0}, Lcom/roblox/client/components/RbxGenderPicker$4;-><init>(Lcom/roblox/client/components/RbxGenderPicker;)V

    .line 213
    iget-object v1, p0, Lcom/roblox/client/components/RbxGenderPicker;->b:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v1, v0}, Lcom/roblox/client/components/RbxButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    iget-object v1, p0, Lcom/roblox/client/components/RbxGenderPicker;->a:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v1, v0}, Lcom/roblox/client/components/RbxButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 218
    invoke-static {p0}, Lcom/roblox/client/components/g;->b(Landroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 219
    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxGenderPicker;->startAnimation(Landroid/view/animation/Animation;)V

    .line 221
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->b:Lcom/roblox/client/components/RbxButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 222
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->a:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public getOnGenderButtonPressedListener()Lcom/roblox/client/components/RbxGenderPicker$a;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->l:Lcom/roblox/client/components/RbxGenderPicker$a;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->i:I

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 144
    instance-of v0, p1, Lcom/roblox/client/components/RbxGenderPicker$SavedState;

    if-nez v0, :cond_0

    .line 145
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 149
    :cond_0
    check-cast p1, Lcom/roblox/client/components/RbxGenderPicker$SavedState;

    .line 150
    invoke-virtual {p1}, Lcom/roblox/client/components/RbxGenderPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 153
    iget p1, p1, Lcom/roblox/client/components/RbxGenderPicker$SavedState;->a:I

    invoke-virtual {p0, p1}, Lcom/roblox/client/components/RbxGenderPicker;->setValue(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 133
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 135
    new-instance v1, Lcom/roblox/client/components/RbxGenderPicker$SavedState;

    invoke-direct {v1, v0}, Lcom/roblox/client/components/RbxGenderPicker$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 137
    iget v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->i:I

    iput v0, v1, Lcom/roblox/client/components/RbxGenderPicker$SavedState;->a:I

    return-object v1
.end method

.method public setOnGenderButtonPressedListener(Lcom/roblox/client/components/RbxGenderPicker$a;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/roblox/client/components/RbxGenderPicker;->l:Lcom/roblox/client/components/RbxGenderPicker$a;

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/components/RbxGenderPicker;->b:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {p1}, Lcom/roblox/client/components/RbxButton;->callOnClick()Z

    goto :goto_0

    .line 170
    :cond_1
    iget-object p1, p0, Lcom/roblox/client/components/RbxGenderPicker;->a:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {p1}, Lcom/roblox/client/components/RbxButton;->callOnClick()Z

    :goto_0
    return-void
.end method
