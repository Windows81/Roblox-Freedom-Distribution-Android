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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object v1, p0, Lcom/roblox/client/components/RbxGenderPicker;->a:Lcom/roblox/client/components/RbxButton;

    .line 34
    iput-object v1, p0, Lcom/roblox/client/components/RbxGenderPicker;->b:Lcom/roblox/client/components/RbxButton;

    .line 35
    iput-object v1, p0, Lcom/roblox/client/components/RbxGenderPicker;->c:Landroid/widget/ImageView;

    .line 36
    iput-object v1, p0, Lcom/roblox/client/components/RbxGenderPicker;->d:Landroid/widget/ImageView;

    .line 37
    iput-object v1, p0, Lcom/roblox/client/components/RbxGenderPicker;->e:Landroid/widget/LinearLayout;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->i:I

    .line 25
    invoke-direct {p0, p1, v1}, Lcom/roblox/client/components/RbxGenderPicker;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->a:Lcom/roblox/client/components/RbxButton;

    .line 34
    iput-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->b:Lcom/roblox/client/components/RbxButton;

    .line 35
    iput-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->c:Landroid/widget/ImageView;

    .line 36
    iput-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->d:Landroid/widget/ImageView;

    .line 37
    iput-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->e:Landroid/widget/LinearLayout;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->i:I

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/components/RbxGenderPicker;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/components/RbxGenderPicker;I)I
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/roblox/client/components/RbxGenderPicker;->i:I

    return p1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a0095

    invoke-virtual {p0}, Lcom/roblox/client/components/RbxGenderPicker;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    const v0, 0x7f080167

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxGenderPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->f:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f080164

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxGenderPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->g:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f05000b

    invoke-static {p1, v0}, Landroid/support/v4/a/c;->c(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->j:I

    .line 54
    const v0, 0x7f050001

    invoke-static {p1, v0}, Landroid/support/v4/a/c;->c(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->k:I

    .line 56
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->f:Landroid/widget/TextView;

    invoke-static {v0, p1, p2}, Lcom/roblox/client/components/m;->a(Landroid/widget/TextView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->g:Landroid/widget/TextView;

    invoke-static {v0, p1, p2}, Lcom/roblox/client/components/m;->a(Landroid/widget/TextView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const v0, 0x7f080165

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxGenderPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxButton;

    iput-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->a:Lcom/roblox/client/components/RbxButton;

    .line 60
    const v0, 0x7f080162

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxGenderPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxButton;

    iput-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->b:Lcom/roblox/client/components/RbxButton;

    .line 61
    const v0, 0x7f080166

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxGenderPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->c:Landroid/widget/ImageView;

    .line 62
    const v0, 0x7f080163

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxGenderPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->d:Landroid/widget/ImageView;

    .line 63
    const v0, 0x7f080168

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxGenderPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->e:Landroid/widget/LinearLayout;

    .line 64
    const v0, 0x7f080161

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxGenderPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxTextView;

    iput-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->h:Lcom/roblox/client/components/RbxTextView;

    .line 67
    new-instance v0, Lcom/roblox/client/components/RbxGenderPicker$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/components/RbxGenderPicker$1;-><init>(Lcom/roblox/client/components/RbxGenderPicker;)V

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxGenderPicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->a:Lcom/roblox/client/components/RbxButton;

    new-instance v1, Lcom/roblox/client/components/RbxGenderPicker$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/RbxGenderPicker$2;-><init>(Lcom/roblox/client/components/RbxGenderPicker;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->b:Lcom/roblox/client/components/RbxButton;

    new-instance v1, Lcom/roblox/client/components/RbxGenderPicker$3;

    invoke-direct {v1, p0}, Lcom/roblox/client/components/RbxGenderPicker$3;-><init>(Lcom/roblox/client/components/RbxGenderPicker;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method static synthetic a(Lcom/roblox/client/components/RbxGenderPicker;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/roblox/client/components/RbxGenderPicker;->e()V

    return-void
.end method

.method static synthetic b(Lcom/roblox/client/components/RbxGenderPicker;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->i:I

    return v0
.end method

.method static synthetic c(Lcom/roblox/client/components/RbxGenderPicker;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/roblox/client/components/RbxGenderPicker;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/roblox/client/components/RbxGenderPicker;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->k:I

    return v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->i:I

    .line 170
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->d:Landroid/widget/ImageView;

    const v1, 0x7f07073a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->c:Landroid/widget/ImageView;

    const v1, 0x7f07074b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0707da

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 174
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->f:Landroid/widget/TextView;

    iget v1, p0, Lcom/roblox/client/components/RbxGenderPicker;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->g:Landroid/widget/TextView;

    iget v1, p0, Lcom/roblox/client/components/RbxGenderPicker;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    return-void
.end method

.method static synthetic f(Lcom/roblox/client/components/RbxGenderPicker;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/roblox/client/components/RbxGenderPicker;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->j:I

    return v0
.end method

.method static synthetic h(Lcom/roblox/client/components/RbxGenderPicker;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/roblox/client/components/RbxGenderPicker;)Lcom/roblox/client/components/RbxGenderPicker$a;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->l:Lcom/roblox/client/components/RbxGenderPicker$a;

    return-object v0
.end method

.method static synthetic j(Lcom/roblox/client/components/RbxGenderPicker;)Lcom/roblox/client/components/RbxButton;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->a:Lcom/roblox/client/components/RbxButton;

    return-object v0
.end method

.method static synthetic k(Lcom/roblox/client/components/RbxGenderPicker;)Lcom/roblox/client/components/RbxButton;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->b:Lcom/roblox/client/components/RbxButton;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 180
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0707db

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 182
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->h:Lcom/roblox/client/components/RbxTextView;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->h:Lcom/roblox/client/components/RbxTextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0xc8

    invoke-static/range {v0 .. v5}, Lcom/roblox/client/components/l;->a(Landroid/view/View;IFFJ)V

    .line 185
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0707dc

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 189
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->h:Lcom/roblox/client/components/RbxTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxTextView;->setVisibility(I)V

    .line 190
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 197
    invoke-static {p0}, Lcom/roblox/client/components/l;->a(Landroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 198
    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxGenderPicker;->startAnimation(Landroid/view/animation/Animation;)V

    .line 199
    new-instance v0, Lcom/roblox/client/components/RbxGenderPicker$4;

    invoke-direct {v0, p0}, Lcom/roblox/client/components/RbxGenderPicker$4;-><init>(Lcom/roblox/client/components/RbxGenderPicker;)V

    .line 206
    iget-object v1, p0, Lcom/roblox/client/components/RbxGenderPicker;->b:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v1, v0}, Lcom/roblox/client/components/RbxButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 207
    iget-object v1, p0, Lcom/roblox/client/components/RbxGenderPicker;->a:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v1, v0}, Lcom/roblox/client/components/RbxButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 208
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 211
    invoke-static {p0}, Lcom/roblox/client/components/l;->b(Landroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 212
    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxGenderPicker;->startAnimation(Landroid/view/animation/Animation;)V

    .line 214
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->b:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 215
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->a:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    return-void
.end method

.method public getOnGenderButtonPressedListener()Lcom/roblox/client/components/RbxGenderPicker$a;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->l:Lcom/roblox/client/components/RbxGenderPicker$a;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->i:I

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 137
    instance-of v0, p1, Lcom/roblox/client/components/RbxGenderPicker$SavedState;

    if-nez v0, :cond_0

    .line 138
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 147
    :goto_0
    return-void

    .line 142
    :cond_0
    check-cast p1, Lcom/roblox/client/components/RbxGenderPicker$SavedState;

    .line 143
    invoke-virtual {p1}, Lcom/roblox/client/components/RbxGenderPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 146
    iget v0, p1, Lcom/roblox/client/components/RbxGenderPicker$SavedState;->a:I

    invoke-virtual {p0, v0}, Lcom/roblox/client/components/RbxGenderPicker;->setValue(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/roblox/client/components/RbxGenderPicker$SavedState;

    invoke-direct {v1, v0}, Lcom/roblox/client/components/RbxGenderPicker$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 130
    iget v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->i:I

    iput v0, v1, Lcom/roblox/client/components/RbxGenderPicker$SavedState;->a:I

    .line 131
    return-object v1
.end method

.method public setOnGenderButtonPressedListener(Lcom/roblox/client/components/RbxGenderPicker$a;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/roblox/client/components/RbxGenderPicker;->l:Lcom/roblox/client/components/RbxGenderPicker$a;

    .line 220
    return-void
.end method

.method public setValue(I)V
    .locals 1

    .prologue
    .line 158
    packed-switch p1, :pswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->b:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxButton;->callOnClick()Z

    goto :goto_0

    .line 163
    :pswitch_1
    iget-object v0, p0, Lcom/roblox/client/components/RbxGenderPicker;->a:Lcom/roblox/client/components/RbxButton;

    invoke-virtual {v0}, Lcom/roblox/client/components/RbxButton;->callOnClick()Z

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
