.class public Lcom/rockerhieu/emojicon/EmojiconTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 34
    iput v1, p0, Lcom/rockerhieu/emojicon/EmojiconTextView;->d:I

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/rockerhieu/emojicon/EmojiconTextView;->e:I

    .line 36
    iput-boolean v1, p0, Lcom/rockerhieu/emojicon/EmojiconTextView;->f:Z

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/rockerhieu/emojicon/EmojiconTextView;->a(Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput v1, p0, Lcom/rockerhieu/emojicon/EmojiconTextView;->d:I

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/rockerhieu/emojicon/EmojiconTextView;->e:I

    .line 36
    iput-boolean v1, p0, Lcom/rockerhieu/emojicon/EmojiconTextView;->f:Z

    .line 45
    invoke-direct {p0, p2}, Lcom/rockerhieu/emojicon/EmojiconTextView;->a(Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput v1, p0, Lcom/rockerhieu/emojicon/EmojiconTextView;->d:I

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/rockerhieu/emojicon/EmojiconTextView;->e:I

    .line 36
    iput-boolean v1, p0, Lcom/rockerhieu/emojicon/EmojiconTextView;->f:Z

    .line 50
    invoke-direct {p0, p2}, Lcom/rockerhieu/emojicon/EmojiconTextView;->a(Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/rockerhieu/emojicon/EmojiconTextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/rockerhieu/emojicon/EmojiconTextView;->c:I

    .line 55
    if-nez p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/rockerhieu/emojicon/EmojiconTextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/rockerhieu/emojicon/EmojiconTextView;->a:I

    .line 66
    :goto_0
    invoke-virtual {p0}, Lcom/rockerhieu/emojicon/EmojiconTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rockerhieu/emojicon/EmojiconTextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/rockerhieu/emojicon/EmojiconTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/rockerhieu/emojicon/c$b;->Emojicon:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    sget v1, Lcom/rockerhieu/emojicon/c$b;->Emojicon_emojiconSize:I

    invoke-virtual {p0}, Lcom/rockerhieu/emojicon/EmojiconTextView;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/rockerhieu/emojicon/EmojiconTextView;->a:I

    .line 60
    sget v1, Lcom/rockerhieu/emojicon/c$b;->Emojicon_emojiconAlignment:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/rockerhieu/emojicon/EmojiconTextView;->b:I

    .line 61
    sget v1, Lcom/rockerhieu/emojicon/c$b;->Emojicon_emojiconTextStart:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/rockerhieu/emojicon/EmojiconTextView;->d:I

    .line 62
    sget v1, Lcom/rockerhieu/emojicon/c$b;->Emojicon_emojiconTextLength:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/rockerhieu/emojicon/EmojiconTextView;->e:I

    .line 63
    sget v1, Lcom/rockerhieu/emojicon/c$b;->Emojicon_emojiconUseSystemDefault:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/rockerhieu/emojicon/EmojiconTextView;->f:Z

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public setEmojiconSize(I)V
    .locals 1

    .prologue
    .line 83
    iput p1, p0, Lcom/rockerhieu/emojicon/EmojiconTextView;->a:I

    .line 84
    invoke-virtual {p0}, Lcom/rockerhieu/emojicon/EmojiconTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 8

    .prologue
    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0}, Lcom/rockerhieu/emojicon/EmojiconTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/rockerhieu/emojicon/EmojiconTextView;->a:I

    iget v3, p0, Lcom/rockerhieu/emojicon/EmojiconTextView;->b:I

    iget v4, p0, Lcom/rockerhieu/emojicon/EmojiconTextView;->c:I

    iget v5, p0, Lcom/rockerhieu/emojicon/EmojiconTextView;->d:I

    iget v6, p0, Lcom/rockerhieu/emojicon/EmojiconTextView;->e:I

    iget-boolean v7, p0, Lcom/rockerhieu/emojicon/EmojiconTextView;->f:Z

    invoke-static/range {v0 .. v7}, Lcom/rockerhieu/emojicon/a;->a(Landroid/content/Context;Landroid/text/Spannable;IIIIIZ)V

    .line 76
    :goto_0
    invoke-super {p0, v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 77
    return-void

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method public setUseSystemDefault(Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/rockerhieu/emojicon/EmojiconTextView;->f:Z

    .line 92
    return-void
.end method
