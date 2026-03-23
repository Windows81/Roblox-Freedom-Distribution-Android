.class public Lcom/roblox/client/AutoResizeTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/AutoResizeTextView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/RectF;

.field private b:Landroid/graphics/RectF;

.field private c:Landroid/util/SparseIntArray;

.field private d:Landroid/text/TextPaint;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private final m:Lcom/roblox/client/AutoResizeTextView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/roblox/client/AutoResizeTextView;->a:Landroid/graphics/RectF;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 83
    iput p1, p0, Lcom/roblox/client/AutoResizeTextView;->f:F

    const/4 p1, 0x0

    .line 85
    iput p1, p0, Lcom/roblox/client/AutoResizeTextView;->g:F

    const/high16 p1, 0x41a00000    # 20.0f

    .line 87
    iput p1, p0, Lcom/roblox/client/AutoResizeTextView;->h:F

    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lcom/roblox/client/AutoResizeTextView;->k:Z

    .line 234
    new-instance p1, Lcom/roblox/client/AutoResizeTextView$1;

    invoke-direct {p1, p0}, Lcom/roblox/client/AutoResizeTextView$1;-><init>(Lcom/roblox/client/AutoResizeTextView;)V

    iput-object p1, p0, Lcom/roblox/client/AutoResizeTextView;->m:Lcom/roblox/client/AutoResizeTextView$a;

    .line 104
    invoke-direct {p0}, Lcom/roblox/client/AutoResizeTextView;->a()V

    return-void
.end method

.method private a(IILcom/roblox/client/AutoResizeTextView$a;Landroid/graphics/RectF;)I
    .locals 2

    .line 297
    iget-boolean v0, p0, Lcom/roblox/client/AutoResizeTextView;->k:Z

    if-nez v0, :cond_0

    .line 298
    invoke-static {p1, p2, p3, p4}, Lcom/roblox/client/AutoResizeTextView;->b(IILcom/roblox/client/AutoResizeTextView$a;Landroid/graphics/RectF;)I

    move-result p1

    return p1

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 302
    :goto_0
    iget-object v1, p0, Lcom/roblox/client/AutoResizeTextView;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-eqz v1, :cond_2

    return v1

    .line 306
    :cond_2
    invoke-static {p1, p2, p3, p4}, Lcom/roblox/client/AutoResizeTextView;->b(IILcom/roblox/client/AutoResizeTextView$a;Landroid/graphics/RectF;)I

    move-result p1

    .line 307
    iget-object p2, p0, Lcom/roblox/client/AutoResizeTextView;->c:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    return p1
.end method

.method static synthetic a(Lcom/roblox/client/AutoResizeTextView;)Landroid/text/TextPaint;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/roblox/client/AutoResizeTextView;->d:Landroid/text/TextPaint;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 113
    new-instance v0, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->d:Landroid/text/TextPaint;

    .line 114
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->e:F

    .line 115
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->b:Landroid/graphics/RectF;

    .line 116
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->c:Landroid/util/SparseIntArray;

    .line 117
    iget v0, p0, Lcom/roblox/client/AutoResizeTextView;->j:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 119
    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->j:I

    :cond_0
    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/roblox/client/AutoResizeTextView;->l:Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .line 218
    iget-boolean p1, p0, Lcom/roblox/client/AutoResizeTextView;->l:Z

    if-nez p1, :cond_0

    return-void

    .line 221
    :cond_0
    iget p1, p0, Lcom/roblox/client/AutoResizeTextView;->h:F

    float-to-int p1, p1

    .line 222
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 223
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 224
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 225
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/roblox/client/AutoResizeTextView;->i:I

    .line 226
    iget-object v2, p0, Lcom/roblox/client/AutoResizeTextView;->b:Landroid/graphics/RectF;

    int-to-float v1, v1

    iput v1, v2, Landroid/graphics/RectF;->right:F

    .line 227
    iget-object v1, p0, Lcom/roblox/client/AutoResizeTextView;->b:Landroid/graphics/RectF;

    int-to-float v0, v0

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    const/4 v0, 0x0

    .line 228
    iget v1, p0, Lcom/roblox/client/AutoResizeTextView;->e:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/roblox/client/AutoResizeTextView;->m:Lcom/roblox/client/AutoResizeTextView$a;

    iget-object v3, p0, Lcom/roblox/client/AutoResizeTextView;->b:Landroid/graphics/RectF;

    .line 230
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/roblox/client/AutoResizeTextView;->a(IILcom/roblox/client/AutoResizeTextView$a;Landroid/graphics/RectF;)I

    move-result p1

    int-to-float p1, p1

    .line 228
    invoke-super {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private static b(IILcom/roblox/client/AutoResizeTextView$a;Landroid/graphics/RectF;)I
    .locals 3

    add-int/lit8 p1, p1, -0x1

    move v0, p1

    move p1, p0

    :goto_0
    if-gt p0, v0, :cond_1

    add-int p1, p0, v0

    ushr-int/lit8 p1, p1, 0x1

    .line 319
    invoke-interface {p2, p1, p3}, Lcom/roblox/client/AutoResizeTextView$a;->a(ILandroid/graphics/RectF;)I

    move-result v1

    if-gez v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    move v2, p1

    move p1, p0

    move p0, v2

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    move v0, p1

    goto :goto_0

    :cond_1
    return p1
.end method

.method static synthetic b(Lcom/roblox/client/AutoResizeTextView;)Landroid/graphics/RectF;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/roblox/client/AutoResizeTextView;->a:Landroid/graphics/RectF;

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 214
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/AutoResizeTextView;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/roblox/client/AutoResizeTextView;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/roblox/client/AutoResizeTextView;->i:I

    return p0
.end method

.method static synthetic d(Lcom/roblox/client/AutoResizeTextView;)F
    .locals 0

    .line 58
    iget p0, p0, Lcom/roblox/client/AutoResizeTextView;->f:F

    return p0
.end method

.method static synthetic e(Lcom/roblox/client/AutoResizeTextView;)F
    .locals 0

    .line 58
    iget p0, p0, Lcom/roblox/client/AutoResizeTextView;->g:F

    return p0
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 347
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 349
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/AutoResizeTextView;->b()V

    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 339
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 340
    invoke-direct {p0}, Lcom/roblox/client/AutoResizeTextView;->b()V

    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    .line 198
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 199
    iput p2, p0, Lcom/roblox/client/AutoResizeTextView;->f:F

    .line 200
    iput p1, p0, Lcom/roblox/client/AutoResizeTextView;->g:F

    return-void
.end method

.method public setLines(I)V
    .locals 0

    .line 174
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 175
    iput p1, p0, Lcom/roblox/client/AutoResizeTextView;->j:I

    .line 176
    invoke-direct {p0}, Lcom/roblox/client/AutoResizeTextView;->b()V

    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0

    .line 209
    iput p1, p0, Lcom/roblox/client/AutoResizeTextView;->h:F

    .line 210
    invoke-direct {p0}, Lcom/roblox/client/AutoResizeTextView;->b()V

    return-void
.end method

.method public setSingleLine()V
    .locals 1

    .line 156
    invoke-super {p0}, Landroid/widget/TextView;->setSingleLine()V

    const/4 v0, 0x1

    .line 157
    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->j:I

    .line 158
    invoke-direct {p0}, Lcom/roblox/client/AutoResizeTextView;->b()V

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    .line 163
    invoke-super {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 165
    iput p1, p0, Lcom/roblox/client/AutoResizeTextView;->j:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 167
    iput p1, p0, Lcom/roblox/client/AutoResizeTextView;->j:I

    .line 169
    :goto_0
    invoke-direct {p0}, Lcom/roblox/client/AutoResizeTextView;->b()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 126
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 127
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/roblox/client/AutoResizeTextView;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/roblox/client/AutoResizeTextView;->e:F

    .line 135
    iget-object p1, p0, Lcom/roblox/client/AutoResizeTextView;->c:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 136
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/roblox/client/AutoResizeTextView;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 185
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 191
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 190
    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/roblox/client/AutoResizeTextView;->e:F

    .line 192
    iget-object p1, p0, Lcom/roblox/client/AutoResizeTextView;->c:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 193
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/roblox/client/AutoResizeTextView;->a(Ljava/lang/String;)V

    return-void
.end method
